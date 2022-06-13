import pyproj
from pyproj import CRS
from pyproj.aoi import AreaOfInterest
from pyproj.database import query_utm_crs_info
import rasterio
import numpy as np
from shapely.ops import transform


def reproj(data, inproj, outproj):
    project = pyproj.Transformer.from_crs(inproj, outproj, always_xy=True).transform
    return transform(project, data)

def returnchw(data):
    """
    From numpy nd/array return the bands count, height and width
    
    Args:
        data (obj): input numpy nd/array
    
    Returns:
        count (int), height (int), width (int)

    """
    if len(data.shape) == 2:
        count = 1
        height = data.shape[0]
        width = data.shape[1]
        band_number = 1
    else:
        count = data.shape[0]
        height = data.shape[1]
        width = data.shape[2]
        band_number = np.arange(count) + 1
    return(count, height, width, band_number)

def utm_from_extent(extent):
    """Return the right UTM code from Django geometry envelope
    
    Args:
        extent (obj): list or Envelope geometry in longitude and latitude (EPSG 4326)
    
    Returns:
        CRS object
    """
    utm_crs_list = query_utm_crs_info(
        datum_name="WGS 84",
        area_of_interest=AreaOfInterest(
            west_lon_degree=extent[0],
            south_lat_degree=extent[1],
            east_lon_degree=extent[2],
            north_lat_degree=extent[3],
        ),
    )
    return CRS.from_epsg(utm_crs_list[0].code)

def xarray_to_rasterio(xa, output_filename):
    """Converts the given xarray.DataArray object to a raster output file
    using rasterio.
    Arguments:
     - `xa`: The xarray.DataArray to convert
     - `output_filename`: the filename to store the output GeoTIFF file in
    Notes:
    Converts the given xarray.DataArray to a GeoTIFF output file using rasterio.
    This function only supports 2D or 3D DataArrays, and GeoTIFF output.
    The input DataArray must have attributes (stored as xa.attrs) specifying
    geographic metadata, or the output will have _no_ geographic information.
    If the DataArray uses dask as the storage backend then this function will
    force a load of the raw data.
    """
    # Forcibly compute the data, to ensure that all of the metadata is
    # the same as the actual data (ie. dtypes are the same etc)
    xa = xa.load()
    count, height, width, band_indicies = returnchw(xa)
    
    processed_attrs = {}

    try:
        val = xa.attrs['affine']
        processed_attrs['transform'] = rasterio.Affine.from_gdal(*val)
    except KeyError:
        try:
            val = xa.attrs['transform']
            processed_attrs['transform'] = val
        except KeyError:
            pass

    try:
        val = xa.attrs['crs']
        processed_attrs['crs'] = rasterio.crs.CRS.from_string(val)
    except KeyError:
        pass
    with rasterio.open(output_filename, 'w',
                       driver='GTiff',
                       height=height, width=width,
                       dtype=str(xa.dtype), count=count,
                       **processed_attrs) as dst:
        dst.write(xa.values, band_indicies)

        
def mask_raster_with_geometry(band, shapes, **kwargs):
    """Wrapper for rasterio.mask.mask to allow for in-memory processing.

    Docs: https://rasterio.readthedocs.io/en/latest/api/rasterio.mask.html

    Args:
        raster (numpy.ndarray): raster to be masked with dim: [H, W]
        transform (affine.Affine): the transform of the raster
        shapes, **kwargs: passed to rasterio.mask.mask

    Returns:
        masked: numpy.ndarray or numpy.ma.MaskedArray with dim: [H, W]
    """
    with rasterio.io.MemoryFile() as memfile:
        with memfile.open(
            driver='GTiff',
            height=band.shape[0],
            width=band.shape[1],
            count=1,
            dtype=band.dtype,
            transform=band.transform,
        ) as dataset:
            dataset.write(band.values, 1)
        with memfile.open() as dataset:
            out_image, out_transform = rasterio.mask.mask(dataset, shapes, **kwargs)
    return out_image, out_transform

def create_memory_dataset(data, crs, transform):
    """ Receives a 2D array, a transform and a crs to create a rasterio dataset
    
    """
    count, height, width, bandsn = returnchw(data)
    memfile = rasterio.io.MemoryFile()
    dataset = memfile.open(
        driver='GTiff', 
        height=height, 
        width=width, 
        count=count, 
        crs=crs, 
        transform=transform, 
        dtype=data.dtype
    )
    try:
        dataset.write(data, bandsn)
    except (rasterio._err.RasterioIOError, rasterio._err.CPLE_HttpResponseError) as e:
        print(e)
        create_memory_dataset(data, crs, transform)
    except Exception as e:
        print(e)
        raise Exception("Error writing data")
        
    return dataset

def nearest(items, pivot):
    return min(items, key=lambda x: abs(x - pivot))
