# %%
import pystac
import pystac_client
import pandas as pd
import geopandas as gpd
import numpy as np
from datetime import datetime
from datetime import timedelta
import shapely.geometry
from shapely.ops import transform
import stackstac
import rasterio
import rasterio.mask
from rasterio.merge import merge
from rasterio.rio.sample import sample
import pyproj
from io import StringIO
from pyproj import Transformer
from pyproj.database import query_utm_crs_info
from lib.functions import xarray_to_rasterio, mask_raster_with_geometry, create_memory_dataset, utm_from_extent, nearest


# %%
SDATE='2021-03-25'
EDATE='2021-07-31'

# %%
input = StringIO("""cat|id_sito|longitude|latitude|elevation|newdata
1|LASA|10.88349|45.9311|204|2021-03-29
2|CVSM|11.13595|46.18904|206|2021-05-10
3|CARO|11.18113|46.25215|209|2021-05-03
4|LAIS|11.09513|46.22792|241|2021-05-03
5|LACA|11.13717|46.01871|246|2021-04-08
6|BPBO|10.92322|45.69086|137|2021-04-08
7|BLMA|11.01437|45.85427|176|2021-04-15
8|BITA|11.0797|45.92506|181|2021-05-10
9|BIRU|11.09696|46.19113|213|2021-05-03
10|RNFO|11.60734|46.01418|259|2021-03-29
11|LAST|11.37765|46.02642|425|2021-05-05
12|VAAG-1|11.15355|46.15401|471|2021-05-05
13|VAAG-2|11.21161|46.16499|487|2021-05-05
14|BACU|11.02392|46.28668|687|2021-05-04
15|BAVE|11.10557|46.31171|867|2021-05-26
16|RNPR|11.42526|46.04951|400|2021-05-03
17|BIIN|11.3094|45.998|451|2021-04-15
18|TOFI|10.83161|45.99146|650|2021-05-03
19|RNPT|11.03014|46.34076|678|2021-05-04
20|RNLA|10.65|45.87029|751|2021-04-21
21|LACO|11.1043|46.35466|877|2021-05-04
22|MABR|11.05868|46.05586|991|2021-05-10
23|SASL|11.13291|46.34669|1159|2021-05-04
24|BASL-1_A|11.1319|46.34745|1160|2021-05-26
25|MBMM|10.92562|45.80694|1165|2021-06-15
26|MBLG|11.16801|46.12168|877|2021-06-07
27|BILA|11.22397|46.11229|903|2021-05-10
28|PADU|10.79467|46.03435|1025|2021-06-07
29|MALA|11.2967|45.95726|1201|2021-06-24
30|MBCP|10.93362|45.77723|1256|2021-06-15
31|MACA|10.96979|45.93799|1377|2021-06-16
32|BOGIU-1_A|10.65286|45.91679|1455|2021-07-22
33|LPSP|11.78505|46.37705|1894|2021-07-15
34|POVA|11.25678|46.21971|1238|2021-07-06
35|BPDM|11.24303|46.22355|1375|2021-07-06
36|BPLO|11.36544|46.29607|1495|2021-07-28
37|TPSP|11.7658|46.3768|1801|2021-07-15
38|PAMA|11.45391|46.17761|2072|2021-07-29
""")

# %%
df = pd.read_csv(input, delimiter="|")
crs = {'init': 'epsg:4326'}
indate_df = gpd.GeoDataFrame(df, crs=crs, geometry=gpd.points_from_xy(df.longitude, df.latitude))
indate_df.head()

# %%
all_bounds = indate_df.geometry.unary_union.envelope.bounds
all_dates = min(indate_df.newdata) + '/' + max(indate_df.newdata)

# %%
point = indate_df[indate_df["cat"] == 1]
bbox = point.geometry.envelope.bounds
print(bbox.values[0])

# %%
EPSG = utm_from_extent(bbox.values[0])
transformer = Transformer.from_crs("epsg:4326", f'epsg:{EPSG.to_epsg()}')
y1, x1 = transformer.transform(point.geometry.y, point.geometry.x)
buffer_utm = shapely.geometry.Point(x1, y1).buffer(500)
back_transformer = Transformer.from_crs(f'epsg:{EPSG.to_epsg()}',"epsg:4326")
buffer_latlong = transform(back_transformer.transform, buffer_utm)

# %%
point_data = datetime.strptime(point.newdata[0], "%Y-%m-%d")
min_data = point_data - timedelta(days=4)
max_data = point_data + timedelta(days=4)
date_range = f"{min_data.date()}/{max_data.date()}"

# %%
aws_catalog = pystac_client.Client.open("https://earth-search.aws.element84.com/v0")

# %% [markdown]
# Search for tiles in Sentinel 2 L2A cogs dataset where the bounding box is contained in our study area and in the dates range used

# %% [markdown]
# **Cloud Optimized GeoTIFF** (COGS) is a regular GeoTIFF file, aimed at being hosted on a HTTP file server, with an internal organization that enables more efficient workflows on the cloud. It does this by leveraging the ability of clients issuing ​HTTP GET range requests to ask for just the parts of a file they need.

# %%
aws_sent = aws_catalog.search(
    collections=["sentinel-s2-l2a-cogs"],
    bbox=buffer_latlong.envelope.bounds,
    datetime=date_range
)

# %% [markdown]
# Get all the items founded and print the number

# %%
aws_sent_items = aws_sent.get_all_items()
print(len(aws_sent_items))

# %% [markdown]
# Let's see what is an item

# %%
item=aws_sent_items.items[0]

# %%
item.assets

# %% [markdown]
# We are going to create a STAC object with all the STAC items with only the band RED and NIR clipping the data in the bounding box

# %%
ds = stackstac.stack(
    aws_sent_items,
    assets=["B04", "B08"],
    resolution=10,
    epsg=EPSG,
    bounds_latlon=buffer_latlong.envelope.bounds
)

# %%
ds

# %% [markdown]
# Calculate NDVI dataset and bring the attributes from original dataset

# %%
nir, red = ds.sel(band="B08"), ds.sel(band="B04")
ndvi = (nir - red) / (nir + red)

# %%
ndvi.attrs = ds.attrs
ndvi

# %% [markdown]
# Now we get the uniq dates for the NDVI dataset

# %%
ndvi_days = set(sorted(list(ndvi.time.dt.date.values)))

# %%
ndvi_days

# %% [markdown]
# For each NDVI day we assign all the gps dates to be queried

# %%
assigned_dates = {}
#we create first the dictionary
for i in ndvi_days:
    assigned_dates[i.strftime("%Y-%m-%d")] = []

# %%
# and later we fill it using the nearest function
for i in pd.unique(indate_df.newdata):
    idate = datetime.strptime(i, "%Y-%m-%d").date()
    near = nearest(ndvi_days, idate)
    assigned_dates[near.strftime("%Y-%m-%d")].append(idate)

# %%
assigned_dates

# %% [markdown]
# For each NDVI map date we process the data, creating the mosaic, if needed, and query the map with the points for the selected time range


# %% [markdown]
# It could be also possible to save the map to raster and use them in different program

# %%
for k in assigned_dates.keys():
    maps_merge = ndvi[ndvi.time.dt.date == datetime.strptime(k, "%Y-%m-%d").date()]
    daily_raster = []
    #with more maps will merge them
    print(len(maps_merge))
    if len(maps_merge) > 1:
        for inmerge in maps_merge:
            daily_raster.append(create_memory_dataset(inmerge, EPSG, ndvi.attrs['transform']))
        out_image, out_transform = merge(daily_raster)
    else:
        out_image, out_transform = mask_raster_with_geometry(maps_merge[0],
                                                             buffer_utm,
                                                             crop=True, nodata=np.nan)
    print(out_image)
    bandtime = maps_merge[0].time.dt.date.values
    print(out_image.dtype)

    with rasterio.open(f"/tmp/ndvi{bandtime}.tif", "w", dtype=out_image.dtype, count=1, nodata=None, **out_meta) as dest:
        dest.write(out_image)
        print(f"/tmp/ndvi{bandtime}.tif saved")

# %%
