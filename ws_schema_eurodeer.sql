--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 15.12 (Debian 15.12-0+deb12u2)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: ws_amsterdam; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA ws_amsterdam;


--
-- Name: SCHEMA ws_amsterdam; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA ws_amsterdam IS 'Working schema for members of University of Amsterdam research group. This can be used to create any object they need for their studies. No other users will have access to this schema.';


--
-- Name: ws_aveiro; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA ws_aveiro;


--
-- Name: SCHEMA ws_aveiro; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA ws_aveiro IS 'Working schema for members of Aveiro research group. This can be used to create any object they need for their studies. No other users will have access to this schema.';


--
-- Name: ws_bfnp; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA ws_bfnp;


--
-- Name: SCHEMA ws_bfnp; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA ws_bfnp IS 'Working schema for members of Bavaria Research Group. This can be used to create any object they need for their studies. No other users will have access to this schema.';


--
-- Name: ws_boku; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA ws_boku;


--
-- Name: SCHEMA ws_boku; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA ws_boku IS 'Working schema for members of Boku research group. This can be used to create any object they need for their studies. No other users will have access to this schema.';


--
-- Name: ws_cefs; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA ws_cefs;


--
-- Name: SCHEMA ws_cefs; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA ws_cefs IS 'Working schema for members of CEFS-INRA research group. This can be used to create any object they need for their studies. No other users will have access to this schema.';


--
-- Name: ws_dream; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA ws_dream;


--
-- Name: SCHEMA ws_dream; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA ws_dream IS 'Working schema for members of DREAM Italia research group. This can be used to create any object they need for their studies. No other users will have access to this schema.';


--
-- Name: ws_fabio; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA ws_fabio;


--
-- Name: ws_fem; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA ws_fem;


--
-- Name: SCHEMA ws_fem; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA ws_fem IS 'Working schema for members of FEM research group. This can be used to create any object they need for their studies. No other users will have access to this schema.';


--
-- Name: ws_freiburg; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA ws_freiburg;


--
-- Name: SCHEMA ws_freiburg; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA ws_freiburg IS 'Working schema for members of Freiburg research group. This can be used to create any object they need for their studies. No other users will have access to this schema.';


--
-- Name: ws_isc; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA ws_isc;


--
-- Name: SCHEMA ws_isc; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA ws_isc IS 'Working schema for members of ISC research group. This can be used to create any object they need for their studies. No other users will have access to this schema.';


--
-- Name: ws_nedo; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA ws_nedo;


--
-- Name: SCHEMA ws_nedo; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA ws_nedo IS 'Edoardo Nesi DREAM Italia. nesi@dream-italia.it';


--
-- Name: ws_nicole; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA ws_nicole;


--
-- Name: SCHEMA ws_nicole; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA ws_nicole IS 'Nicole Macrì datacurator internship';


--
-- Name: ws_nyme; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA ws_nyme;


--
-- Name: SCHEMA ws_nyme; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA ws_nyme IS 'Working schema for members of Institute of Wildlife Management and Vertebrate Zoology, University of West Hungary - Hungary research group. This can be used to create any object they need for their studies. No other users will have access to this schema.';


--
-- Name: ws_oncfs_tf; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA ws_oncfs_tf;


--
-- Name: SCHEMA ws_oncfs_tf; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA ws_oncfs_tf IS 'Working schema for members of ONCFS Trois Fontaines - France research group. This can be used to create any object they need for their studies. No other users will have access to this schema.';


--
-- Name: ws_slu; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA ws_slu;


--
-- Name: SCHEMA ws_slu; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA ws_slu IS 'Working schema for members of SLU research group. This can be used to create any object they need for their studies. No other users will have access to this schema.';


--
-- Name: ws_ungulalps; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA ws_ungulalps;


--
-- Name: ws_unipd; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA ws_unipd;


--
-- Name: SCHEMA ws_unipd; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA ws_unipd IS 'Working schema for members of unipd research group. This can be used to create any object they need for their studies. No other users will have access to this schema.';


--
-- Name: ws_zurich; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA ws_zurich;


--
-- Name: SCHEMA ws_zurich; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA ws_zurich IS 'Working schema for members of Zurich research group. This can be used to create any object they need for their studies. No other users will have access to this schema.';


--
-- Name: cluster; Type: TYPE; Schema: ws_fem; Owner: -
--

CREATE TYPE ws_fem.cluster AS (
	gps_data_animals_id integer,
	animals_id integer,
	acquisition_time timestamp with time zone,
	utm_x integer,
	utm_y integer,
	yearx integer,
	month_rel integer,
	sub_cluster integer,
	id integer
);


--
-- Name: force_range(double precision, double precision); Type: FUNCTION; Schema: ws_aveiro; Owner: -
--

CREATE FUNCTION ws_aveiro.force_range(v double precision, max double precision) RETURNS double precision
    LANGUAGE plpgsql IMMUTABLE
    AS $$
BEGIN
    IF v < 0 THEN
        RETURN v + max;
    ELSEIF v >= max THEN
        return v - max;
    END IF;

    return v;
END; $$;


--
-- Name: rise_set_time(double precision, double precision, boolean, timestamp with time zone, double precision); Type: FUNCTION; Schema: ws_aveiro; Owner: -
--

CREATE FUNCTION ws_aveiro.rise_set_time(latitude double precision, longitude double precision, isrisetime boolean, as_of timestamp with time zone, zenith double precision DEFAULT 90.8) RETURNS timestamp with time zone
    LANGUAGE plpgsql IMMUTABLE
    AS $$
    DECLARE as_of_utc TIMESTAMPTZ;
    DECLARE as_of_year INT;
    DECLARE as_of_month INT;
    DECLARE as_of_day INT;

    DECLARE N1 INT;
    DECLARE N2 INT;
    DECLARE N3 INT;
    DECLARE N INT;

    DECLARE longitude_hour DOUBLE PRECISION;
    DECLARE M DOUBLE PRECISION;

    DECLARE t DOUBLE PRECISION;
    DECLARE L DOUBLE PRECISION;
    DECLARE RA DOUBLE PRECISION;

    DECLARE Lquadrant INT;
    DECLARE RAquadrant INT;
    DECLARE sinDec DOUBLE PRECISION;
    DECLARE cosDec DOUBLE PRECISION;
    DECLARE cosH DOUBLE PRECISION;
    DECLARE H DOUBLE PRECISION;
    DECLARE UT DOUBLE PRECISION;

    DECLARE hr INT;
    DECLARE min INT;
BEGIN
    as_of_utc = as_of at time zone 'utc';
    as_of_year = EXTRACT(YEAR FROM as_of_utc);
    as_of_month = EXTRACT(MONTH FROM as_of_utc);
    as_of_day = EXTRACT(DAY FROM as_of_utc);

    -- 1. first calculate the day of the year
    N1 = FLOOR(275.0 * as_of_month / 9.0);
    N2 = FLOOR((as_of_month + 9) / 12.0);
    N3 = (1 + FLOOR((as_of_year - 4 * FLOOR(as_of_year / 4.0) + 2) / 3.0));
    N = N1 - (N2 * N3) + as_of_day - 30;

    -- 2. convert the longitude to hour value and calculate an approximate time
    longitude_hour = longitude / 15.0;

    IF isRiseTime THEN
        t = N + ((6 - longitude_hour) / 24.);
    ELSE
        t = N + ((18 - longitude_hour) / 24.);
    END IF;

    -- 3. calculate the Sun's mean anomaly
    M = (0.9856 * t) - 3.289;

    -- 4. calculate the Sun's true longitude
    L = M + (1.916 * SIN(RADIANS(M))) + (0.020 * SIN(RADIANS(2 * M))) + 282.634;
    -- NOTE: L adjusted into the range [0,360)
    L = ws_aveiro.force_range(L, 360.0);

    -- 5a. calculate the Sun's right ascension
    RA = (1/RADIANS(1)) * ATAN(0.91764 * TAN(RADIANS(L)));
    RA = ws_aveiro.force_range( RA, 360 );  -- NOTE: RA adjusted into the range [0,360);

    -- 5b. right ascension value needs to be in the same quadrant as L
    Lquadrant = FLOOR(L/90.) * 90;
    RAquadrant = FLOOR(RA/90.) * 90;
    RA = RA + (Lquadrant - RAquadrant);

    -- 5c. right ascension value needs to be converted into hours
    RA = RA / 15.0;

    -- 6. calculate the Sun's declination
    sinDec = 0.39782 * SIN(RADIANS(L));
    cosDec = COS(ASIN(sinDec));

    -- 7a. calculate the Sun's local hour angle
    cosH = (COS(RADIANS(zenith)) - (sinDec * SIN(RADIANS(latitude)))) / (cosDec * COS(RADIANS(latitude)));

    IF cosH > 1 THEN
        RAISE NOTICE 'The sun never rises on this location on the specified date';
        RETURN NULL;
    END IF;

    IF cosH < -1 THEN
        RAISE NOTICE 'The sun never sets on this location on the specified date';
        RETURN NULL;
    END IF;

    -- 7b. finish calculating H and convert into hours
    IF isRiseTime THEN
        H = 360 - (1/RADIANS(1)) * ACOS(cosH);
    ELSE
        H = (1/RADIANS(1)) * ACOS(cosH);
    END IF;

    H = H / 15.0;

    -- calculate local mean time of rising/setting
    T = H + RA - (0.06571 * t) - 6.622;

    -- 9. adjust back to UTC
    UT = T - longitude_hour;
    UT = ws_aveiro.force_range( UT, 24);  -- UTC time in decimal format (e.g. 23.23)

    -- 10. Return
    hr = ws_aveiro.force_range(UT::INT, 24);
    min = ROUND((UT - UT::INT) * 60);

--     Enable for debugging purposes:
--     RAISE NOTICE 'as_of_utc: %', as_of_utc;
--     RAISE NOTICE 'as_of_year: %', as_of_year;
--     RAISE NOTICE 'as_of_month: %', as_of_month;
--     RAISE NOTICE 'as_of_day: %', as_of_day;
--     RAISE NOTICE 'N1: %', N1;
--     RAISE NOTICE 'N2: %', N2;
--     RAISE NOTICE 'N3: %', N3;
--     RAISE NOTICE 'N: %', N;
--     RAISE NOTICE 'longitude_hour: %', longitude_hour;
--     RAISE NOTICE 'M: %', M;
--     RAISE NOTICE 't: %', t;
--     RAISE NOTICE 'L: %', L;
--     RAISE NOTICE 'RA: %', RA;
--     RAISE NOTICE 'Lquadrant: %', Lquadrant;
--     RAISE NOTICE 'RAquadrant: %', RAquadrant;
--     RAISE NOTICE 'sinDec: %', sinDec;
--     RAISE NOTICE 'cosDec: %', cosDec;
--     RAISE NOTICE 'cosH: %', cosH;
--     RAISE NOTICE 'H: %', H;
--     RAISE NOTICE 'UT: %', UT;
--     RAISE NOTICE 'hr: %', hr;
--     RAISE NOTICE 'min: %', min;

    return as_of_utc::DATE + (INTERVAL '1 hour' * hr) + (INTERVAL '1 minute' * min);
END; $$;


--
-- Name: FUNCTION rise_set_time(latitude double precision, longitude double precision, isrisetime boolean, as_of timestamp with time zone, zenith double precision); Type: COMMENT; Schema: ws_aveiro; Owner: -
--

COMMENT ON FUNCTION ws_aveiro.rise_set_time(latitude double precision, longitude double precision, isrisetime boolean, as_of timestamp with time zone, zenith double precision) IS 'function to calculate sunrise and sunset. Example:
SELECT ws_aveiro.rise_set_time(39.399872, -8.224454, TRUE, NOW()) AS rise,
       ws_aveiro.rise_set_time(39.399872, -8.224454, FALSE, NOW()) AS set;';


--
-- Name: extract_angle(integer); Type: FUNCTION; Schema: ws_dream; Owner: -
--

CREATE FUNCTION ws_dream.extract_angle(animals_id integer) RETURNS double precision
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$

select rel_angle from
(SELECT round(rel_angle_t_np/pi()*9)::integer /9.0 *pi() rel_angle, row_number() over (partition by view_validity_interval_ssf_12m.animals_id order by random()) as row_num
  FROM ws_dream.geom_parameters_ssf_12m, ws_dream.view_validity_interval_ssf_12m
  where
  geom_parameters_ssf_12m.animals_id != $1) a
where row_num = 1;

$_$;


--
-- Name: extract_angle_bimonthly_test(integer, integer); Type: FUNCTION; Schema: ws_dream; Owner: -
--

CREATE FUNCTION ws_dream.extract_angle_bimonthly_test(animals_id integer, progressive_rel integer) RETURNS SETOF double precision
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$

select rel_angle from
(SELECT round(rel_angle_t_np/pi()*9)::integer /9.0 *pi() rel_angle, row_number() over (partition by view_validity_interval_ssf_12m.animals_id order by random()) as row_num
  FROM ws_dream.geom_parameters_ssf_12m, ws_dream.view_validity_interval_ssf_12m
  where
  view_validity_interval_ssf_12m.animals_id = $1 and geom_parameters_ssf_12m.animals_id != $1 and rel_angle_t_np is not null and progressive_rel in($2, $2 +1)) a 
where row_num < 11;

$_$;


--
-- Name: extract_distance(integer); Type: FUNCTION; Schema: ws_dream; Owner: -
--

CREATE FUNCTION ws_dream.extract_distance(animals_id integer) RETURNS integer
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$

select distance from
(SELECT round(dist_t_n/10.0)::integer * 10 distance, row_number() over (partition by view_validity_interval_ssf_12m.animals_id order by random()) as row_num
  FROM ws_dream.geom_parameters_ssf_12m, ws_dream.view_validity_interval_ssf_12m
  where
  geom_parameters_ssf_12m.animals_id != $1) a
where row_num = 1;

$_$;


--
-- Name: extract_distance_bimonthly_test(integer, integer); Type: FUNCTION; Schema: ws_dream; Owner: -
--

CREATE FUNCTION ws_dream.extract_distance_bimonthly_test(animals_id integer, progressive_rel integer) RETURNS SETOF integer
    LANGUAGE sql IMMUTABLE STRICT ROWS 10
    AS $_$

select distance from
(SELECT round(dist_t_n/10.0)::integer * 10 distance, row_number() over (partition by view_validity_interval_ssf_12m.animals_id order by random()) as row_num
  FROM ws_dream.geom_parameters_ssf_12m, ws_dream.view_validity_interval_ssf_12m
  where
   view_validity_interval_ssf_12m.animals_id = $1 and geom_parameters_ssf_12m.animals_id != $1   and progressive_rel in($2, $2 +1)) a
where row_num < 11;

$_$;


--
-- Name: geom_parametersx(integer, integer, double precision, character varying, timestamp without time zone, timestamp without time zone); Type: FUNCTION; Schema: ws_dream; Owner: -
--

CREATE FUNCTION ws_dream.geom_parametersx(animal integer, time_interval integer DEFAULT ((60 * 60) * 6), buffer double precision DEFAULT 300, locations_set_name character varying DEFAULT 'main.view_locations_set'::character varying, starting_time timestamp without time zone DEFAULT NULL::timestamp without time zone, ending_time timestamp without time zone DEFAULT NULL::timestamp without time zone) RETURNS SETOF tools.geom_parameters
    LANGUAGE plpgsql
    AS $$
DECLARE
-- "tools.geom_parameters" is a new defined data type

cursor_var tools.geom_parameters%rowtype;
check_animal boolean;
var_name character varying;

BEGIN
-- This function gets the data from main.view_locations_set and compute the gemetrical parameters between successive locations
-- if the time gap is = to the time_interval parameter +- the buffer parameter (both in seconds).
-- acquisition_time_t_1 is the acquisition time at the previous location
-- acquisition_time_t_2 is the acquisition time at the previous-previous location
-- Distance is calculate between t0 and t-1 (previous point)
-- Relative angle is calculate using points at t0, t-1, t-2 -> note that this convention is a little bit different from that adopted in adehabitat
-- Angles are given in radians
-- Speed is meters per hour
-- Time gaps are in seconds
-- Distance are in meters
-- Dist_start is the distance from the first point of he dataset
-- Deltat_start is the time gap wuth the first pooint of the dataset

-- Points non corresponding to the criteria (no geometry, or time gap no inside the parameters) are excluded from the list.
-- To include all, yu can increase the buffer parameter.


-- Error trapping: I check if the animal exist in the data source (if too many animals_id are present, this could be skipped)
  execute 'select ' || animal || ' in (select animals_id from main.animals)' into check_animal;
IF NOT  check_animal then
raise exception 'ERROR: Try again, this animal is not in the data set...';
END IF;

-- If the starting date is not set, the minimum, valid timestamp of the data set is taken
IF starting_time is null then
	select min(acquisition_time) FROM main.view_locations_set
	WHERE view_locations_set.animals_id = animal
	into starting_time;
end if;
-- If the ending date is not set, the maximum, valid timestamp of the data set is taken
IF ending_time is null then
	select max(acquisition_time) FROM main.view_locations_set
	WHERE view_locations_set.animals_id = animal
	into ending_time;
end if;

-- If the input "locations_set" is not the default, I create a temporary table where I put all the information
--(this speed up the computation time if the "locations_set" comes from another function)
IF not locations_set_name = 'main.view_locations_set' then
-- I need a unique name for my temporary table
	select nextval('tools.unique_id_seq') into var_name;
	execute ' CREATE TEMPORARY TABLE temp_table_temp_table_geoparameters_'|| var_name ||' as SELECT animals_id, acquisition_time, geom  FROM ' || locations_set_name || ' where animals_id = '|| animal;
	locations_set_name = 'temp_table_temp_table_geoparameters_'|| var_name;
END IF;



-- I use Windows functions to order locations and make reference to the previous/next point in order to compute the geometrical parameters.
-- In the where clause I select just the location with the time gap specified in the parameters

for cursor_var in execute '

select animals_id, acquisition_time, acquisition_time_t_1n, acquisition_time_t_1p, deltaT_t_1n, deltaT_t_1p, deltaT_start, dist_t_1n, dist_start, speed_Mh_t_1n, abs_angle_t_1n,  

----------
case when (deltaT_t_1p < ' ||  time_interval + buffer || ' and deltaT_t_1p > ' || time_interval  - buffer || ') then rel_angle_t_1np
else NULL
end
----------
from 
	(SELECT 
	animals_id, 
	acquisition_time, 
	lead(acquisition_time, 1) OVER (PARTITION BY animals_id order by acquisition_time) as acquisition_time_t_1n,
	lead(acquisition_time,-1) OVER (PARTITION BY animals_id order by acquisition_time) as acquisition_time_t_1p,
	rank() OVER (PARTITION BY animals_id order by acquisition_time), 
	lead(extract(epoch from acquisition_time), 1) OVER (PARTITION BY animals_id order by acquisition_time) - (extract(epoch from acquisition_time))::integer   as deltaT_t_1n,
	(extract(epoch from acquisition_time) - lead(extract(epoch from acquisition_time), -1) OVER (PARTITION BY animals_id order by acquisition_time))::integer as deltaT_t_1p,
	(extract(epoch from acquisition_time) - first_value(extract(epoch from acquisition_time)) OVER (PARTITION BY animals_id order by acquisition_time))::integer as deltaT_start,
	(ST_Distance_Spheroid(geom, lead(geom, 1) OVER (PARTITION BY animals_id order by acquisition_time), ''SPHEROID["WGS 84",6378137,298.257223563]''))::integer dist_t_1n,
	ST_Distance_Spheroid(geom, first_value(geom) OVER (PARTITION BY animals_id order by acquisition_time), ''SPHEROID["WGS 84",6378137,298.257223563]'')::integer dist_start,
	(ST_Distance_Spheroid(geom, lead(geom, 1) OVER (PARTITION BY animals_id order by acquisition_time), ''SPHEROID["WGS 84",6378137,298.257223563]'')/(extract(epoch from acquisition_time) - lead(extract(epoch from acquisition_time), +1) OVER (PARTITION BY animals_id order by acquisition_time))*60*60)::numeric(8,2)*-1 as speed_Mh_t_1n
-------------
-- Absolute angle: This is available just on postgis 2.0
, ST_Azimuth(geom::geography, (lead(geom, 1) OVER (PARTITION BY animals_id order by acquisition_time))::geography) as abs_angle_t_1n
-- Relative angle: This is available just on postgis 2.0
, ST_Azimuth((lead(geom, -1) OVER (PARTITION BY animals_id order by acquisition_time))::geography, geom::geography) - ST_Azimuth(geom::geography, (lead(geom, +1) OVER (PARTITION BY animals_id order by acquisition_time))::geography) as rel_angle_t_1np
-------------
	FROM '|| locations_set_name ||'
	where animals_id = ' || animal ||' and geom is not null and acquisition_time >= ''' || starting_time || ''' and acquisition_time <= ''' || ending_time || '''
	 ) a
 where deltaT_t_1n <' || time_interval + buffer || ' and deltaT_t_1n > '|| time_interval - buffer
 loop
return next cursor_var;
end loop;

-- If I created the temporary table, I delete it here
IF not locations_set_name = 'main.view_locations_set' THEN
	execute 'drop table ' || locations_set_name;
END IF;

return;
END;
$$;


--
-- Name: regularizex(integer, integer, double precision, timestamp with time zone, timestamp with time zone); Type: FUNCTION; Schema: ws_dream; Owner: -
--

CREATE FUNCTION ws_dream.regularizex(animal integer, time_interval integer DEFAULT ((60 * 60) * 4), buffer double precision DEFAULT 300, starting_time timestamp with time zone DEFAULT NULL::timestamp with time zone, ending_time timestamp with time zone DEFAULT NULL::timestamp with time zone) RETURNS SETOF tools.locations_set
    LANGUAGE plpgsql
    AS $$
DECLARE
location_set tools.locations_set%rowtype;
cursor_var record;
interval_length integer;
check_animal boolean;

BEGIN
-- Error trapping: if the buffer is > 0.5 * time interval, I could take 2 times the same locations, therefore an exception is raised
IF buffer > 0.5 * time_interval THEN
raise exception 'Hey, guy, what are you doing, ah? With a buffer (%) > 0.5 * time interval (%), you could get twice the same location, please reduce buffer or increase time interval.', buffer, time_interval;
END IF;
-- If the starting date is not set, the minimum, valid timestamp of the data set is taken
IF starting_time is null then
select min(acquisition_time)::date::timestamp with time zone FROM ws_dream.view_gps_data_ssf_12m
WHERE view_gps_data_ssf_12m.animals_id = animal
into starting_time;
end if;
-- If the ending date is not set, the maximum, valid timestamp of the data set is taken
IF ending_time is null then
select max(acquisition_time) FROM ws_dream.view_gps_data_ssf_12m
WHERE view_gps_data_ssf_12m.animals_id = animal
into ending_time;
end if;
-- I define the interval time (number of seconds between the starting and ending time)
select extract(epoch from (ending_time-starting_time))::integer + buffer
into interval_length;
-- I create a "virtual" set of records with regular time interval (from starting_time to ending_time, with a step equal to the interval length
-- Then I go through all the elements of the virtual set and I check if a real record exist in ws_dream.view_gps_data_ssf_12m which has an acquisition_time
-- closer then the defined buffer. If more then 1 record exists in the buffer range, then I take the "closest".
FOR location_set IN select animal, (starting_time + generate_series (0, interval_length, time_interval) * interval '1 second'), NULL::geometry
LOOP
select geom, acquisition_time
from ws_dream.view_gps_data_ssf_12m 
where animals_id = animal and (acquisition_time < (location_set.acquisition_time + interval '1 second' * buffer) and acquisition_time > (location_set.acquisition_time - interval '1 second' * buffer)) 
order by abs(extract (epoch from (acquisition_time - location_set.acquisition_time))) 
limit 1 
into cursor_var;
-- If I have a record in ws_dream.view_gps_data_ssf_12m, i get the values from there, otherwise I keep my "virtual" record
IF cursor_var.acquisition_time is not null then
location_set.acquisition_time = cursor_var.acquisition_time;
location_set.geom = cursor_var.geom;
END IF;
return next location_set;
end loop;
return;
END;
$$;


--
-- Name: FUNCTION regularizex(animal integer, time_interval integer, buffer double precision, starting_time timestamp with time zone, ending_time timestamp with time zone); Type: COMMENT; Schema: ws_dream; Owner: -
--

COMMENT ON FUNCTION ws_dream.regularizex(animal integer, time_interval integer, buffer double precision, starting_time timestamp with time zone, ending_time timestamp with time zone) IS 'This function creates a complete, regular time series of locations from ws_dream.view_gps_data_ssf_12m using an individual id, a time interval (in seconds), a buffer time (in seconds, which corresponds to the accepted delay of GPS recording), a starting time (if no value is defined, the first record of the animal data set is taken), an ending time (if no value is defined, the last record of the animal data set is taken). The function checks at every time step if exists a "real" record (with or with coordinates) in the ws_dream.view_gps_data_ssf_12m table (which is the "locations_set" object of the "main.gps_data_animals" table): if any real data exists (inside a defined time interval buffer from the reference timestamp generated by the function) in ws_dream.view_gps_data_ssf_12m, the real record is used, otherwise a "virtual" record is created (with empty geometry). The output is a table with the structure "location_set" (animals_id integer, acquisition_time timestamp with time zone, geom geometry).';


--
-- Name: ceiling_minutes(timestamp without time zone, integer); Type: FUNCTION; Schema: ws_fem; Owner: -
--

CREATE FUNCTION ws_fem.ceiling_minutes(timestamp without time zone, integer) RETURNS timestamp without time zone
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ 
    SELECT ws_fem.round_minutes( $1 + cast((($2/2)::varchar ||' min') as interval ), $2 );
$_$;


--
-- Name: date_round(timestamp with time zone, interval); Type: FUNCTION; Schema: ws_fem; Owner: -
--

CREATE FUNCTION ws_fem.date_round(base_date timestamp with time zone, round_interval interval) RETURNS timestamp with time zone
    LANGUAGE sql STABLE
    AS $_$
SELECT TO_TIMESTAMP((EXTRACT(epoch FROM $1)::INTEGER + EXTRACT(epoch FROM $2)::INTEGER / 2)
                / EXTRACT(epoch FROM $2)::INTEGER * EXTRACT(epoch FROM $2)::INTEGER)
$_$;


--
-- Name: extract4r(integer); Type: FUNCTION; Schema: ws_fem; Owner: -
--

CREATE FUNCTION ws_fem.extract4r(id_cluster integer) RETURNS SETOF ws_fem.cluster
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$

SELECT 
  dataset_gps.gps_data_animals_id, 
  dataset_gps.animals_id, 
  dataset_gps.acquisition_time, 
  dataset_gps.utm_x, 
  dataset_gps.utm_y, 
  dataset_gps.yearx, 
  dataset_gps.month_rel, 
 case when month_rel <= a then 0
  when ((month_rel > a and month_rel <= b) or (month_rel > a and b is null)) then 1
 else 2 end sub_cluster,
 id::integer
FROM 
  ws_fem.dataset_gps, 
  ws_fem.combination_complete
WHERE 
  id = $1 and
  dataset_gps.yearx = combination_complete.yearx AND
  dataset_gps.animals_id = combination_complete.animals_id
  order by id, acquisition_time;
$_$;


--
-- Name: extract4r_anne(integer, integer, integer); Type: FUNCTION; Schema: ws_fem; Owner: -
--

CREATE FUNCTION ws_fem.extract4r_anne(animals_id integer, yearx integer, window_code integer) RETURNS SETOF ws_fem.cluster
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$

SELECT 
  dataset_gps.gps_data_animals_id, 
  dataset_gps.animals_id, 
  dataset_gps.acquisition_time, 
  dataset_gps.utm_x, 
  dataset_gps.utm_y, 
  dataset_gps.yearx, 
  dataset_gps.month_rel, 
 case 
  when month_rel <= a and b is null then 1
  when month_rel <= a and b is not null then 0
  when (month_rel > a and month_rel <= b and b is not null) then 1
  when (month_rel > a and b is null) then 2
  WHEN (month_rel > b) and b is not null then 2
  end sub_cluster,
 id::integer
FROM 
  ws_fem.dataset_gps, 
  ws_fem.combination
WHERE 
  animals_id = $1 and
  yearx = $2 and
  combination.id = $3
  order by id, acquisition_time;
$_$;


--
-- Name: floor_minutes(timestamp without time zone, integer); Type: FUNCTION; Schema: ws_fem; Owner: -
--

CREATE FUNCTION ws_fem.floor_minutes(timestamp without time zone, integer) RETURNS timestamp without time zone
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ 
    SELECT ws_fem.round_minutes( $1 - cast((($2/2)::varchar ||' min') as interval ), $2 );
$_$;


--
-- Name: outlier_detection_jdg2_leiden(character varying, double precision, integer, integer); Type: FUNCTION; Schema: ws_fem; Owner: -
--

CREATE FUNCTION ws_fem.outlier_detection_jdg2_leiden(animals_id character varying, min_cos_angle double precision, min_distance integer, speed integer) RETURNS SETOF integer
    LANGUAGE sql
    AS $_$
select rownames::integer from (
	select 
		rownames,
		ST_DistanceSpheroid(geom, lag(geom, 1) OVER (PARTITION BY animals_id order by acquisition_time), 'SPHEROID["WGS 84",6378137,298.257223563]') as distance1,
		ST_DistanceSpheroid(geom, lead(geom, 1) OVER (PARTITION BY animals_id order by acquisition_time), 'SPHEROID["WGS 84",6378137,298.257223563]') as distance2,
		cos(ST_Azimuth((lag(geom, 1) OVER (PARTITION BY animals_id order by acquisition_time))::geography, geom::geography) - ST_Azimuth(geom::geography, (lead(geom, 1) OVER (PARTITION BY animals_id order by acquisition_time))::geography)) as rel_angle,
		(
		ST_DistanceSpheroid(geom, LEAD(geom, -1) OVER (PARTITION BY animals_id ORDER BY acquisition_time),'SPHEROID["WGS 84",6378137,298.257223563]')/
		((EXTRACT(epoch FROM acquisition_time) - LEAD(EXTRACT(epoch FROM acquisition_time), -1) OVER (PARTITION BY animals_id ORDER BY acquisition_time))+1)*60*60) 
		AS speed
	FROM  ws_fem.joh_leiden_f where validity_code = 1 and animals_id = $1) a 
where 
	rel_angle < $2 and 
	distance1 > $3 and 
	distance2 > $3 and
	speed > $4; 
$_$;


--
-- Name: outlier_detection_jdg_leiden(character varying, double precision, integer, integer); Type: FUNCTION; Schema: ws_fem; Owner: -
--

CREATE FUNCTION ws_fem.outlier_detection_jdg_leiden(animals_id character varying, min_cos_angle double precision, min_distance integer, speed integer) RETURNS SETOF integer
    LANGUAGE sql
    AS $_$
select rownames::integer from (
	select 
		rownames,
		ST_Distance_Spheroid(geom, lag(geom, 1) OVER (PARTITION BY animals_id order by acquisition_time), 'SPHEROID["WGS 84",6378137,298.257223563]') as distance1,
		ST_Distance_Spheroid(geom, lead(geom, 1) OVER (PARTITION BY animals_id order by acquisition_time), 'SPHEROID["WGS 84",6378137,298.257223563]') as distance2,
		cos(ST_Azimuth((lag(geom, 1) OVER (PARTITION BY animals_id order by acquisition_time))::geography, geom::geography) - ST_Azimuth(geom::geography, (lead(geom, 1) OVER (PARTITION BY animals_id order by acquisition_time))::geography)) as rel_angle,
		(
		ST_Distance_Spheroid(geom, LEAD(geom, -1) OVER (PARTITION BY animals_id ORDER BY acquisition_time),'SPHEROID["WGS 84",6378137,298.257223563]')/
		((EXTRACT(epoch FROM acquisition_time) - LEAD(EXTRACT(epoch FROM acquisition_time), -1) OVER (PARTITION BY animals_id ORDER BY acquisition_time))+1)*60*60) 
		AS speed
	FROM  ws_fem.joh_leiden_f where validity_code = 1 and animals_id = $1) a 
where 
	rel_angle < $2 and 
	distance1 > $3 and 
	distance2 > $3 and
	speed > $4; 
$_$;


--
-- Name: round_minutes(timestamp without time zone, integer); Type: FUNCTION; Schema: ws_fem; Owner: -
--

CREATE FUNCTION ws_fem.round_minutes(timestamp without time zone, integer) RETURNS timestamp without time zone
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ 
  SELECT date_trunc('hour', $1) + (cast(($2::varchar||' min') as interval) * round( (date_part('minute',$1)::float + date_part('second',$1)/ 60.)::float / cast($2 as float)))
$_$;


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: ch_dem_2m; Type: TABLE; Schema: ws_amsterdam; Owner: -
--

CREATE TABLE ws_amsterdam.ch_dem_2m (
    rid integer,
    rast public.raster,
    filename text
);


--
-- Name: evl_actdata_all; Type: TABLE; Schema: ws_amsterdam; Owner: -
--

CREATE TABLE ws_amsterdam.evl_actdata_all (
    study_areas_id integer,
    animals_id integer,
    activity_sensors_id integer,
    act_1 double precision,
    act_2 double precision,
    act_3 double precision,
    acquisition_time timestamp without time zone,
    activity_sensor_mode_code integer,
    gps_sensors_id integer
);


--
-- Name: evl_animals_sensors_all; Type: TABLE; Schema: ws_amsterdam; Owner: -
--

CREATE TABLE ws_amsterdam.evl_animals_sensors_all (
    study_areas_id integer,
    study_name character varying(100),
    animals_id integer,
    gps_sensors_id integer,
    activity_sensors_id integer,
    vendor character varying,
    sex "char",
    year_birth integer,
    year_birth_exact boolean,
    gps_start_time timestamp with time zone,
    gps_end_time timestamp with time zone,
    act_start_time timestamp with time zone,
    act_end_time timestamp with time zone,
    body_mass_kg double precision,
    animals_captures_id integer
);


--
-- Name: COLUMN evl_animals_sensors_all.body_mass_kg; Type: COMMENT; Schema: ws_amsterdam; Owner: -
--

COMMENT ON COLUMN ws_amsterdam.evl_animals_sensors_all.body_mass_kg IS 'body mass at capture in kg';


--
-- Name: COLUMN evl_animals_sensors_all.animals_captures_id; Type: COMMENT; Schema: ws_amsterdam; Owner: -
--

COMMENT ON COLUMN ws_amsterdam.evl_animals_sensors_all.animals_captures_id IS 'id in the database';


--
-- Name: evl_animals_sensors_all_backup; Type: TABLE; Schema: ws_amsterdam; Owner: -
--

CREATE TABLE ws_amsterdam.evl_animals_sensors_all_backup (
    study_areas_id integer,
    study_name character varying(100),
    animals_id integer,
    gps_sensors_id integer,
    activity_sensors_id integer,
    vendor character varying,
    sex "char",
    year_birth integer,
    year_birth_exact boolean,
    gps_start_time timestamp with time zone,
    gps_end_time timestamp with time zone,
    act_start_time timestamp with time zone,
    act_end_time timestamp with time zone,
    body_mass_kg double precision
);


--
-- Name: evl_animals_sensors_all_sharing_info; Type: TABLE; Schema: ws_amsterdam; Owner: -
--

CREATE TABLE ws_amsterdam.evl_animals_sensors_all_sharing_info (
    row_number bigint,
    validation_set boolean,
    study_areas_id integer,
    study_name character varying(100),
    animals_id integer,
    gps_sensors_id integer,
    activity_sensors_id integer,
    vendor character varying,
    sex "char",
    year_birth integer,
    year_birth_exact boolean,
    gps_start_time timestamp with time zone,
    gps_end_time timestamp with time zone,
    act_start_time timestamp with time zone,
    act_end_time timestamp with time zone,
    body_mass_kg double precision,
    animals_captures_id integer
);


--
-- Name: evl_animals_sensors_all_sharing_info_backup; Type: TABLE; Schema: ws_amsterdam; Owner: -
--

CREATE TABLE ws_amsterdam.evl_animals_sensors_all_sharing_info_backup (
    row_number bigint,
    validation_set boolean,
    study_areas_id integer,
    study_name character varying(100),
    animals_id integer,
    gps_sensors_id integer,
    activity_sensors_id integer,
    vendor character varying,
    sex "char",
    year_birth integer,
    year_birth_exact boolean,
    gps_start_time timestamp with time zone,
    gps_end_time timestamp with time zone,
    act_start_time timestamp with time zone,
    act_end_time timestamp with time zone,
    body_mass_kg double precision,
    animals_captures_id integer
);


--
-- Name: evl_gpsdata_all; Type: TABLE; Schema: ws_amsterdam; Owner: -
--

CREATE TABLE ws_amsterdam.evl_gpsdata_all (
    study_areas_id integer,
    animals_id integer,
    gps_sensors_id integer,
    acquisition_time timestamp with time zone,
    longitude double precision,
    latitude double precision,
    geom public.geometry(Point,4326),
    gps_validity_code smallint,
    corine_land_cover_2006_code integer,
    corine_land_cover_2012_code integer,
    ndvi_modis_boku double precision,
    ndvi_modis_smoothed double precision,
    altitude_copernicus integer,
    slope_copernicus double precision,
    aspect_copernicus integer,
    forest_density integer,
    activity_sensors_id integer,
    nightlight integer,
    unique_id integer NOT NULL
);


--
-- Name: evl_gpsdata_all_unique_id_seq; Type: SEQUENCE; Schema: ws_amsterdam; Owner: -
--

CREATE SEQUENCE ws_amsterdam.evl_gpsdata_all_unique_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: evl_gpsdata_all_unique_id_seq; Type: SEQUENCE OWNED BY; Schema: ws_amsterdam; Owner: -
--

ALTER SEQUENCE ws_amsterdam.evl_gpsdata_all_unique_id_seq OWNED BY ws_amsterdam.evl_gpsdata_all.unique_id;


--
-- Name: evl_mcps_all; Type: VIEW; Schema: ws_amsterdam; Owner: -
--

CREATE VIEW ws_amsterdam.evl_mcps_all AS
 SELECT row_number() OVER () AS id,
    evl_gpsdata_all.animals_id,
    evl_gpsdata_all.gps_sensors_id,
    (public.st_convexhull(public.st_collect(evl_gpsdata_all.geom)))::public.geometry(Polygon,4326) AS geom
   FROM ws_amsterdam.evl_gpsdata_all
  WHERE (evl_gpsdata_all.gps_validity_code = 1)
  GROUP BY evl_gpsdata_all.animals_id, evl_gpsdata_all.gps_sensors_id;


--
-- Name: evl_mcps_all_shiny; Type: TABLE; Schema: ws_amsterdam; Owner: -
--

CREATE TABLE ws_amsterdam.evl_mcps_all_shiny (
    id bigint,
    animals_id integer,
    gps_sensors_id integer,
    study_areas_id integer,
    geom public.geometry(Polygon,4326)
);


--
-- Name: evl_ndvi_modis_boku; Type: TABLE; Schema: ws_amsterdam; Owner: -
--

CREATE TABLE ws_amsterdam.evl_ndvi_modis_boku (
    study_areas_id integer,
    rid integer,
    rast public.raster,
    acquisition_date date
);


--
-- Name: evl_nightlight_2003_500m; Type: TABLE; Schema: ws_amsterdam; Owner: -
--

CREATE TABLE ws_amsterdam.evl_nightlight_2003_500m (
    rid integer NOT NULL,
    band_names text[],
    r_class character varying,
    r_proj4 character varying,
    rast public.raster,
    CONSTRAINT enforce_height_rast CHECK ((public.st_height(rast) = ANY (ARRAY[128, 22]))),
    CONSTRAINT enforce_max_extent_rast CHECK ((public.st_envelope(rast) OPERATOR(public.@) '0103000020E6100000010000000500000067AA09921164C63FEC7587AF6686454067AA09921164C63F71E8F7D2AA6A4A4007915B63A5AA374071E8F7D2AA6A4A4007915B63A5AA3740EC7587AF6686454067AA09921164C63FEC7587AF66864540'::public.geometry)),
    CONSTRAINT enforce_nodata_values_rast CHECK ((public._raster_constraint_nodata_values(rast) = '{0.0000000000}'::numeric[])),
    CONSTRAINT enforce_num_bands_rast CHECK ((public.st_numbands(rast) = 1)),
    CONSTRAINT enforce_out_db_rast CHECK ((public._raster_constraint_out_db(rast) = '{f}'::boolean[])),
    CONSTRAINT enforce_pixel_types_rast CHECK ((public._raster_constraint_pixel_types(rast) = '{32BUI}'::text[])),
    CONSTRAINT enforce_same_alignment_rast CHECK (public.st_samealignment(rast, '0100000000A8C1889E1011813FA8C1889E101181BF22BDED06DAFF0A4071E8F7D2AA6A4A4000000000000000000000000000000000E610000001000100'::public.raster)),
    CONSTRAINT enforce_scalex_rast CHECK ((round((public.st_scalex(rast))::numeric, 10) = round(0.00833332999999999, 10))),
    CONSTRAINT enforce_scaley_rast CHECK ((round((public.st_scaley(rast))::numeric, 10) = round('-0.00833332999999999'::numeric, 10))),
    CONSTRAINT enforce_srid_rast CHECK ((public.st_srid(rast) = 4326)),
    CONSTRAINT enforce_width_rast CHECK ((public.st_width(rast) = ANY (ARRAY[128, 3])))
);


--
-- Name: evl_nightlight_2003_500m_rid_seq; Type: SEQUENCE; Schema: ws_amsterdam; Owner: -
--

CREATE SEQUENCE ws_amsterdam.evl_nightlight_2003_500m_rid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: evl_nightlight_2003_500m_rid_seq; Type: SEQUENCE OWNED BY; Schema: ws_amsterdam; Owner: -
--

ALTER SEQUENCE ws_amsterdam.evl_nightlight_2003_500m_rid_seq OWNED BY ws_amsterdam.evl_nightlight_2003_500m.rid;


--
-- Name: evl_nightlight_vals; Type: TABLE; Schema: ws_amsterdam; Owner: -
--

CREATE TABLE ws_amsterdam.evl_nightlight_vals (
    nightlight double precision,
    unique_id integer,
    geom public.geometry(Point,4326)
);


--
-- Name: evl_study_area_all_bbox; Type: TABLE; Schema: ws_amsterdam; Owner: -
--

CREATE TABLE ws_amsterdam.evl_study_area_all_bbox (
    study_areas_id integer,
    study_name character varying(100),
    n_animals bigint,
    mean_deployment interval,
    sd_deployment double precision,
    min_deployment interval,
    max_deployment interval,
    total_deployment_yr double precision,
    total_deployment_days interval,
    min timestamp with time zone,
    max timestamp with time zone,
    bbox_all public.geometry,
    bbox_sub public.geometry
);


--
-- Name: evl_trajectories_all; Type: VIEW; Schema: ws_amsterdam; Owner: -
--

CREATE VIEW ws_amsterdam.evl_trajectories_all AS
 SELECT row_number() OVER () AS id,
    sel_subquery.animals_id,
    sel_subquery.gps_sensors_id,
    (public.st_makeline(sel_subquery.geom))::public.geometry(LineString,4326) AS geom
   FROM ( SELECT evl_gpsdata_all.animals_id,
            evl_gpsdata_all.gps_sensors_id,
            evl_gpsdata_all.geom,
            evl_gpsdata_all.acquisition_time
           FROM ws_amsterdam.evl_gpsdata_all
          WHERE ((evl_gpsdata_all.geom IS NOT NULL) AND (evl_gpsdata_all.gps_validity_code = 1))
          ORDER BY evl_gpsdata_all.animals_id, evl_gpsdata_all.acquisition_time) sel_subquery
  GROUP BY sel_subquery.animals_id, sel_subquery.gps_sensors_id;


--
-- Name: evl_trajectories_all_shiny; Type: TABLE; Schema: ws_amsterdam; Owner: -
--

CREATE TABLE ws_amsterdam.evl_trajectories_all_shiny (
    id bigint,
    animals_id integer,
    gps_sensors_id integer,
    study_areas_id integer,
    geom public.geometry(LineString,4326)
);


--
-- Name: evl_trajectories_all_shiny_simp; Type: TABLE; Schema: ws_amsterdam; Owner: -
--

CREATE TABLE ws_amsterdam.evl_trajectories_all_shiny_simp (
    id bigint,
    animals_id integer,
    gps_sensors_id integer,
    geom public.geometry(LineString,4326),
    study_areas_id integer
);


--
-- Name: evl_trajectories_all_simp; Type: VIEW; Schema: ws_amsterdam; Owner: -
--

CREATE VIEW ws_amsterdam.evl_trajectories_all_simp AS
 SELECT row_number() OVER () AS id,
    sel_subquery.animals_id,
    sel_subquery.gps_sensors_id,
    (public.st_makeline(sel_subquery.geom))::public.geometry(LineString,4326) AS geom
   FROM ( SELECT x.animals_id,
            x.gps_sensors_id,
            x.geom,
            x.acquisition_time,
            x.row_number
           FROM ( SELECT evl_gpsdata_all.animals_id,
                    evl_gpsdata_all.gps_sensors_id,
                    evl_gpsdata_all.geom,
                    (evl_gpsdata_all.acquisition_time)::date AS acquisition_time,
                    row_number() OVER (PARTITION BY ((evl_gpsdata_all.acquisition_time)::date), evl_gpsdata_all.animals_id) AS row_number
                   FROM ws_amsterdam.evl_gpsdata_all
                  WHERE ((evl_gpsdata_all.geom IS NOT NULL) AND (evl_gpsdata_all.gps_validity_code = 1))
                  ORDER BY evl_gpsdata_all.animals_id, evl_gpsdata_all.acquisition_time) x
          WHERE (x.row_number = 1)) sel_subquery
  GROUP BY sel_subquery.animals_id, sel_subquery.gps_sensors_id;


--
-- Name: marrit_ch25; Type: TABLE; Schema: ws_amsterdam; Owner: -
--

CREATE TABLE ws_amsterdam.marrit_ch25 (
    study_areas_id integer,
    animals_id integer,
    yyear double precision,
    acquisition_time timestamp with time zone,
    geom public.geometry,
    fixes_o bigint,
    fixes_e double precision,
    prop double precision
);


--
-- Name: marrit_ch25_1h; Type: TABLE; Schema: ws_amsterdam; Owner: -
--

CREATE TABLE ws_amsterdam.marrit_ch25_1h (
    study_areas_id integer,
    animals_id integer,
    acquisition_time timestamp with time zone,
    geom public.geometry
);


--
-- Name: marrit_ch25_3h; Type: TABLE; Schema: ws_amsterdam; Owner: -
--

CREATE TABLE ws_amsterdam.marrit_ch25_3h (
    study_areas_id integer,
    animals_id integer,
    acquisition_time timestamp with time zone,
    geom public.geometry
);


--
-- Name: marrit_ch25_4h; Type: TABLE; Schema: ws_amsterdam; Owner: -
--

CREATE TABLE ws_amsterdam.marrit_ch25_4h (
    study_areas_id integer,
    animals_id integer,
    acquisition_time timestamp with time zone,
    geom public.geometry
);


--
-- Name: marrit_de15; Type: TABLE; Schema: ws_amsterdam; Owner: -
--

CREATE TABLE ws_amsterdam.marrit_de15 (
    study_areas_id integer,
    animals_id integer,
    yyear double precision,
    acquisition_time timestamp with time zone,
    geom public.geometry,
    fixes_o bigint,
    fixes_e double precision,
    prop double precision
);


--
-- Name: marrit_de15_1h; Type: TABLE; Schema: ws_amsterdam; Owner: -
--

CREATE TABLE ws_amsterdam.marrit_de15_1h (
    study_areas_id integer,
    animals_id integer,
    acquisition_time timestamp with time zone,
    geom public.geometry
);


--
-- Name: marrit_de15_3h; Type: TABLE; Schema: ws_amsterdam; Owner: -
--

CREATE TABLE ws_amsterdam.marrit_de15_3h (
    study_areas_id integer,
    animals_id integer,
    acquisition_time timestamp with time zone,
    geom public.geometry
);


--
-- Name: marrit_de15_4h; Type: TABLE; Schema: ws_amsterdam; Owner: -
--

CREATE TABLE ws_amsterdam.marrit_de15_4h (
    study_areas_id integer,
    animals_id integer,
    acquisition_time timestamp with time zone,
    geom public.geometry
);


--
-- Name: ndvi_samp; Type: TABLE; Schema: ws_amsterdam; Owner: -
--

CREATE TABLE ws_amsterdam.ndvi_samp (
    rid integer,
    rast public.raster,
    study_areas_id integer,
    acquisition_date date
);


--
-- Name: nightlight_vals; Type: TABLE; Schema: ws_amsterdam; Owner: -
--

CREATE TABLE ws_amsterdam.nightlight_vals (
    unique_id integer,
    st_value double precision,
    geom public.geometry(Point,4326)
);


--
-- Name: record; Type: TABLE; Schema: ws_amsterdam; Owner: -
--

CREATE TABLE ws_amsterdam.record (
    "row.names" text,
    study_areas_id integer,
    acquisition_date date,
    acquisition_date_lag timestamp with time zone,
    acquisition_date_lead timestamp with time zone,
    acquisition_date_window timestamp with time zone,
    acquisition_date2 timestamp with time zone
);


--
-- Name: wolf_arada_ano_iii; Type: TABLE; Schema: ws_aveiro; Owner: -
--

CREATE TABLE ws_aveiro.wolf_arada_ano_iii (
    rid integer NOT NULL,
    band_names text[],
    r_class character varying,
    r_proj4 character varying,
    rast public.raster,
    CONSTRAINT enforce_height_rast CHECK ((public.st_height(rast) = ANY (ARRAY[128, 36]))),
    CONSTRAINT enforce_max_extent_rast CHECK ((public.st_envelope(rast) OPERATOR(public.@) '0103000020B30E00000100000005000000DB8AFD656FB2D2C0F89A559FAD21FE40DB8AFD656FB2D2C07CCDAACF961201414AEA043421CDC1407CCDAACF961201414AEA043421CDC140F89A559FAD21FE40DB8AFD656FB2D2C0F89A559FAD21FE40'::public.geometry)),
    CONSTRAINT enforce_nodata_values_rast CHECK ((public._raster_constraint_nodata_values(rast) = '{-99999.0000000000}'::numeric[])),
    CONSTRAINT enforce_num_bands_rast CHECK ((public.st_numbands(rast) = 1)),
    CONSTRAINT enforce_out_db_rast CHECK ((public._raster_constraint_out_db(rast) = '{f}'::boolean[])),
    CONSTRAINT enforce_pixel_types_rast CHECK ((public._raster_constraint_pixel_types(rast) = '{32BF}'::text[])),
    CONSTRAINT enforce_same_alignment_rast CHECK (public.st_samealignment(rast, '01000000000000000000003E400000000000003EC0004AEA0434214B407CCDAACF969A004100000000000000000000000000000000B30E000001000100'::public.raster)),
    CONSTRAINT enforce_scalex_rast CHECK ((round((public.st_scalex(rast))::numeric, 10) = round((30)::numeric, 10))),
    CONSTRAINT enforce_scaley_rast CHECK ((round((public.st_scaley(rast))::numeric, 10) = round((- (30)::numeric), 10))),
    CONSTRAINT enforce_srid_rast CHECK ((public.st_srid(rast) = 3763)),
    CONSTRAINT enforce_width_rast CHECK ((public.st_width(rast) = ANY (ARRAY[128, 46])))
);


--
-- Name: Wolf_Arada_AnoIII_rid_seq; Type: SEQUENCE; Schema: ws_aveiro; Owner: -
--

CREATE SEQUENCE ws_aveiro."Wolf_Arada_AnoIII_rid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Wolf_Arada_AnoIII_rid_seq; Type: SEQUENCE OWNED BY; Schema: ws_aveiro; Owner: -
--

ALTER SEQUENCE ws_aveiro."Wolf_Arada_AnoIII_rid_seq" OWNED BY ws_aveiro.wolf_arada_ano_iii.rid;


--
-- Name: wolf_arada_ano_ii; Type: TABLE; Schema: ws_aveiro; Owner: -
--

CREATE TABLE ws_aveiro.wolf_arada_ano_ii (
    rid integer NOT NULL,
    band_names text[],
    r_class character varying,
    r_proj4 character varying,
    rast public.raster,
    CONSTRAINT enforce_height_rast CHECK ((public.st_height(rast) = ANY (ARRAY[128, 36]))),
    CONSTRAINT enforce_max_extent_rast CHECK ((public.st_envelope(rast) OPERATOR(public.@) '0103000020B30E00000100000005000000DB8AFD656FB2D2C0F89A559FAD21FE40DB8AFD656FB2D2C07CCDAACF961201414AEA043421CDC1407CCDAACF961201414AEA043421CDC140F89A559FAD21FE40DB8AFD656FB2D2C0F89A559FAD21FE40'::public.geometry)),
    CONSTRAINT enforce_nodata_values_rast CHECK ((public._raster_constraint_nodata_values(rast) = '{-99999.0000000000}'::numeric[])),
    CONSTRAINT enforce_num_bands_rast CHECK ((public.st_numbands(rast) = 1)),
    CONSTRAINT enforce_out_db_rast CHECK ((public._raster_constraint_out_db(rast) = '{f}'::boolean[])),
    CONSTRAINT enforce_pixel_types_rast CHECK ((public._raster_constraint_pixel_types(rast) = '{32BF}'::text[])),
    CONSTRAINT enforce_same_alignment_rast CHECK (public.st_samealignment(rast, '01000000000000000000003E400000000000003EC06C2BF697BDC9BDC07CCDAACF9612014100000000000000000000000000000000B30E000001000100'::public.raster)),
    CONSTRAINT enforce_scalex_rast CHECK ((round((public.st_scalex(rast))::numeric, 10) = round((30)::numeric, 10))),
    CONSTRAINT enforce_scaley_rast CHECK ((round((public.st_scaley(rast))::numeric, 10) = round((- (30)::numeric), 10))),
    CONSTRAINT enforce_srid_rast CHECK ((public.st_srid(rast) = 3763)),
    CONSTRAINT enforce_width_rast CHECK ((public.st_width(rast) = ANY (ARRAY[128, 46])))
);


--
-- Name: Wolf_Arada_AnoII_rid_seq; Type: SEQUENCE; Schema: ws_aveiro; Owner: -
--

CREATE SEQUENCE ws_aveiro."Wolf_Arada_AnoII_rid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Wolf_Arada_AnoII_rid_seq; Type: SEQUENCE OWNED BY; Schema: ws_aveiro; Owner: -
--

ALTER SEQUENCE ws_aveiro."Wolf_Arada_AnoII_rid_seq" OWNED BY ws_aveiro.wolf_arada_ano_ii.rid;


--
-- Name: wolf_arada_ano_iv; Type: TABLE; Schema: ws_aveiro; Owner: -
--

CREATE TABLE ws_aveiro.wolf_arada_ano_iv (
    rid integer NOT NULL,
    band_names text[],
    r_class character varying,
    r_proj4 character varying,
    rast public.raster,
    CONSTRAINT enforce_height_rast CHECK ((public.st_height(rast) = ANY (ARRAY[128, 36]))),
    CONSTRAINT enforce_max_extent_rast CHECK ((public.st_envelope(rast) OPERATOR(public.@) '0103000020B30E00000100000005000000DB8AFD656FB2D2C0F89A559FAD21FE40DB8AFD656FB2D2C07CCDAACF961201414AEA043421CDC1407CCDAACF961201414AEA043421CDC140F89A559FAD21FE40DB8AFD656FB2D2C0F89A559FAD21FE40'::public.geometry)),
    CONSTRAINT enforce_nodata_values_rast CHECK ((public._raster_constraint_nodata_values(rast) = '{-99999.0000000000}'::numeric[])),
    CONSTRAINT enforce_num_bands_rast CHECK ((public.st_numbands(rast) = 1)),
    CONSTRAINT enforce_out_db_rast CHECK ((public._raster_constraint_out_db(rast) = '{f}'::boolean[])),
    CONSTRAINT enforce_pixel_types_rast CHECK ((public._raster_constraint_pixel_types(rast) = '{32BF}'::text[])),
    CONSTRAINT enforce_same_alignment_rast CHECK (public.st_samealignment(rast, '01000000000000000000003E400000000000003EC0DB8AFD656FB2D2C07CCDAACF9612014100000000000000000000000000000000B30E000001000100'::public.raster)),
    CONSTRAINT enforce_scalex_rast CHECK ((round((public.st_scalex(rast))::numeric, 10) = round((30)::numeric, 10))),
    CONSTRAINT enforce_scaley_rast CHECK ((round((public.st_scaley(rast))::numeric, 10) = round((- (30)::numeric), 10))),
    CONSTRAINT enforce_srid_rast CHECK ((public.st_srid(rast) = 3763)),
    CONSTRAINT enforce_width_rast CHECK ((public.st_width(rast) = ANY (ARRAY[128, 46])))
);


--
-- Name: Wolf_Arada_AnoIV_rid_seq; Type: SEQUENCE; Schema: ws_aveiro; Owner: -
--

CREATE SEQUENCE ws_aveiro."Wolf_Arada_AnoIV_rid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Wolf_Arada_AnoIV_rid_seq; Type: SEQUENCE OWNED BY; Schema: ws_aveiro; Owner: -
--

ALTER SEQUENCE ws_aveiro."Wolf_Arada_AnoIV_rid_seq" OWNED BY ws_aveiro.wolf_arada_ano_iv.rid;


--
-- Name: wolf_arada_ano_i; Type: TABLE; Schema: ws_aveiro; Owner: -
--

CREATE TABLE ws_aveiro.wolf_arada_ano_i (
    rid integer NOT NULL,
    band_names text[],
    r_class character varying,
    r_proj4 character varying,
    rast public.raster,
    CONSTRAINT enforce_height_rast CHECK ((public.st_height(rast) = ANY (ARRAY[128, 36]))),
    CONSTRAINT enforce_max_extent_rast CHECK ((public.st_envelope(rast) OPERATOR(public.@) '0103000020B30E00000100000005000000DB8AFD656FB2D2C0F89A559FAD21FE40DB8AFD656FB2D2C07CCDAACF961201414AEA043421CDC1407CCDAACF961201414AEA043421CDC140F89A559FAD21FE40DB8AFD656FB2D2C0F89A559FAD21FE40'::public.geometry)),
    CONSTRAINT enforce_nodata_values_rast CHECK ((public._raster_constraint_nodata_values(rast) = '{-99999.0000000000}'::numeric[])),
    CONSTRAINT enforce_num_bands_rast CHECK ((public.st_numbands(rast) = 1)),
    CONSTRAINT enforce_out_db_rast CHECK ((public._raster_constraint_out_db(rast) = '{f}'::boolean[])),
    CONSTRAINT enforce_pixel_types_rast CHECK ((public._raster_constraint_pixel_types(rast) = '{32BF}'::text[])),
    CONSTRAINT enforce_same_alignment_rast CHECK (public.st_samealignment(rast, '01000000000000000000003E400000000000003EC06C2BF697BDC9BDC07CCDAACF9612014100000000000000000000000000000000B30E000001000100'::public.raster)),
    CONSTRAINT enforce_scalex_rast CHECK ((round((public.st_scalex(rast))::numeric, 10) = round((30)::numeric, 10))),
    CONSTRAINT enforce_scaley_rast CHECK ((round((public.st_scaley(rast))::numeric, 10) = round((- (30)::numeric), 10))),
    CONSTRAINT enforce_srid_rast CHECK ((public.st_srid(rast) = 3763)),
    CONSTRAINT enforce_width_rast CHECK ((public.st_width(rast) = ANY (ARRAY[128, 46])))
);


--
-- Name: Wolf_Arada_AnoI_rid_seq; Type: SEQUENCE; Schema: ws_aveiro; Owner: -
--

CREATE SEQUENCE ws_aveiro."Wolf_Arada_AnoI_rid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Wolf_Arada_AnoI_rid_seq; Type: SEQUENCE OWNED BY; Schema: ws_aveiro; Owner: -
--

ALTER SEQUENCE ws_aveiro."Wolf_Arada_AnoI_rid_seq" OWNED BY ws_aveiro.wolf_arada_ano_i.rid;


--
-- Name: wolf_arada_ano_v; Type: TABLE; Schema: ws_aveiro; Owner: -
--

CREATE TABLE ws_aveiro.wolf_arada_ano_v (
    rid integer NOT NULL,
    band_names text[],
    r_class character varying,
    r_proj4 character varying,
    rast public.raster,
    CONSTRAINT enforce_height_rast CHECK ((public.st_height(rast) = ANY (ARRAY[128, 36]))),
    CONSTRAINT enforce_max_extent_rast CHECK ((public.st_envelope(rast) OPERATOR(public.@) '0103000020B30E00000100000005000000DB8AFD656FB2D2C0F89A559FAD21FE40DB8AFD656FB2D2C07CCDAACF961201414AEA043421CDC1407CCDAACF961201414AEA043421CDC140F89A559FAD21FE40DB8AFD656FB2D2C0F89A559FAD21FE40'::public.geometry)),
    CONSTRAINT enforce_nodata_values_rast CHECK ((public._raster_constraint_nodata_values(rast) = '{-99999.0000000000}'::numeric[])),
    CONSTRAINT enforce_num_bands_rast CHECK ((public.st_numbands(rast) = 1)),
    CONSTRAINT enforce_out_db_rast CHECK ((public._raster_constraint_out_db(rast) = '{f}'::boolean[])),
    CONSTRAINT enforce_pixel_types_rast CHECK ((public._raster_constraint_pixel_types(rast) = '{32BF}'::text[])),
    CONSTRAINT enforce_same_alignment_rast CHECK (public.st_samealignment(rast, '01000000000000000000003E400000000000003EC06C2BF697BDC9BDC07CCDAACF9612014100000000000000000000000000000000B30E000001000100'::public.raster)),
    CONSTRAINT enforce_scalex_rast CHECK ((round((public.st_scalex(rast))::numeric, 10) = round((30)::numeric, 10))),
    CONSTRAINT enforce_scaley_rast CHECK ((round((public.st_scaley(rast))::numeric, 10) = round((- (30)::numeric), 10))),
    CONSTRAINT enforce_srid_rast CHECK ((public.st_srid(rast) = 3763)),
    CONSTRAINT enforce_width_rast CHECK ((public.st_width(rast) = ANY (ARRAY[128, 46])))
);


--
-- Name: Wolf_Arada_AnoV_rid_seq; Type: SEQUENCE; Schema: ws_aveiro; Owner: -
--

CREATE SEQUENCE ws_aveiro."Wolf_Arada_AnoV_rid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Wolf_Arada_AnoV_rid_seq; Type: SEQUENCE OWNED BY; Schema: ws_aveiro; Owner: -
--

ALTER SEQUENCE ws_aveiro."Wolf_Arada_AnoV_rid_seq" OWNED BY ws_aveiro.wolf_arada_ano_v.rid;


--
-- Name: wolf_montemuro_ano_iii; Type: TABLE; Schema: ws_aveiro; Owner: -
--

CREATE TABLE ws_aveiro.wolf_montemuro_ano_iii (
    rid integer NOT NULL,
    band_names text[],
    r_class character varying,
    r_proj4 character varying,
    rast public.raster,
    CONSTRAINT enforce_height_rast CHECK ((public.st_height(rast) = ANY (ARRAY[128, 64]))),
    CONSTRAINT enforce_max_extent_rast CHECK ((public.st_envelope(rast) OPERATOR(public.@) '0103000020B30E000001000000050000009487855A5382AEC077BE9F9A1BE000419487855A5382AEC077BE9F9A1B7403410E4FAF94B50FDC4077BE9F9A1B7403410E4FAF94B50FDC4077BE9F9A1BE000419487855A5382AEC077BE9F9A1BE00041'::public.geometry)),
    CONSTRAINT enforce_nodata_values_rast CHECK ((public._raster_constraint_nodata_values(rast) = '{-99999.0000000000}'::numeric[])),
    CONSTRAINT enforce_num_bands_rast CHECK ((public.st_numbands(rast) = 1)),
    CONSTRAINT enforce_out_db_rast CHECK ((public._raster_constraint_out_db(rast) = '{f}'::boolean[])),
    CONSTRAINT enforce_pixel_types_rast CHECK ((public._raster_constraint_pixel_types(rast) = '{32BF}'::text[])),
    CONSTRAINT enforce_same_alignment_rast CHECK (public.st_samealignment(rast, '01000000000000000000003E400000000000003EC01B9E5E296B5FC64077BE9F9A1B74034100000000000000000000000000000000B30E000001000100'::public.raster)),
    CONSTRAINT enforce_scalex_rast CHECK ((round((public.st_scalex(rast))::numeric, 10) = round((30)::numeric, 10))),
    CONSTRAINT enforce_scaley_rast CHECK ((round((public.st_scaley(rast))::numeric, 10) = round((- (30)::numeric), 10))),
    CONSTRAINT enforce_srid_rast CHECK ((public.st_srid(rast) = 3763)),
    CONSTRAINT enforce_width_rast CHECK ((public.st_width(rast) = ANY (ARRAY[128, 64])))
);


--
-- Name: Wolf_Montemuro_AnoIII_rid_seq; Type: SEQUENCE; Schema: ws_aveiro; Owner: -
--

CREATE SEQUENCE ws_aveiro."Wolf_Montemuro_AnoIII_rid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Wolf_Montemuro_AnoIII_rid_seq; Type: SEQUENCE OWNED BY; Schema: ws_aveiro; Owner: -
--

ALTER SEQUENCE ws_aveiro."Wolf_Montemuro_AnoIII_rid_seq" OWNED BY ws_aveiro.wolf_montemuro_ano_iii.rid;


--
-- Name: wolf_montemuro_ano_ii; Type: TABLE; Schema: ws_aveiro; Owner: -
--

CREATE TABLE ws_aveiro.wolf_montemuro_ano_ii (
    rid integer NOT NULL,
    band_names text[],
    r_class character varying,
    r_proj4 character varying,
    rast public.raster,
    CONSTRAINT enforce_height_rast CHECK ((public.st_height(rast) = ANY (ARRAY[128, 64]))),
    CONSTRAINT enforce_max_extent_rast CHECK ((public.st_envelope(rast) OPERATOR(public.@) '0103000020B30E000001000000050000009487855A5382AEC077BE9F9A1BE000419487855A5382AEC077BE9F9A1B7403410E4FAF94B50FDC4077BE9F9A1B7403410E4FAF94B50FDC4077BE9F9A1BE000419487855A5382AEC077BE9F9A1BE00041'::public.geometry)),
    CONSTRAINT enforce_nodata_values_rast CHECK ((public._raster_constraint_nodata_values(rast) = '{-99999.0000000000}'::numeric[])),
    CONSTRAINT enforce_num_bands_rast CHECK ((public.st_numbands(rast) = 1)),
    CONSTRAINT enforce_out_db_rast CHECK ((public._raster_constraint_out_db(rast) = '{f}'::boolean[])),
    CONSTRAINT enforce_pixel_types_rast CHECK ((public._raster_constraint_pixel_types(rast) = '{32BF}'::text[])),
    CONSTRAINT enforce_same_alignment_rast CHECK (public.st_samealignment(rast, '01000000000000000000003E400000000000003EC01B9E5E296B5FC64077BE9F9A1B74034100000000000000000000000000000000B30E000001000100'::public.raster)),
    CONSTRAINT enforce_scalex_rast CHECK ((round((public.st_scalex(rast))::numeric, 10) = round((30)::numeric, 10))),
    CONSTRAINT enforce_scaley_rast CHECK ((round((public.st_scaley(rast))::numeric, 10) = round((- (30)::numeric), 10))),
    CONSTRAINT enforce_srid_rast CHECK ((public.st_srid(rast) = 3763)),
    CONSTRAINT enforce_width_rast CHECK ((public.st_width(rast) = ANY (ARRAY[128, 64])))
);


--
-- Name: Wolf_Montemuro_AnoII_rid_seq; Type: SEQUENCE; Schema: ws_aveiro; Owner: -
--

CREATE SEQUENCE ws_aveiro."Wolf_Montemuro_AnoII_rid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Wolf_Montemuro_AnoII_rid_seq; Type: SEQUENCE OWNED BY; Schema: ws_aveiro; Owner: -
--

ALTER SEQUENCE ws_aveiro."Wolf_Montemuro_AnoII_rid_seq" OWNED BY ws_aveiro.wolf_montemuro_ano_ii.rid;


--
-- Name: wolf_montemuro_ano_iv; Type: TABLE; Schema: ws_aveiro; Owner: -
--

CREATE TABLE ws_aveiro.wolf_montemuro_ano_iv (
    rid integer NOT NULL,
    band_names text[],
    r_class character varying,
    r_proj4 character varying,
    rast public.raster,
    CONSTRAINT enforce_height_rast CHECK ((public.st_height(rast) = ANY (ARRAY[128, 64]))),
    CONSTRAINT enforce_max_extent_rast CHECK ((public.st_envelope(rast) OPERATOR(public.@) '0103000020B30E000001000000050000009487855A5382AEC077BE9F9A1BE000419487855A5382AEC077BE9F9A1B7403410E4FAF94B50FDC4077BE9F9A1B7403410E4FAF94B50FDC4077BE9F9A1BE000419487855A5382AEC077BE9F9A1BE00041'::public.geometry)),
    CONSTRAINT enforce_nodata_values_rast CHECK ((public._raster_constraint_nodata_values(rast) = '{-99999.0000000000}'::numeric[])),
    CONSTRAINT enforce_num_bands_rast CHECK ((public.st_numbands(rast) = 1)),
    CONSTRAINT enforce_out_db_rast CHECK ((public._raster_constraint_out_db(rast) = '{f}'::boolean[])),
    CONSTRAINT enforce_pixel_types_rast CHECK ((public._raster_constraint_pixel_types(rast) = '{32BF}'::text[])),
    CONSTRAINT enforce_same_alignment_rast CHECK (public.st_samealignment(rast, '01000000000000000000003E400000000000003EC01B9E5E296B5FC64077BE9F9A1B74034100000000000000000000000000000000B30E000001000100'::public.raster)),
    CONSTRAINT enforce_scalex_rast CHECK ((round((public.st_scalex(rast))::numeric, 10) = round((30)::numeric, 10))),
    CONSTRAINT enforce_scaley_rast CHECK ((round((public.st_scaley(rast))::numeric, 10) = round((- (30)::numeric), 10))),
    CONSTRAINT enforce_srid_rast CHECK ((public.st_srid(rast) = 3763)),
    CONSTRAINT enforce_width_rast CHECK ((public.st_width(rast) = ANY (ARRAY[128, 64])))
);


--
-- Name: Wolf_Montemuro_AnoIV_rid_seq; Type: SEQUENCE; Schema: ws_aveiro; Owner: -
--

CREATE SEQUENCE ws_aveiro."Wolf_Montemuro_AnoIV_rid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Wolf_Montemuro_AnoIV_rid_seq; Type: SEQUENCE OWNED BY; Schema: ws_aveiro; Owner: -
--

ALTER SEQUENCE ws_aveiro."Wolf_Montemuro_AnoIV_rid_seq" OWNED BY ws_aveiro.wolf_montemuro_ano_iv.rid;


--
-- Name: wolf_montemuro_ano_i; Type: TABLE; Schema: ws_aveiro; Owner: -
--

CREATE TABLE ws_aveiro.wolf_montemuro_ano_i (
    rid integer NOT NULL,
    band_names text[],
    r_class character varying,
    r_proj4 character varying,
    rast public.raster,
    CONSTRAINT enforce_height_rast CHECK ((public.st_height(rast) = ANY (ARRAY[128, 64]))),
    CONSTRAINT enforce_max_extent_rast CHECK ((public.st_envelope(rast) OPERATOR(public.@) '0103000020B30E000001000000050000009487855A5382AEC077BE9F9A1BE000419487855A5382AEC077BE9F9A1B7403410E4FAF94B50FDC4077BE9F9A1B7403410E4FAF94B50FDC4077BE9F9A1BE000419487855A5382AEC077BE9F9A1BE00041'::public.geometry)),
    CONSTRAINT enforce_nodata_values_rast CHECK ((public._raster_constraint_nodata_values(rast) = '{-99999.0000000000}'::numeric[])),
    CONSTRAINT enforce_num_bands_rast CHECK ((public.st_numbands(rast) = 1)),
    CONSTRAINT enforce_out_db_rast CHECK ((public._raster_constraint_out_db(rast) = '{f}'::boolean[])),
    CONSTRAINT enforce_pixel_types_rast CHECK ((public._raster_constraint_pixel_types(rast) = '{32BF}'::text[])),
    CONSTRAINT enforce_same_alignment_rast CHECK (public.st_samealignment(rast, '01000000000000000000003E400000000000003EC01B9E5E296B5FC64077BE9F9A1B74034100000000000000000000000000000000B30E000001000100'::public.raster)),
    CONSTRAINT enforce_scalex_rast CHECK ((round((public.st_scalex(rast))::numeric, 10) = round((30)::numeric, 10))),
    CONSTRAINT enforce_scaley_rast CHECK ((round((public.st_scaley(rast))::numeric, 10) = round((- (30)::numeric), 10))),
    CONSTRAINT enforce_srid_rast CHECK ((public.st_srid(rast) = 3763)),
    CONSTRAINT enforce_width_rast CHECK ((public.st_width(rast) = ANY (ARRAY[128, 64])))
);


--
-- Name: Wolf_Montemuro_AnoI_rid_seq; Type: SEQUENCE; Schema: ws_aveiro; Owner: -
--

CREATE SEQUENCE ws_aveiro."Wolf_Montemuro_AnoI_rid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Wolf_Montemuro_AnoI_rid_seq; Type: SEQUENCE OWNED BY; Schema: ws_aveiro; Owner: -
--

ALTER SEQUENCE ws_aveiro."Wolf_Montemuro_AnoI_rid_seq" OWNED BY ws_aveiro.wolf_montemuro_ano_i.rid;


--
-- Name: wolf_montemuro_ano_v; Type: TABLE; Schema: ws_aveiro; Owner: -
--

CREATE TABLE ws_aveiro.wolf_montemuro_ano_v (
    rid integer NOT NULL,
    band_names text[],
    r_class character varying,
    r_proj4 character varying,
    rast public.raster,
    CONSTRAINT enforce_height_rast CHECK ((public.st_height(rast) = ANY (ARRAY[128, 64]))),
    CONSTRAINT enforce_max_extent_rast CHECK ((public.st_envelope(rast) OPERATOR(public.@) '0103000020B30E000001000000050000009487855A5382AEC077BE9F9A1BE000419487855A5382AEC077BE9F9A1B7403410E4FAF94B50FDC4077BE9F9A1B7403410E4FAF94B50FDC4077BE9F9A1BE000419487855A5382AEC077BE9F9A1BE00041'::public.geometry)),
    CONSTRAINT enforce_nodata_values_rast CHECK ((public._raster_constraint_nodata_values(rast) = '{-99999.0000000000}'::numeric[])),
    CONSTRAINT enforce_num_bands_rast CHECK ((public.st_numbands(rast) = 1)),
    CONSTRAINT enforce_out_db_rast CHECK ((public._raster_constraint_out_db(rast) = '{f}'::boolean[])),
    CONSTRAINT enforce_pixel_types_rast CHECK ((public._raster_constraint_pixel_types(rast) = '{32BF}'::text[])),
    CONSTRAINT enforce_same_alignment_rast CHECK (public.st_samealignment(rast, '01000000000000000000003E400000000000003EC01B9E5E296B5FC64077BE9F9A1B74034100000000000000000000000000000000B30E000001000100'::public.raster)),
    CONSTRAINT enforce_scalex_rast CHECK ((round((public.st_scalex(rast))::numeric, 10) = round((30)::numeric, 10))),
    CONSTRAINT enforce_scaley_rast CHECK ((round((public.st_scaley(rast))::numeric, 10) = round((- (30)::numeric), 10))),
    CONSTRAINT enforce_srid_rast CHECK ((public.st_srid(rast) = 3763)),
    CONSTRAINT enforce_width_rast CHECK ((public.st_width(rast) = ANY (ARRAY[128, 64])))
);


--
-- Name: Wolf_Montemuro_AnoV_rid_seq; Type: SEQUENCE; Schema: ws_aveiro; Owner: -
--

CREATE SEQUENCE ws_aveiro."Wolf_Montemuro_AnoV_rid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Wolf_Montemuro_AnoV_rid_seq; Type: SEQUENCE OWNED BY; Schema: ws_aveiro; Owner: -
--

ALTER SEQUENCE ws_aveiro."Wolf_Montemuro_AnoV_rid_seq" OWNED BY ws_aveiro.wolf_montemuro_ano_v.rid;


--
-- Name: animals_fire; Type: TABLE; Schema: ws_aveiro; Owner: -
--

CREATE TABLE ws_aveiro.animals_fire (
    fire_id integer,
    start_fire timestamp with time zone,
    end_fire timestamp with time zone,
    duration_fire interval,
    size_fire double precision,
    animals_id integer,
    grp2 bigint,
    animal_fire_association text,
    time_spent_in_fire interval,
    st_collect public.geometry,
    number_fixes_overlapping bigint,
    min timestamp with time zone,
    max timestamp with time zone,
    buffer integer
);


--
-- Name: aniyrwk_fire; Type: TABLE; Schema: ws_aveiro; Owner: -
--

CREATE TABLE ws_aveiro.aniyrwk_fire (
    fire_id integer,
    start_fire timestamp with time zone,
    end_fire timestamp with time zone,
    duration_fire interval,
    size_fire double precision,
    animals_id integer,
    aniyrwk character varying,
    grp2 bigint,
    animal_fire_association text,
    time_spent_in_fire interval,
    st_collect public.geometry,
    number_fixes_overlapping bigint,
    min timestamp with time zone,
    max timestamp with time zone,
    buffer integer
);


--
-- Name: aveiro_fire_polygons_2; Type: TABLE; Schema: ws_aveiro; Owner: -
--

CREATE TABLE ws_aveiro.aveiro_fire_polygons_2 (
    id_val integer,
    dtinicio text,
    dtfim text,
    area_ha double precision,
    year integer,
    geometry public.geometry
);


--
-- Name: aveiro_fire_polygons_new; Type: TABLE; Schema: ws_aveiro; Owner: -
--

CREATE TABLE ws_aveiro.aveiro_fire_polygons_new (
    id_val integer NOT NULL,
    dtinicio text,
    dtfim text,
    area_ha double precision,
    year integer,
    geometry public.geometry,
    geom3 public.geometry(MultiPolygon,32629)
);


--
-- Name: fire; Type: TABLE; Schema: ws_aveiro; Owner: -
--

CREATE TABLE ws_aveiro.fire (
    fire_id integer,
    start_fire timestamp with time zone,
    end_fire timestamp with time zone,
    duration_fire interval,
    size_fire double precision,
    geom public.geometry,
    geom250 public.geometry,
    geom500 public.geometry,
    geom750 public.geometry,
    geom1000 public.geometry
);


--
-- Name: fires; Type: TABLE; Schema: ws_aveiro; Owner: -
--

CREATE TABLE ws_aveiro.fires (
    fire_id integer,
    start_fire timestamp with time zone,
    end_fire timestamp with time zone,
    duration_fire interval,
    size_fire double precision,
    geom public.geometry,
    geom250 public.geometry,
    geom500 public.geometry,
    geom750 public.geometry,
    geom1000 public.geometry
);


--
-- Name: gps_data; Type: TABLE; Schema: ws_aveiro; Owner: -
--

CREATE TABLE ws_aveiro.gps_data (
    gps_data_animals_id integer NOT NULL,
    animals_id integer,
    acquisition_time timestamp with time zone,
    int4 integer,
    ndvi_modis_boku double precision,
    ndvi_modis_smoothed double precision,
    altitude_copernicus integer,
    slope_copernicus double precision,
    aspect_copernicus integer,
    corine_land_cover_2012_code integer,
    corine_land_cover_2012_vector_code integer,
    forest_density integer,
    utm_x integer,
    utm_y integer,
    latitude double precision,
    longitude double precision,
    geom public.geometry(Point,4326),
    study_areas_id integer,
    animals_original_name character varying(50),
    sex "char",
    year_birth integer,
    year_birth_exact boolean
);


--
-- Name: TABLE gps_data; Type: COMMENT; Schema: ws_aveiro; Owner: -
--

COMMENT ON TABLE ws_aveiro.gps_data IS 'Raw GPS locations regularized at each 3 h of Portugal roe deer for analysis on fire ecology';


--
-- Name: gps_data_2; Type: TABLE; Schema: ws_aveiro; Owner: -
--

CREATE TABLE ws_aveiro.gps_data_2 (
    gps_data_animals_id integer,
    animals_id integer,
    acquisition_time timestamp with time zone,
    int4 integer,
    ndvi_modis_boku double precision,
    ndvi_modis_smoothed double precision,
    altitude_copernicus integer,
    slope_copernicus double precision,
    aspect_copernicus integer,
    corine_land_cover_2012_code integer,
    corine_land_cover_2012_vector_code integer,
    forest_density integer,
    utm_x integer,
    utm_y integer,
    latitude double precision,
    longitude double precision,
    geom public.geometry(Point,4326),
    study_areas_id integer,
    animals_original_name character varying(50),
    sex "char",
    year_birth integer,
    year_birth_exact boolean,
    aniyrwk character varying
);


--
-- Name: gps_data_regular; Type: TABLE; Schema: ws_aveiro; Owner: -
--

CREATE TABLE ws_aveiro.gps_data_regular (
    acquisition_time timestamp with time zone,
    animals_id integer,
    geom public.geometry,
    geom32629 public.geometry,
    gps_data_animals_id integer,
    ndvi_modis_boku double precision,
    ndvi_modis_smoothed double precision,
    altitude_copernicus integer,
    slope_copernicus double precision,
    aspect_copernicus integer,
    corine_land_cover_2012_code integer,
    corine_land_cover_2012_vector_code integer,
    forest_density integer,
    utm_x integer,
    utm_y integer,
    latitude double precision,
    longitude double precision,
    study_areas_id integer,
    animals_original_name character varying(50),
    sex "char",
    year_birth integer,
    year_birth_exact boolean,
    steplength double precision,
    lag1_3h double precision,
    lag2_6h double precision,
    lag4_12h double precision,
    lag8_24h double precision,
    steplength_t interval,
    lag1_t interval,
    lag2_t interval,
    lag3_t interval,
    lag4_t interval,
    in_fire_spatial boolean,
    in_fire_temporal text,
    sunrise timestamp with time zone,
    sunset timestamp with time zone,
    aniyrwk text,
    light text,
    fix_obs bigint,
    fix_obs_prop double precision,
    days_with_fix_week integer,
    nights_with_fix_week integer
);


--
-- Name: gps_data_regular2; Type: TABLE; Schema: ws_aveiro; Owner: -
--

CREATE TABLE ws_aveiro.gps_data_regular2 (
    acquisition_time timestamp with time zone,
    animals_id integer,
    geom public.geometry,
    geom32629 public.geometry,
    gps_data_animals_id integer,
    ndvi_modis_boku double precision,
    ndvi_modis_smoothed double precision,
    altitude_copernicus integer,
    slope_copernicus double precision,
    aspect_copernicus integer,
    corine_land_cover_2012_code integer,
    corine_land_cover_2012_vector_code integer,
    forest_density integer,
    utm_x integer,
    utm_y integer,
    latitude double precision,
    longitude double precision,
    study_areas_id integer,
    animals_original_name character varying(50),
    sex "char",
    year_birth integer,
    year_birth_exact boolean,
    steplength double precision,
    lag1_3h double precision,
    lag2_6h double precision,
    lag4_12h double precision,
    lag8_24h double precision,
    lag1_t interval,
    lag2_t interval,
    lag3_t interval,
    lag4_t interval,
    in_fire_spatial boolean,
    in_fire_temporal text
);


--
-- Name: gps_data_regular_wolf_final; Type: TABLE; Schema: ws_aveiro; Owner: -
--

CREATE TABLE ws_aveiro.gps_data_regular_wolf_final (
    acquisition_time timestamp with time zone,
    animals_id integer,
    geom public.geometry,
    geom32629 public.geometry,
    gps_data_animals_id integer,
    ndvi_modis_boku double precision,
    ndvi_modis_smoothed double precision,
    altitude_copernicus integer,
    slope_copernicus double precision,
    aspect_copernicus integer,
    corine_land_cover_2012_code integer,
    corine_land_cover_2012_vector_code integer,
    forest_density integer,
    utm_x integer,
    utm_y integer,
    latitude double precision,
    longitude double precision,
    study_areas_id integer,
    animals_original_name character varying(50),
    sex "char",
    year_birth integer,
    year_birth_exact boolean,
    steplength double precision,
    lag1_3h double precision,
    lag2_6h double precision,
    lag4_12h double precision,
    lag8_24h double precision,
    steplength_t interval,
    lag1_t interval,
    lag2_t interval,
    lag3_t interval,
    lag4_t interval,
    in_fire_spatial boolean,
    in_fire_temporal text,
    sunrise timestamp with time zone,
    sunset timestamp with time zone,
    aniyrwk text,
    light text,
    fix_obs bigint,
    fix_obs_prop double precision,
    days_with_fix_week integer,
    nights_with_fix_week integer,
    wolf_index double precision,
    wolf_year double precision
);


--
-- Name: gps_data_wolf; Type: TABLE; Schema: ws_aveiro; Owner: -
--

CREATE TABLE ws_aveiro.gps_data_wolf (
    "row.names" text,
    gps_data_animals_id integer,
    animals_id integer,
    acquisition_time timestamp with time zone,
    int4 integer,
    ndvi_modis_boku double precision,
    ndvi_modis_smoothed double precision,
    altitude_copernicus integer,
    slope_copernicus double precision,
    aspect_copernicus integer,
    corine_land_cover_2012_code integer,
    corine_land_cover_2012_vector_code integer,
    forest_density integer,
    utm_x integer,
    utm_y integer,
    latitude double precision,
    longitude double precision,
    geom text,
    study_areas_id integer,
    animals_original_name text,
    sex text,
    year_birth integer,
    year_birth_exact boolean,
    "Wolf_Year" double precision,
    "Wolf_Index" double precision,
    aniyrwk character varying
);


--
-- Name: gps_data_wolf_regular; Type: TABLE; Schema: ws_aveiro; Owner: -
--

CREATE TABLE ws_aveiro.gps_data_wolf_regular (
    acquisition_time timestamp with time zone,
    animals_id integer,
    geom public.geometry,
    geom32629 public.geometry,
    "row.names" text,
    gps_data_animals_id integer,
    int4 integer,
    ndvi_modis_boku double precision,
    ndvi_modis_smoothed double precision,
    altitude_copernicus integer,
    slope_copernicus double precision,
    aspect_copernicus integer,
    corine_land_cover_2012_code integer,
    corine_land_cover_2012_vector_code integer,
    forest_density integer,
    utm_x integer,
    utm_y integer,
    latitude double precision,
    longitude double precision,
    study_areas_id integer,
    animals_original_name text,
    sex text,
    year_birth integer,
    year_birth_exact boolean,
    "Wolf_Year" double precision,
    "Wolf_Index" double precision,
    aniyrwk character varying,
    steplength double precision,
    lag1_3h double precision,
    lag2_6h double precision,
    lag4_12h double precision,
    lag8_24h double precision,
    lag1_t interval,
    lag2_t interval,
    lag3_t interval,
    lag4_t interval,
    in_fire_spatial boolean,
    in_fire_temporal text
);


--
-- Name: home_ranges; Type: TABLE; Schema: ws_aveiro; Owner: -
--

CREATE TABLE ws_aveiro.home_ranges (
    aniyrwk text,
    animals_id integer,
    dist_hr_fire_border double precision,
    dist_hr_fire_centroid double precision,
    overlap_area_perc double precision,
    overlap_area_m double precision,
    area_m double precision,
    time_before_fire interval,
    time_before_fire_start interval,
    week_before_fire double precision,
    week_before_fire_start double precision,
    aniyrwk_loc_reference_time timestamp with time zone,
    start_loc timestamp with time zone,
    end_loc timestamp with time zone,
    minim_loc double precision,
    start_fire timestamp with time zone,
    end_fire timestamp with time zone
);


--
-- Name: homeranges_raw; Type: TABLE; Schema: ws_aveiro; Owner: -
--

CREATE TABLE ws_aveiro.homeranges_raw (
    name text,
    geometry public.geometry,
    aniyrwk text,
    est double precision
);


--
-- Name: view_gps_positions_aveiro; Type: VIEW; Schema: ws_aveiro; Owner: -
--

CREATE VIEW ws_aveiro.view_gps_positions_aveiro AS
 SELECT view_eurodeer_gps_positions.animals_id,
    view_eurodeer_gps_positions.study_areas_id,
    view_eurodeer_gps_positions.research_groups_id,
    view_eurodeer_gps_positions.animals_original_name,
    view_eurodeer_gps_positions.sex,
    view_eurodeer_gps_positions.age,
    view_eurodeer_gps_positions.gps_data_animals_id,
    view_eurodeer_gps_positions.gps_sensors_id,
    view_eurodeer_gps_positions.acquisition_time,
    view_eurodeer_gps_positions.x_original_reference,
    view_eurodeer_gps_positions.y_original_reference,
    view_eurodeer_gps_positions.srid_original_reference,
    view_eurodeer_gps_positions.latitude,
    view_eurodeer_gps_positions.longitude,
    view_eurodeer_gps_positions.altitude_gps,
    view_eurodeer_gps_positions.dop,
    view_eurodeer_gps_positions.sats,
    view_eurodeer_gps_positions.temperature_sensor,
    view_eurodeer_gps_positions.geom,
    view_eurodeer_gps_positions.gps_validity_code,
    view_eurodeer_gps_positions.corine_land_cover_2006_code,
    view_eurodeer_gps_positions.snow_modis,
    view_eurodeer_gps_positions.sun_angle,
    view_eurodeer_gps_positions.utm_srid,
    view_eurodeer_gps_positions.utm_x,
    view_eurodeer_gps_positions.utm_y,
    view_eurodeer_gps_positions.corine_land_cover_2000_code,
    view_eurodeer_gps_positions.corine_land_cover_1990_code,
    view_eurodeer_gps_positions.ndvi_modis_boku,
    view_eurodeer_gps_positions.ndvi_modis_smoothed,
    view_eurodeer_gps_positions.altitude_copernicus,
    view_eurodeer_gps_positions.slope_copernicus,
    view_eurodeer_gps_positions.aspect_copernicus,
    view_eurodeer_gps_positions.corine_land_cover_2012_code,
    view_eurodeer_gps_positions.corine_land_cover_2012_vector_code,
    view_eurodeer_gps_positions.forest_density
   FROM main.view_eurodeer_gps_positions
  WHERE (view_eurodeer_gps_positions.research_groups_id = 16)
  ORDER BY view_eurodeer_gps_positions.animals_id, view_eurodeer_gps_positions.acquisition_time;


--
-- Name: VIEW view_gps_positions_aveiro; Type: COMMENT; Schema: ws_aveiro; Owner: -
--

COMMENT ON VIEW ws_aveiro.view_gps_positions_aveiro IS 'Valid locations related to Aveiro research group with information on study area, sex and age.';


--
-- Name: view_traj; Type: VIEW; Schema: ws_aveiro; Owner: -
--

CREATE VIEW ws_aveiro.view_traj AS
 SELECT view_trajectories.animals_id,
    view_trajectories.name,
    view_trajectories.studies_id,
    view_trajectories.geom
   FROM analysis.view_trajectories
  WHERE (view_trajectories.studies_id = 30);


--
-- Name: view_example; Type: VIEW; Schema: ws_boku; Owner: -
--

CREATE VIEW ws_boku.view_example AS
 SELECT animals.animals_id,
    gps_data_animals.gps_data_animals_id,
    animals.animals_original_id
   FROM main.animals,
    main.gps_data_animals
  WHERE ((animals.animals_id = gps_data_animals.animals_id) AND (animals.animals_id = 1496));


--
-- Name: view_example2; Type: VIEW; Schema: ws_boku; Owner: -
--

CREATE VIEW ws_boku.view_example2 AS
 SELECT animals.animals_id,
    gps_data_animals.gps_data_animals_id,
    animals.animals_original_id,
    gps_data_animals.geom
   FROM main.animals,
    main.gps_data_animals
  WHERE ((animals.animals_id = gps_data_animals.animals_id) AND (animals.animals_id = 1496));


--
-- Name: view_gps_positions_boku; Type: VIEW; Schema: ws_boku; Owner: -
--

CREATE VIEW ws_boku.view_gps_positions_boku AS
 SELECT view_eurodeer_gps_positions.animals_id,
    view_eurodeer_gps_positions.study_areas_id,
    view_eurodeer_gps_positions.research_groups_id,
    view_eurodeer_gps_positions.animals_original_name,
    view_eurodeer_gps_positions.sex,
    view_eurodeer_gps_positions.age,
    view_eurodeer_gps_positions.gps_data_animals_id,
    view_eurodeer_gps_positions.gps_sensors_id,
    view_eurodeer_gps_positions.acquisition_time,
    view_eurodeer_gps_positions.x_original_reference,
    view_eurodeer_gps_positions.y_original_reference,
    view_eurodeer_gps_positions.srid_original_reference,
    view_eurodeer_gps_positions.latitude,
    view_eurodeer_gps_positions.longitude,
    view_eurodeer_gps_positions.altitude_gps,
    view_eurodeer_gps_positions.dop,
    view_eurodeer_gps_positions.sats,
    view_eurodeer_gps_positions.temperature_sensor,
    view_eurodeer_gps_positions.geom,
    view_eurodeer_gps_positions.gps_validity_code,
    view_eurodeer_gps_positions.corine_land_cover_2006_code,
    view_eurodeer_gps_positions.snow_modis,
    view_eurodeer_gps_positions.sun_angle,
    view_eurodeer_gps_positions.utm_srid,
    view_eurodeer_gps_positions.utm_x,
    view_eurodeer_gps_positions.utm_y,
    view_eurodeer_gps_positions.corine_land_cover_2000_code,
    view_eurodeer_gps_positions.corine_land_cover_1990_code,
    view_eurodeer_gps_positions.ndvi_modis_boku,
    view_eurodeer_gps_positions.ndvi_modis_smoothed,
    view_eurodeer_gps_positions.altitude_copernicus,
    view_eurodeer_gps_positions.slope_copernicus,
    view_eurodeer_gps_positions.aspect_copernicus,
    view_eurodeer_gps_positions.corine_land_cover_2012_code,
    view_eurodeer_gps_positions.corine_land_cover_2012_vector_code,
    view_eurodeer_gps_positions.forest_density
   FROM main.view_eurodeer_gps_positions
  WHERE (view_eurodeer_gps_positions.research_groups_id = 21)
  ORDER BY view_eurodeer_gps_positions.animals_id, view_eurodeer_gps_positions.acquisition_time;


--
-- Name: VIEW view_gps_positions_boku; Type: COMMENT; Schema: ws_boku; Owner: -
--

COMMENT ON VIEW ws_boku.view_gps_positions_boku IS 'Valid locations related to boku research group with information on study area, sex and age.';


--
-- Name: view_traj; Type: VIEW; Schema: ws_boku; Owner: -
--

CREATE VIEW ws_boku.view_traj AS
 SELECT gps_data_animals.animals_id,
    public.st_makeline(gps_data_animals.geom) AS st_makeline
   FROM main.gps_data_animals
  WHERE ((gps_data_animals.animals_id = 1) AND (gps_data_animals.gps_validity_code = 1))
  GROUP BY gps_data_animals.animals_id;


--
-- Name: activity13; Type: TABLE; Schema: ws_cefs; Owner: -
--

CREATE TABLE ws_cefs.activity13 (
    activity_data_animals_code01_id integer,
    animals_id integer,
    activity_sensors_id integer,
    act_1 double precision,
    act_2 double precision,
    act_3 double precision,
    acquisition_time timestamp without time zone,
    temperature_activity double precision,
    gps_positions_animals_id bigint,
    activity_sensor_mode_code integer,
    activity_validity_code integer,
    study_areas_id integer,
    animals_original_id character varying,
    animals_original_name character varying(50),
    sex "char",
    first_capture_date date,
    monitored_activity integer,
    monitored_gps integer,
    monitored_vhf integer,
    age_class_code_capture integer,
    notes character varying,
    insert_timestamp timestamp with time zone,
    update_timestamp timestamp with time zone,
    reintroduction integer,
    populations_id integer,
    year_birth integer,
    year_birth_exact boolean
);


--
-- Name: activity2; Type: TABLE; Schema: ws_cefs; Owner: -
--

CREATE TABLE ws_cefs.activity2 (
    activity_data_animals_code01_id integer,
    animals_id integer,
    activity_sensors_id integer,
    act_1 double precision,
    act_2 double precision,
    act_3 double precision,
    acquisition_time timestamp without time zone,
    temperature_activity double precision,
    gps_positions_animals_id bigint,
    activity_sensor_mode_code integer,
    activity_validity_code integer,
    study_areas_id integer,
    animals_original_id character varying,
    animals_original_name character varying(50),
    sex "char",
    first_capture_date date,
    monitored_activity integer,
    monitored_gps integer,
    monitored_vhf integer,
    age_class_code_capture integer,
    notes character varying,
    insert_timestamp timestamp with time zone,
    update_timestamp timestamp with time zone,
    reintroduction integer,
    populations_id integer,
    year_birth integer,
    year_birth_exact boolean
);


--
-- Name: barycenters; Type: TABLE; Schema: ws_cefs; Owner: -
--

CREATE TABLE ws_cefs.barycenters (
    barycenters_id integer NOT NULL,
    geom public.geometry(Point,4326),
    id_phase character varying(254),
    bary_x double precision,
    bary_y double precision,
    year integer,
    source character varying,
    geom_buffer public.geometry(Polygon,4326)
);


--
-- Name: barycenters_barycenters_id_seq; Type: SEQUENCE; Schema: ws_cefs; Owner: -
--

CREATE SEQUENCE ws_cefs.barycenters_barycenters_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: barycenters_barycenters_id_seq; Type: SEQUENCE OWNED BY; Schema: ws_cefs; Owner: -
--

ALTER SEQUENCE ws_cefs.barycenters_barycenters_id_seq OWNED BY ws_cefs.barycenters.barycenters_id;


--
-- Name: barycenters_gps_data_aurignac; Type: TABLE; Schema: ws_cefs; Owner: -
--

CREATE TABLE ws_cefs.barycenters_gps_data_aurignac (
    animals_id integer,
    geom public.geometry
);


--
-- Name: first_animal; Type: VIEW; Schema: ws_cefs; Owner: -
--

CREATE VIEW ws_cefs.first_animal AS
 SELECT gps_data_animals.gps_data_animals_id,
    gps_data_animals.animals_id,
    gps_data_animals.gps_sensors_id,
    gps_data_animals.acquisition_time,
    gps_data_animals.x_original_reference,
    gps_data_animals.y_original_reference,
    gps_data_animals.srid_original_reference,
    gps_data_animals.latitude,
    gps_data_animals.longitude,
    gps_data_animals.altitude_gps,
    gps_data_animals.dop,
    gps_data_animals.sats,
    gps_data_animals.temperature_sensor,
    gps_data_animals.geom,
    gps_data_animals.gps_validity_code,
    gps_data_animals.corine_land_cover_2006_code,
    gps_data_animals.snow_modis,
    gps_data_animals.sun_angle,
    gps_data_animals.utm_srid,
    gps_data_animals.utm_x,
    gps_data_animals.utm_y,
    gps_data_animals.insert_timestamp,
    gps_data_animals.update_timestamp,
    gps_data_animals.corine_land_cover_2000_code,
    gps_data_animals.corine_land_cover_1990_code,
    gps_data_animals.ndvi_modis_boku,
    gps_data_animals.ndvi_modis_smoothed,
    gps_data_animals.update_core_user,
    gps_data_animals.update_user,
    gps_data_animals.insert_user,
    gps_data_animals.update_core_timestamp,
    gps_data_animals.altitude_copernicus,
    gps_data_animals.slope_copernicus,
    gps_data_animals.aspect_copernicus,
    gps_data_animals.corine_land_cover_2012_code,
    gps_data_animals.corine_land_cover_2012_vector_code,
    gps_data_animals.forest_density
   FROM main.gps_data_animals
  WHERE (gps_data_animals.animals_id = 1049);


--
-- Name: poly; Type: VIEW; Schema: ws_cefs; Owner: -
--

CREATE VIEW ws_cefs.poly AS
 SELECT gps_positions_animals.animals_id,
    (date_part('month'::text, gps_positions_animals.acquisition_time))::integer AS month,
    public.st_convexhull(public.st_collect(gps_positions_animals.geom)) AS st_convexhull
   FROM main.gps_data_animals gps_positions_animals
  WHERE ((gps_positions_animals.gps_validity_code = 1) AND (gps_positions_animals.animals_id = 1))
  GROUP BY gps_positions_animals.animals_id, ((date_part('month'::text, gps_positions_animals.acquisition_time))::integer)
  ORDER BY ((date_part('month'::text, gps_positions_animals.acquisition_time))::integer);


--
-- Name: subareas_areas_oc; Type: TABLE; Schema: ws_cefs; Owner: -
--

CREATE TABLE ws_cefs.subareas_areas_oc (
    subareas_id integer,
    subarea_name character varying,
    study_areas_id integer,
    geomsub public.geometry(MultiPolygon,4326),
    study_name character varying(100),
    studygeom public.geometry(MultiPolygon,4326),
    newgeom public.geometry(MultiPolygon,4326)
);


--
-- Name: t_hfp_2009_subareas_wgs84; Type: TABLE; Schema: ws_cefs; Owner: -
--

CREATE TABLE ws_cefs.t_hfp_2009_subareas_wgs84 (
    id integer NOT NULL,
    geom public.geometry(MultiPolygon,4326),
    dn integer
);


--
-- Name: t_hfp_2009_subareas_wgs84_id_seq; Type: SEQUENCE; Schema: ws_cefs; Owner: -
--

CREATE SEQUENCE ws_cefs.t_hfp_2009_subareas_wgs84_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: t_hfp_2009_subareas_wgs84_id_seq; Type: SEQUENCE OWNED BY; Schema: ws_cefs; Owner: -
--

ALTER SEQUENCE ws_cefs.t_hfp_2009_subareas_wgs84_id_seq OWNED BY ws_cefs.t_hfp_2009_subareas_wgs84.id;


--
-- Name: t_intersect_areas_hfp_2009; Type: TABLE; Schema: ws_cefs; Owner: -
--

CREATE TABLE ws_cefs.t_intersect_areas_hfp_2009 (
    study_areas_id integer,
    study_name character varying(100),
    geom public.geometry,
    hfp_index integer
);


--
-- Name: t_intersect_subareas_hfp_2009; Type: TABLE; Schema: ws_cefs; Owner: -
--

CREATE TABLE ws_cefs.t_intersect_subareas_hfp_2009 (
    subareas_id integer,
    subarea_name character varying,
    study_areas_id integer,
    study_name character varying(100),
    geom public.geometry,
    hfp_index integer
);


--
-- Name: t_intersection_ani_points_subareas; Type: TABLE; Schema: ws_cefs; Owner: -
--

CREATE TABLE ws_cefs.t_intersection_ani_points_subareas (
    animals_id integer,
    geom public.geometry,
    subarea_name character varying,
    subareas_id integer,
    study_areas_id integer,
    acquisition_time timestamp with time zone
);


--
-- Name: TABLE t_intersection_ani_points_subareas; Type: COMMENT; Schema: ws_cefs; Owner: -
--

COMMENT ON TABLE ws_cefs.t_intersection_ani_points_subareas IS 'Table corresponding to the intersection of the GPS location of some animals with the subareas table';


--
-- Name: test_ndvi1; Type: VIEW; Schema: ws_cefs; Owner: -
--

CREATE VIEW ws_cefs.test_ndvi1 AS
 SELECT row_number() OVER () AS row_number,
    a.barycenters_id,
    a.id_phase,
    a.acquisition_date,
    (((a.x).val * (0.0048)::double precision) - (0.2)::double precision) AS ndvi,
    public.st_area(((a.x).geom)::public.geography) AS st_area,
    470 AS buffer
   FROM ( SELECT public.st_intersection(ndvi_modis_boku.rast, (public.st_buffer((barycenters.geom)::public.geography, (470)::double precision))::public.geometry) AS x,
            barycenters.barycenters_id,
            barycenters.id_phase,
            ndvi_modis_boku.acquisition_date
           FROM ws_cefs.barycenters,
            env_data_ts.ndvi_modis_boku
          WHERE (public.st_intersects(ndvi_modis_boku.rast, barycenters.geom_buffer) AND (ndvi_modis_boku.acquisition_date > (('15/2/'::text || barycenters.year))::date) AND (ndvi_modis_boku.acquisition_date < (('25/2/'::text || barycenters.year))::date) AND (barycenters.barycenters_id = 63))) a
  ORDER BY a.id_phase, a.acquisition_date;


--
-- Name: test_ndvi2; Type: VIEW; Schema: ws_cefs; Owner: -
--

CREATE VIEW ws_cefs.test_ndvi2 AS
 SELECT row_number() OVER () AS row_number,
    a.barycenters_id,
    a.id_phase,
    a.acquisition_date,
    (((a.x).val * (0.0048)::double precision) - (0.2)::double precision) AS ndvi,
    (a.x).geom AS geom,
    470 AS buffer
   FROM ( SELECT public.st_intersection(ndvi_modis_boku.rast, (public.st_buffer((barycenters.geom)::public.geography, (470)::double precision))::public.geometry) AS x,
            barycenters.barycenters_id,
            barycenters.id_phase,
            ndvi_modis_boku.acquisition_date
           FROM ws_cefs.barycenters,
            env_data_ts.ndvi_modis_boku
          WHERE (public.st_intersects(ndvi_modis_boku.rast, barycenters.geom_buffer) AND (ndvi_modis_boku.acquisition_date > (('15/2/'::text || barycenters.year))::date) AND (ndvi_modis_boku.acquisition_date < (('25/2/'::text || barycenters.year))::date) AND (barycenters.barycenters_id = 2))) a
  ORDER BY a.id_phase, a.acquisition_date;


--
-- Name: view_nb_aniyear_cefs; Type: VIEW; Schema: ws_cefs; Owner: -
--

CREATE VIEW ws_cefs.view_nb_aniyear_cefs AS
 SELECT date_part('year'::text, a.first_capture_date) AS year,
    count(date_part('year'::text, a.first_capture_date)) AS count
   FROM (( SELECT animals.study_areas_id,
            animals_captures.capture_timestamp AS first_capture_date,
            animals.gps_data
           FROM main.animals_captures,
            main.animals
          WHERE (animals_captures.first_capture AND (animals.animals_id = animals_captures.animals_id))) a
     JOIN main.study_areas ON ((a.study_areas_id = study_areas.study_areas_id)))
  WHERE ((a.gps_data = true) AND ((study_areas.short_name)::text = 'Aurignac'::text))
  GROUP BY (date_part('year'::text, a.first_capture_date))
  ORDER BY (date_part('year'::text, a.first_capture_date));


--
-- Name: view_nbadults; Type: VIEW; Schema: ws_cefs; Owner: -
--

CREATE VIEW ws_cefs.view_nbadults AS
 SELECT animals.study_areas_id,
    study_areas.study_name,
    animals.sex,
    count(animals.study_areas_id) AS count
   FROM ((main.animals
     JOIN main.study_areas ON ((animals.study_areas_id = study_areas.study_areas_id)))
     JOIN main.animals_captures ON ((animals.animals_id = animals_captures.animals_id)))
  WHERE ((animals.gps_data = true) AND (animals_captures.age_class_code > 1) AND animals_captures.first_capture)
  GROUP BY animals.sex, animals.study_areas_id, study_areas.study_name
  ORDER BY animals.study_areas_id;


--
-- Name: view_nbfawns; Type: VIEW; Schema: ws_cefs; Owner: -
--

CREATE VIEW ws_cefs.view_nbfawns AS
 SELECT animals.study_areas_id,
    study_areas.study_name,
    count(animals.study_areas_id) AS count
   FROM ((main.animals
     JOIN main.study_areas ON ((animals.study_areas_id = study_areas.study_areas_id)))
     JOIN main.animals_captures ON ((animals.animals_id = animals_captures.animals_id)))
  WHERE ((animals.gps_data = true) AND (animals_captures.age_class_code = 1) AND animals_captures.first_capture)
  GROUP BY animals.study_areas_id, study_areas.study_name
  ORDER BY animals.study_areas_id;


--
-- Name: view_test1; Type: VIEW; Schema: ws_cefs; Owner: -
--

CREATE VIEW ws_cefs.view_test1 AS
 SELECT gps_data_animals.animals_id,
    public.st_makeline(gps_data_animals.geom) AS st_makeline
   FROM main.gps_data_animals
  WHERE ((gps_data_animals.gps_validity_code = 1) AND (gps_data_animals.animals_id = 1))
  GROUP BY gps_data_animals.animals_id;


--
-- Name: view_test2; Type: VIEW; Schema: ws_cefs; Owner: -
--

CREATE VIEW ws_cefs.view_test2 AS
 SELECT table_temp.animals_id,
    public.st_makeline(table_temp.geom) AS st_makeline
   FROM ( SELECT gps_data_animals.animals_id,
            gps_data_animals.acquisition_time,
            gps_data_animals.geom
           FROM main.gps_data_animals
          WHERE ((gps_data_animals.gps_validity_code = 1) AND (gps_data_animals.animals_id = 1))
          ORDER BY gps_data_animals.acquisition_time) table_temp
  GROUP BY table_temp.animals_id;


--
-- Name: view_test3; Type: VIEW; Schema: ws_cefs; Owner: -
--

CREATE VIEW ws_cefs.view_test3 AS
 SELECT (date_part('month'::text, table_temp.acquisition_time))::integer AS month,
    (public.st_makeline(table_temp.geom))::public.geometry(LineString,4326) AS st_makeline
   FROM ( SELECT gps_data_animals.animals_id,
            gps_data_animals.acquisition_time,
            gps_data_animals.geom
           FROM main.gps_data_animals
          WHERE ((gps_data_animals.gps_validity_code = 1) AND (gps_data_animals.animals_id = 1))
          ORDER BY gps_data_animals.acquisition_time) table_temp
  GROUP BY table_temp.animals_id, ((date_part('month'::text, table_temp.acquisition_time))::integer)
  ORDER BY ((date_part('month'::text, table_temp.acquisition_time))::integer);


--
-- Name: aspromonte_contour_25k; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.aspromonte_contour_25k (
    gid integer NOT NULL,
    id numeric(10,0),
    contour double precision,
    geom public.geometry(MultiLineString,4326)
);


--
-- Name: TABLE aspromonte_contour_25k; Type: COMMENT; Schema: ws_dream; Owner: -
--

COMMENT ON TABLE ws_dream.aspromonte_contour_25k IS 'DEM locally available for aspromonte.';


--
-- Name:  aspromonte_contour_25k_gid_seq; Type: SEQUENCE; Schema: ws_dream; Owner: -
--

CREATE SEQUENCE ws_dream." aspromonte_contour_25k_gid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name:  aspromonte_contour_25k_gid_seq; Type: SEQUENCE OWNED BY; Schema: ws_dream; Owner: -
--

ALTER SEQUENCE ws_dream." aspromonte_contour_25k_gid_seq" OWNED BY ws_dream.aspromonte_contour_25k.gid;


--
-- Name: RSF_to_match_SSF_0m_for_6m; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream."RSF_to_match_SSF_0m_for_6m" (
    animals_id integer,
    val integer,
    id_grid double precision,
    elevation double precision,
    aspect_class_new integer,
    slope_class integer,
    physiography_new integer,
    canopy_totalperc double precision,
    tree_canopy_conifer_absperc double precision,
    tree_canopy_broadleaved_absperc double precision,
    canopy_preval character varying,
    tree_canopy_height_m_corr double precision,
    tree_canopy_tot_5m double precision,
    tree_canopy_tot_15m double precision,
    tree_canopy_tot_25m double precision,
    tree_canopy_tot_absent double precision,
    tree_canopy_tot_0dot5mleaves double precision,
    tree_canopy_tot_1dot5mleaves double precision,
    tree_canopy_tot_2dot0mleaves double precision,
    tree_canopy_height_leaves_m double precision,
    tree_management integer,
    tree_sprouts_new integer,
    tree_sprouts_broadl_perc double precision,
    tree_sprouts_conif_perc double precision,
    shrub_coverperc double precision,
    shrub_tot_absent double precision,
    shrub_tot_0dot5m double precision,
    shrub_tot_1dot5m double precision,
    shrub_tot_2dot0m double precision,
    shrub_height_m double precision,
    shrub_fernsperc double precision,
    herb_coverperc double precision,
    herb_gpperc_abs double precision,
    herb_gnperc_abs double precision,
    herb_leperc_abs double precision,
    herb_alperc_abs double precision,
    herb_svperc_abs double precision,
    visibility_10mperc double precision,
    visibility_25mperc double precision,
    clc4_perc double precision,
    clc4_description character varying,
    clc4_dominant character varying,
    clc4_code_macro character varying,
    altitude_srtm numeric,
    aspect_srtm numeric,
    altitude_aster numeric,
    slope_aster numeric,
    aspect_aster numeric,
    aspect_srtm_bins character varying,
    slope_srtm numeric
);


--
-- Name: RSF_to_match_SSF_3m_for_6m; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream."RSF_to_match_SSF_3m_for_6m" (
    animals_id integer,
    val integer,
    id_grid double precision,
    elevation double precision,
    aspect_class_new integer,
    slope_class integer,
    physiography_new integer,
    canopy_totalperc double precision,
    tree_canopy_conifer_absperc double precision,
    tree_canopy_broadleaved_absperc double precision,
    canopy_preval character varying,
    tree_canopy_height_m_corr double precision,
    tree_canopy_tot_5m double precision,
    tree_canopy_tot_15m double precision,
    tree_canopy_tot_25m double precision,
    tree_canopy_tot_absent double precision,
    tree_canopy_tot_0dot5mleaves double precision,
    tree_canopy_tot_1dot5mleaves double precision,
    tree_canopy_tot_2dot0mleaves double precision,
    tree_canopy_height_leaves_m double precision,
    tree_management integer,
    tree_sprouts_new integer,
    tree_sprouts_broadl_perc double precision,
    tree_sprouts_conif_perc double precision,
    shrub_coverperc double precision,
    shrub_tot_absent double precision,
    shrub_tot_0dot5m double precision,
    shrub_tot_1dot5m double precision,
    shrub_tot_2dot0m double precision,
    shrub_height_m double precision,
    shrub_fernsperc double precision,
    herb_coverperc double precision,
    herb_gpperc_abs double precision,
    herb_gnperc_abs double precision,
    herb_leperc_abs double precision,
    herb_alperc_abs double precision,
    herb_svperc_abs double precision,
    visibility_10mperc double precision,
    visibility_25mperc double precision,
    clc4_perc double precision,
    clc4_description character varying,
    clc4_dominant character varying,
    clc4_code_macro character varying,
    altitude_srtm numeric,
    aspect_srtm numeric,
    altitude_aster numeric,
    slope_aster numeric,
    aspect_aster numeric,
    aspect_srtm_bins character varying,
    slope_srtm numeric
);


--
-- Name: RSF_to_match_SSF_6m_for_6m; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream."RSF_to_match_SSF_6m_for_6m" (
    animals_id integer,
    val integer,
    id_grid double precision,
    elevation double precision,
    aspect_class_new integer,
    slope_class integer,
    physiography_new integer,
    canopy_totalperc double precision,
    tree_canopy_conifer_absperc double precision,
    tree_canopy_broadleaved_absperc double precision,
    canopy_preval character varying,
    tree_canopy_height_m_corr double precision,
    tree_canopy_tot_5m double precision,
    tree_canopy_tot_15m double precision,
    tree_canopy_tot_25m double precision,
    tree_canopy_tot_absent double precision,
    tree_canopy_tot_0dot5mleaves double precision,
    tree_canopy_tot_1dot5mleaves double precision,
    tree_canopy_tot_2dot0mleaves double precision,
    tree_canopy_height_leaves_m double precision,
    tree_management integer,
    tree_sprouts_new integer,
    tree_sprouts_broadl_perc double precision,
    tree_sprouts_conif_perc double precision,
    shrub_coverperc double precision,
    shrub_tot_absent double precision,
    shrub_tot_0dot5m double precision,
    shrub_tot_1dot5m double precision,
    shrub_tot_2dot0m double precision,
    shrub_height_m double precision,
    shrub_fernsperc double precision,
    herb_coverperc double precision,
    herb_gpperc_abs double precision,
    herb_gnperc_abs double precision,
    herb_leperc_abs double precision,
    herb_alperc_abs double precision,
    herb_svperc_abs double precision,
    visibility_10mperc double precision,
    visibility_25mperc double precision,
    clc4_perc double precision,
    clc4_description character varying,
    clc4_dominant character varying,
    clc4_code_macro character varying,
    altitude_srtm numeric,
    aspect_srtm numeric,
    altitude_aster numeric,
    slope_aster numeric,
    aspect_aster numeric,
    aspect_srtm_bins character varying,
    slope_srtm numeric
);


--
-- Name: all_animals; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.all_animals (
    animals_id integer,
    gps_data_animals_id integer,
    acquisition_time timestamp with time zone,
    animals_original_name character varying(50),
    geom public.geometry(Point,4326),
    first_sample integer,
    gps_validity_code integer,
    corine_land_cover_aspromonte_code character varying,
    corine_land_cover_2006_code integer,
    clc_l4_code character varying,
    ndvi_modis real,
    ndvi_vegetation real,
    fapar_vegetation real,
    altitude_srtm integer,
    slope_srtm double precision,
    aspect_srtm integer,
    altitude_aster integer,
    slope_aster double precision,
    aspect_aster integer,
    step_duration interval,
    step_duration_hours numeric,
    x numeric,
    y numeric
);


--
-- Name: corine_land_cover_aspromonte; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.corine_land_cover_aspromonte (
    gid integer NOT NULL,
    fid_corine integer,
    clc_l4_code character varying,
    description character varying(65),
    comune character varying(254),
    categoria character varying(50),
    hectares numeric,
    description_general character varying(254),
    accorpamen character varying(254),
    macroaree numeric,
    cingh character varying(254),
    lepre character varying(254),
    fagiano character varying(254),
    starna character varying(254),
    geom public.geometry(MultiPolygon,4326)
);


--
-- Name: TABLE corine_land_cover_aspromonte; Type: COMMENT; Schema: ws_dream; Owner: -
--

COMMENT ON TABLE ws_dream.corine_land_cover_aspromonte IS 'Corine IV level all study area.';


--
-- Name: aspromonte_corine_gid_seq; Type: SEQUENCE; Schema: ws_dream; Owner: -
--

CREATE SEQUENCE ws_dream.aspromonte_corine_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: aspromonte_corine_gid_seq; Type: SEQUENCE OWNED BY; Schema: ws_dream; Owner: -
--

ALTER SEQUENCE ws_dream.aspromonte_corine_gid_seq OWNED BY ws_dream.corine_land_cover_aspromonte.gid;


--
-- Name: aspromonte_land_cover_parco; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.aspromonte_land_cover_parco (
    gid integer NOT NULL,
    dgc_codice numeric(10,0),
    count double precision,
    ave_area double precision,
    sum_area double precision,
    min_area double precision,
    max_area double precision,
    stddev_are double precision,
    var_area double precision,
    geom public.geometry(MultiPolygon,4326)
);


--
-- Name: TABLE aspromonte_land_cover_parco; Type: COMMENT; Schema: ws_dream; Owner: -
--

COMMENT ON TABLE ws_dream.aspromonte_land_cover_parco IS 'Detailed landcover only present within the PNAsp contours.';


--
-- Name: aspromonte_land_cover_parco_gid_seq; Type: SEQUENCE; Schema: ws_dream; Owner: -
--

CREATE SEQUENCE ws_dream.aspromonte_land_cover_parco_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: aspromonte_land_cover_parco_gid_seq; Type: SEQUENCE OWNED BY; Schema: ws_dream; Owner: -
--

ALTER SEQUENCE ws_dream.aspromonte_land_cover_parco_gid_seq OWNED BY ws_dream.aspromonte_land_cover_parco.gid;


--
-- Name: aspromonte_roads; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.aspromonte_roads (
    gid integer NOT NULL,
    igds_class integer,
    igds_style integer,
    weight integer,
    igds_color integer,
    "group" integer,
    igds_level integer,
    geom public.geometry(MultiLineString,4326)
);


--
-- Name: aspromonte_roads_gid_seq; Type: SEQUENCE; Schema: ws_dream; Owner: -
--

CREATE SEQUENCE ws_dream.aspromonte_roads_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: aspromonte_roads_gid_seq; Type: SEQUENCE OWNED BY; Schema: ws_dream; Owner: -
--

ALTER SEQUENCE ws_dream.aspromonte_roads_gid_seq OWNED BY ws_dream.aspromonte_roads.gid;


--
-- Name: available_ssf_input; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.available_ssf_input (
    id bigint,
    animals_id integer,
    acquisition_time timestamp without time zone,
    acquisition_time_t_n timestamp without time zone,
    acquisition_time_t_p timestamp without time zone,
    deltat_t_n integer,
    deltat_t_p integer,
    deltat_start integer,
    dist_t_n integer,
    dist_start integer,
    speed_mh_t_n numeric(8,2),
    abs_angle_t_n numeric(7,5),
    rel_angle_t_np numeric(7,5),
    progressive_rel integer,
    monthx integer,
    yearx integer,
    season integer,
    longitude double precision,
    latitude double precision,
    geom public.geometry(Point,4326),
    gps_data_animals_id integer,
    time_window numeric
);


--
-- Name: comuni_calabria; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.comuni_calabria (
    gid integer NOT NULL,
    dgc_codice numeric(10,0),
    area double precision,
    perimeter double precision,
    com_cal_ double precision,
    com_cal_id double precision,
    poly_ double precision,
    subclass character varying(13),
    subclass_ double precision,
    rings_ok integer,
    rings_nok integer,
    comuni_id double precision,
    cod_reg double precision,
    cod_pro double precision,
    provincia character varying(9),
    cod_com double precision,
    cod_istat integer,
    istat double precision,
    comune character varying(24),
    nat integer,
    sau double precision,
    c_a_p_ character varying(8),
    regione character varying(32),
    n_incend double precision,
    ceda smallint,
    prog smallint,
    geom public.geometry(MultiPolygon,4326)
);


--
-- Name: comuni_calabria_gid_seq; Type: SEQUENCE; Schema: ws_dream; Owner: -
--

CREATE SEQUENCE ws_dream.comuni_calabria_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: comuni_calabria_gid_seq; Type: SEQUENCE OWNED BY; Schema: ws_dream; Owner: -
--

ALTER SEQUENCE ws_dream.comuni_calabria_gid_seq OWNED BY ws_dream.comuni_calabria.gid;


--
-- Name: corine_land_cover_aspromonte_legend; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.corine_land_cover_aspromonte_legend (
    clc_l4_code character varying NOT NULL,
    description character varying(65),
    description_general character varying(254)
);


--
-- Name: geom_parameters_ssf_12m; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.geom_parameters_ssf_12m (
    id bigint NOT NULL,
    animals_id integer,
    acquisition_time timestamp without time zone,
    acquisition_time_t_n timestamp without time zone,
    acquisition_time_t_p timestamp without time zone,
    deltat_t_n integer,
    deltat_t_p integer,
    deltat_start integer,
    dist_t_n integer,
    dist_start integer,
    speed_mh_t_n numeric(8,2),
    abs_angle_t_n numeric(7,5),
    rel_angle_t_np numeric(7,5),
    progressive_rel integer,
    monthx integer,
    yearx integer,
    season integer,
    longitude double precision,
    latitude double precision,
    geom public.geometry(Point,4326),
    gps_data_animals_id integer
);


--
-- Name: gps_available; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.gps_available (
    gps_data_animals_id integer,
    rel_angle_avail double precision,
    dist_avail integer,
    other_month integer,
    gps_available_id integer NOT NULL,
    abs_angle_p double precision,
    geom public.geometry(Point,4326),
    geom_avail public.geometry(Point,4326),
    abs_angle_avail double precision,
    corine_land_cover_2006_code integer,
    clc_l4_code character varying,
    ndvi_modis real,
    ndvi_vegetation real,
    fapar_vegetation real,
    altitude_srtm integer,
    slope_srtm double precision,
    aspect_srtm integer,
    altitude_aster integer,
    slope_aster double precision,
    aspect_aster integer,
    gps_data_animals_id_next integer,
    acquisition_time timestamp with time zone
);


--
-- Name: gps_available_gps_available_id_seq; Type: SEQUENCE; Schema: ws_dream; Owner: -
--

CREATE SEQUENCE ws_dream.gps_available_gps_available_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: gps_available_gps_available_id_seq; Type: SEQUENCE OWNED BY; Schema: ws_dream; Owner: -
--

ALTER SEQUENCE ws_dream.gps_available_gps_available_id_seq OWNED BY ws_dream.gps_available.gps_available_id;


--
-- Name: gps_available_ssf; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.gps_available_ssf (
    gps_data_animals_id integer,
    rel_angle_avail double precision,
    dist_avail integer,
    other_month integer,
    gps_available_id integer,
    abs_angle_p double precision,
    geom public.geometry(Point,4326),
    geom_avail public.geometry(Point,4326),
    abs_angle_avail double precision,
    corine_land_cover_2006_code integer,
    clc_l4_code character varying,
    ndvi_modis real,
    ndvi_vegetation real,
    fapar_vegetation real,
    altitude_srtm integer,
    slope_srtm double precision,
    aspect_srtm integer,
    altitude_aster integer,
    slope_aster double precision,
    aspect_aster integer,
    gps_data_animals_id_next integer,
    acquisition_time timestamp with time zone,
    clc_l4_code_macro character varying,
    aspect_srtm_bins character varying,
    x numeric,
    y numeric
);


--
-- Name: gps_available_ssf_individual_overall; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.gps_available_ssf_individual_overall (
    used_id integer,
    available_id integer,
    key integer NOT NULL,
    animals_id character varying,
    acquisition_time character varying,
    available_step_length numeric,
    available_turning_angle numeric,
    geom public.geometry(Point,4326),
    used_abs_angle numeric,
    id_angle_departure integer,
    angle_departure numeric,
    absolute_angle_available_computation numeric,
    id_geom_departure integer,
    geom_departure public.geometry(Point,4326),
    geom_available public.geometry(Point,4326),
    x_used numeric,
    y_used numeric,
    x_available numeric,
    y_available numeric,
    time_window numeric,
    slope_aster numeric,
    slope_srtm numeric,
    aspect_srtm numeric,
    clc_l4_code character varying,
    clc_l4_code_macro character varying,
    aspect_srtm_bins character varying,
    ndvi_modis_boku numeric
);


--
-- Name: gps_available_ssf_individual_overall_10m; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.gps_available_ssf_individual_overall_10m (
    used_id integer,
    available_id integer,
    key integer NOT NULL,
    animals_id character varying,
    acquisition_time character varying,
    available_step_length numeric,
    available_turning_angle numeric,
    geom public.geometry(Point,4326),
    used_abs_angle numeric,
    id_angle_departure integer,
    angle_departure numeric,
    absolute_angle_available_computation numeric,
    id_geom_departure integer,
    geom_departure public.geometry(Point,4326),
    geom_available public.geometry(Point,4326),
    x_used numeric,
    y_used numeric,
    x_available numeric,
    y_available numeric,
    time_window numeric,
    slope_aster numeric,
    slope_srtm numeric,
    aspect_srtm numeric,
    clc_l4_code character varying,
    clc_l4_code_macro character varying,
    aspect_srtm_bins character varying,
    ndvi_modis_boku numeric
);


--
-- Name: gps_available_ssf_individual_overall_10m_key_seq; Type: SEQUENCE; Schema: ws_dream; Owner: -
--

CREATE SEQUENCE ws_dream.gps_available_ssf_individual_overall_10m_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: gps_available_ssf_individual_overall_10m_key_seq; Type: SEQUENCE OWNED BY; Schema: ws_dream; Owner: -
--

ALTER SEQUENCE ws_dream.gps_available_ssf_individual_overall_10m_key_seq OWNED BY ws_dream.gps_available_ssf_individual_overall_10m.key;


--
-- Name: gps_available_ssf_individual_overall_50m; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.gps_available_ssf_individual_overall_50m (
    used_id integer,
    available_id integer,
    key integer NOT NULL,
    animals_id character varying,
    acquisition_time character varying,
    available_step_length numeric,
    available_turning_angle numeric,
    geom public.geometry(Point,4326),
    used_abs_angle numeric,
    id_angle_departure integer,
    angle_departure numeric,
    absolute_angle_available_computation numeric,
    id_geom_departure integer,
    geom_departure public.geometry(Point,4326),
    geom_available public.geometry(Point,4326),
    x_used numeric,
    y_used numeric,
    x_available numeric,
    y_available numeric,
    slope_aster numeric,
    slope_srtm numeric,
    aspect_srtm numeric,
    clc_l4_code character varying,
    clc_l4_code_macro character varying,
    aspect_srtm_bins character varying,
    ndvi_modis_boku numeric,
    time_window numeric
);


--
-- Name: gps_available_ssf_individual_overall_50m_key_seq; Type: SEQUENCE; Schema: ws_dream; Owner: -
--

CREATE SEQUENCE ws_dream.gps_available_ssf_individual_overall_50m_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: gps_available_ssf_individual_overall_50m_key_seq; Type: SEQUENCE OWNED BY; Schema: ws_dream; Owner: -
--

ALTER SEQUENCE ws_dream.gps_available_ssf_individual_overall_50m_key_seq OWNED BY ws_dream.gps_available_ssf_individual_overall_50m.key;


--
-- Name: gps_available_ssf_individual_overall_key_seq; Type: SEQUENCE; Schema: ws_dream; Owner: -
--

CREATE SEQUENCE ws_dream.gps_available_ssf_individual_overall_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: gps_available_ssf_individual_overall_key_seq; Type: SEQUENCE OWNED BY; Schema: ws_dream; Owner: -
--

ALTER SEQUENCE ws_dream.gps_available_ssf_individual_overall_key_seq OWNED BY ws_dream.gps_available_ssf_individual_overall.key;


--
-- Name: gps_available_ssf_individual_overall_truncated_10m; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.gps_available_ssf_individual_overall_truncated_10m (
    used_id integer,
    available_id integer,
    key integer NOT NULL,
    animals_id character varying,
    acquisition_time character varying,
    available_step_length numeric,
    available_turning_angle numeric,
    geom public.geometry(Point,4326),
    used_abs_angle numeric,
    id_angle_departure integer,
    angle_departure numeric,
    absolute_angle_available_computation numeric,
    id_geom_departure integer,
    geom_departure public.geometry(Point,4326),
    geom_available public.geometry(Point,4326),
    x_used numeric,
    y_used numeric,
    x_available numeric,
    y_available numeric,
    time_window numeric,
    slope_aster numeric,
    slope_srtm numeric,
    aspect_srtm numeric,
    clc_l4_code character varying,
    clc_l4_code_macro character varying,
    aspect_srtm_bins character varying,
    ndvi_modis_boku numeric
);


--
-- Name: gps_available_ssf_individual_overall_truncated_10m_key_seq; Type: SEQUENCE; Schema: ws_dream; Owner: -
--

CREATE SEQUENCE ws_dream.gps_available_ssf_individual_overall_truncated_10m_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: gps_available_ssf_individual_overall_truncated_10m_key_seq; Type: SEQUENCE OWNED BY; Schema: ws_dream; Owner: -
--

ALTER SEQUENCE ws_dream.gps_available_ssf_individual_overall_truncated_10m_key_seq OWNED BY ws_dream.gps_available_ssf_individual_overall_truncated_10m.key;


--
-- Name: gps_available_ssf_individual_window; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.gps_available_ssf_individual_window (
    used_id integer,
    available_id integer,
    key integer NOT NULL,
    animals_id character varying,
    acquisition_time character varying,
    available_step_length numeric,
    available_turning_angle numeric,
    geom public.geometry(Point,4326),
    used_abs_angle numeric,
    id_angle_departure integer,
    angle_departure numeric,
    absolute_angle_available_computation numeric,
    id_geom_departure integer,
    geom_departure public.geometry(Point,4326),
    geom_available public.geometry(Point,4326),
    x_used numeric,
    y_used numeric,
    x_available numeric,
    y_available numeric,
    time_window numeric,
    slope_aster numeric,
    slope_srtm numeric,
    aspect_srtm numeric,
    clc_l4_code character varying,
    clc_l4_code_macro character varying,
    aspect_srtm_bins character varying,
    ndvi_modis_boku numeric
);


--
-- Name: gps_available_ssf_individual_window_10m; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.gps_available_ssf_individual_window_10m (
    used_id integer,
    available_id integer,
    key integer NOT NULL,
    animals_id character varying,
    acquisition_time character varying,
    available_step_length numeric,
    available_turning_angle numeric,
    geom public.geometry(Point,4326),
    used_abs_angle numeric,
    id_angle_departure integer,
    angle_departure numeric,
    absolute_angle_available_computation numeric,
    id_geom_departure integer,
    geom_departure public.geometry(Point,4326),
    geom_available public.geometry(Point,4326),
    x_used numeric,
    y_used numeric,
    x_available numeric,
    y_available numeric,
    time_window numeric,
    slope_aster numeric,
    slope_srtm numeric,
    aspect_srtm numeric,
    clc_l4_code character varying,
    clc_l4_code_macro character varying,
    aspect_srtm_bins character varying,
    ndvi_modis_boku numeric
);


--
-- Name: gps_available_ssf_individual_window_10m_key_seq; Type: SEQUENCE; Schema: ws_dream; Owner: -
--

CREATE SEQUENCE ws_dream.gps_available_ssf_individual_window_10m_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: gps_available_ssf_individual_window_10m_key_seq; Type: SEQUENCE OWNED BY; Schema: ws_dream; Owner: -
--

ALTER SEQUENCE ws_dream.gps_available_ssf_individual_window_10m_key_seq OWNED BY ws_dream.gps_available_ssf_individual_window_10m.key;


--
-- Name: gps_available_ssf_individual_window_50m; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.gps_available_ssf_individual_window_50m (
    used_id integer,
    available_id integer,
    key integer NOT NULL,
    animals_id character varying,
    acquisition_time character varying,
    available_step_length numeric,
    available_turning_angle numeric,
    geom public.geometry(Point,4326),
    used_abs_angle numeric,
    id_angle_departure integer,
    angle_departure numeric,
    absolute_angle_available_computation numeric,
    id_geom_departure integer,
    geom_departure public.geometry(Point,4326),
    geom_available public.geometry(Point,4326),
    x_used numeric,
    y_used numeric,
    x_available numeric,
    y_available numeric,
    time_window numeric,
    slope_aster numeric,
    slope_srtm numeric,
    aspect_srtm numeric,
    clc_l4_code character varying,
    clc_l4_code_macro character varying,
    aspect_srtm_bins character varying,
    ndvi_modis_boku numeric
);


--
-- Name: gps_available_ssf_individual_window_50m_key_seq; Type: SEQUENCE; Schema: ws_dream; Owner: -
--

CREATE SEQUENCE ws_dream.gps_available_ssf_individual_window_50m_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: gps_available_ssf_individual_window_50m_key_seq; Type: SEQUENCE OWNED BY; Schema: ws_dream; Owner: -
--

ALTER SEQUENCE ws_dream.gps_available_ssf_individual_window_50m_key_seq OWNED BY ws_dream.gps_available_ssf_individual_window_50m.key;


--
-- Name: gps_available_ssf_individual_window_key_seq; Type: SEQUENCE; Schema: ws_dream; Owner: -
--

CREATE SEQUENCE ws_dream.gps_available_ssf_individual_window_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: gps_available_ssf_individual_window_key_seq; Type: SEQUENCE OWNED BY; Schema: ws_dream; Owner: -
--

ALTER SEQUENCE ws_dream.gps_available_ssf_individual_window_key_seq OWNED BY ws_dream.gps_available_ssf_individual_window.key;


--
-- Name: gps_available_ssf_individual_window_real_truncated_10m; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.gps_available_ssf_individual_window_real_truncated_10m (
    used_id integer,
    available_id integer,
    key integer NOT NULL,
    animals_id character varying,
    acquisition_time character varying,
    available_step_length numeric,
    available_turning_angle numeric,
    geom public.geometry(Point,4326),
    used_abs_angle numeric,
    id_angle_departure integer,
    angle_departure numeric,
    absolute_angle_available_computation numeric,
    id_geom_departure integer,
    geom_departure public.geometry(Point,4326),
    geom_available public.geometry(Point,4326),
    x_used numeric,
    y_used numeric,
    x_available numeric,
    y_available numeric,
    time_window numeric,
    slope_aster numeric,
    slope_srtm numeric,
    aspect_srtm numeric,
    clc_l4_code character varying,
    clc_l4_code_macro character varying,
    aspect_srtm_bins character varying,
    ndvi_modis_boku numeric
);


--
-- Name: gps_available_ssf_individual_window_real_truncated_10m_key_seq; Type: SEQUENCE; Schema: ws_dream; Owner: -
--

CREATE SEQUENCE ws_dream.gps_available_ssf_individual_window_real_truncated_10m_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: gps_available_ssf_individual_window_real_truncated_10m_key_seq; Type: SEQUENCE OWNED BY; Schema: ws_dream; Owner: -
--

ALTER SEQUENCE ws_dream.gps_available_ssf_individual_window_real_truncated_10m_key_seq OWNED BY ws_dream.gps_available_ssf_individual_window_real_truncated_10m.key;


--
-- Name: gps_available_ssf_no_time_constraint; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.gps_available_ssf_no_time_constraint (
    used_id integer,
    available_id integer,
    available_step_length numeric,
    available_turning_angle numeric,
    geom public.geometry(Point,4326),
    used_abs_angle numeric,
    geom_available public.geometry(Point,4326),
    absolute_angle_available_computation numeric,
    x_used numeric,
    y_used numeric,
    x_available numeric,
    y_available numeric,
    acquisition_time character varying
);


--
-- Name: gps_available_ssf_overall; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.gps_available_ssf_overall (
    used_id integer,
    available_id integer
);


--
-- Name: gps_available_ssf_overall_all_animals; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.gps_available_ssf_overall_all_animals (
    used_id integer,
    available_id integer,
    key integer NOT NULL,
    animals_id character varying,
    acquisition_time character varying,
    available_step_length numeric,
    available_turning_angle numeric,
    geom public.geometry(Point,4326),
    used_abs_angle numeric,
    id_angle_departure integer,
    angle_departure numeric,
    absolute_angle_available_computation numeric,
    id_geom_departure integer,
    geom_departure public.geometry(Point,4326),
    geom_available public.geometry(Point,4326),
    x_used numeric,
    y_used numeric,
    x_available numeric,
    y_available numeric,
    time_window numeric,
    slope_aster numeric,
    slope_srtm numeric,
    aspect_srtm numeric,
    clc_l4_code character varying,
    clc_l4_code_macro character varying,
    aspect_srtm_bins character varying,
    ndvi_modis_boku numeric
);


--
-- Name: gps_available_ssf_overall_all_animals_key_seq; Type: SEQUENCE; Schema: ws_dream; Owner: -
--

CREATE SEQUENCE ws_dream.gps_available_ssf_overall_all_animals_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: gps_available_ssf_overall_all_animals_key_seq; Type: SEQUENCE OWNED BY; Schema: ws_dream; Owner: -
--

ALTER SEQUENCE ws_dream.gps_available_ssf_overall_all_animals_key_seq OWNED BY ws_dream.gps_available_ssf_overall_all_animals.key;


--
-- Name: gps_available_ssf_window; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.gps_available_ssf_window (
    used_id integer,
    available_id integer,
    key integer NOT NULL,
    animals_id character varying,
    acquisition_time character varying,
    available_step_length numeric,
    available_turning_angle numeric,
    geom public.geometry(Point,4326),
    used_abs_angle numeric,
    id_angle_departure integer,
    angle_departure numeric,
    absolute_angle_available_computation numeric,
    id_geom_departure integer,
    geom_departure public.geometry(Point,4326),
    geom_available public.geometry(Point,4326),
    x_used numeric,
    y_used numeric,
    x_available numeric,
    y_available numeric,
    time_window numeric,
    slope_aster numeric,
    slope_srtm numeric,
    aspect_srtm numeric,
    clc_l4_code character varying,
    clc_l4_code_macro character varying,
    aspect_srtm_bins character varying,
    ndvi_modis_boku numeric
);


--
-- Name: gps_available_ssf_window_all_animals; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.gps_available_ssf_window_all_animals (
    used_id integer,
    available_id integer,
    key integer NOT NULL,
    animals_id character varying,
    acquisition_time character varying,
    available_step_length numeric,
    available_turning_angle numeric,
    geom public.geometry(Point,4326),
    used_abs_angle numeric,
    id_angle_departure integer,
    angle_departure numeric,
    absolute_angle_available_computation numeric,
    id_geom_departure integer,
    geom_departure public.geometry(Point,4326),
    geom_available public.geometry(Point,4326),
    x_used numeric,
    y_used numeric,
    x_available numeric,
    y_available numeric,
    time_window numeric,
    slope_aster numeric,
    slope_srtm numeric,
    aspect_srtm numeric,
    clc_l4_code character varying,
    clc_l4_code_macro character varying,
    aspect_srtm_bins character varying,
    ndvi_modis_boku numeric
);


--
-- Name: gps_available_ssf_window_all_animals_10m; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.gps_available_ssf_window_all_animals_10m (
    used_id integer,
    available_id integer,
    key integer NOT NULL,
    animals_id character varying,
    acquisition_time character varying,
    available_step_length numeric,
    available_turning_angle numeric,
    geom public.geometry(Point,4326),
    used_abs_angle numeric,
    id_angle_departure integer,
    angle_departure numeric,
    absolute_angle_available_computation numeric,
    id_geom_departure integer,
    geom_departure public.geometry(Point,4326),
    geom_available public.geometry(Point,4326),
    x_used numeric,
    y_used numeric,
    x_available numeric,
    y_available numeric,
    time_window numeric,
    slope_aster numeric,
    slope_srtm numeric,
    aspect_srtm numeric,
    clc_l4_code character varying,
    clc_l4_code_macro character varying,
    aspect_srtm_bins character varying,
    ndvi_modis_boku numeric
);


--
-- Name: gps_available_ssf_window_all_animals_10m_key_seq; Type: SEQUENCE; Schema: ws_dream; Owner: -
--

CREATE SEQUENCE ws_dream.gps_available_ssf_window_all_animals_10m_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: gps_available_ssf_window_all_animals_10m_key_seq; Type: SEQUENCE OWNED BY; Schema: ws_dream; Owner: -
--

ALTER SEQUENCE ws_dream.gps_available_ssf_window_all_animals_10m_key_seq OWNED BY ws_dream.gps_available_ssf_window_all_animals_10m.key;


--
-- Name: gps_available_ssf_window_all_animals_50m; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.gps_available_ssf_window_all_animals_50m (
    used_id integer,
    available_id integer,
    key integer NOT NULL,
    animals_id character varying,
    acquisition_time character varying,
    available_step_length numeric,
    available_turning_angle numeric,
    geom public.geometry(Point,4326),
    used_abs_angle numeric,
    id_angle_departure integer,
    angle_departure numeric,
    absolute_angle_available_computation numeric,
    id_geom_departure integer,
    geom_departure public.geometry(Point,4326),
    geom_available public.geometry(Point,4326),
    x_used numeric,
    y_used numeric,
    x_available numeric,
    y_available numeric,
    time_window numeric,
    slope_aster numeric,
    slope_srtm numeric,
    aspect_srtm numeric,
    clc_l4_code character varying,
    clc_l4_code_macro character varying,
    aspect_srtm_bins character varying,
    ndvi_modis_boku numeric
);


--
-- Name: gps_available_ssf_window_all_animals_50m_key_seq; Type: SEQUENCE; Schema: ws_dream; Owner: -
--

CREATE SEQUENCE ws_dream.gps_available_ssf_window_all_animals_50m_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: gps_available_ssf_window_all_animals_50m_key_seq; Type: SEQUENCE OWNED BY; Schema: ws_dream; Owner: -
--

ALTER SEQUENCE ws_dream.gps_available_ssf_window_all_animals_50m_key_seq OWNED BY ws_dream.gps_available_ssf_window_all_animals_50m.key;


--
-- Name: gps_available_ssf_window_all_animals_key_seq; Type: SEQUENCE; Schema: ws_dream; Owner: -
--

CREATE SEQUENCE ws_dream.gps_available_ssf_window_all_animals_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: gps_available_ssf_window_all_animals_key_seq; Type: SEQUENCE OWNED BY; Schema: ws_dream; Owner: -
--

ALTER SEQUENCE ws_dream.gps_available_ssf_window_all_animals_key_seq OWNED BY ws_dream.gps_available_ssf_window_all_animals.key;


--
-- Name: gps_available_ssf_window_key_seq; Type: SEQUENCE; Schema: ws_dream; Owner: -
--

CREATE SEQUENCE ws_dream.gps_available_ssf_window_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: gps_available_ssf_window_key_seq; Type: SEQUENCE OWNED BY; Schema: ws_dream; Owner: -
--

ALTER SEQUENCE ws_dream.gps_available_ssf_window_key_seq OWNED BY ws_dream.gps_available_ssf_window.key;


--
-- Name: gps_data_aspromonte; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.gps_data_aspromonte (
    animals_id integer,
    gps_data_animals_id integer NOT NULL,
    acquisition_time timestamp with time zone,
    animals_original_name character varying(50),
    geom public.geometry(Point,4326),
    first_sample integer,
    gps_validity_code integer,
    corine_land_cover_aspromonte_code character varying,
    corine_land_cover_2006_code integer,
    clc_l4_code character varying,
    ndvi_modis real,
    ndvi_vegetation real,
    fapar_vegetation real,
    altitude_srtm integer,
    slope_srtm double precision,
    aspect_srtm integer,
    altitude_aster integer,
    slope_aster double precision,
    aspect_aster integer
);


--
-- Name: TABLE gps_data_aspromonte; Type: COMMENT; Schema: ws_dream; Owner: -
--

COMMENT ON TABLE ws_dream.gps_data_aspromonte IS 'All valid fixes for all animals Study Area Aspromonte (id=14) +  corine IV level.';


--
-- Name: gps_data_aspromonte_ssf; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.gps_data_aspromonte_ssf (
    animals_id integer,
    gps_data_animals_id integer,
    acquisition_time timestamp with time zone,
    animals_original_name character varying(50),
    geom public.geometry(Point,4326),
    first_sample integer,
    gps_validity_code integer,
    corine_land_cover_aspromonte_code character varying,
    corine_land_cover_2006_code integer,
    clc_l4_code character varying,
    ndvi_modis real,
    ndvi_vegetation real,
    fapar_vegetation real,
    altitude_srtm integer,
    slope_srtm double precision,
    aspect_srtm integer,
    altitude_aster integer,
    slope_aster double precision,
    aspect_aster integer,
    clc_l4_code_macro character varying,
    aspect_srtm_bins character varying,
    x numeric,
    y numeric,
    ndvi_modis_boku numeric
);


--
-- Name: gps_used; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.gps_used (
    animals_id integer,
    gps_data_animals_id integer,
    acquisition_time timestamp with time zone,
    animals_original_name character varying(50),
    geom public.geometry(Point,4326),
    first_sample integer,
    gps_validity_code integer,
    corine_land_cover_aspromonte_code character varying,
    corine_land_cover_2006_code integer,
    clc_l4_code character varying,
    ndvi_modis real,
    ndvi_vegetation real,
    fapar_vegetation real,
    altitude_srtm integer,
    slope_srtm double precision,
    aspect_srtm integer,
    altitude_aster integer,
    slope_aster double precision,
    aspect_aster integer,
    clc_l4_code_macro character varying,
    aspect_srtm_bins character varying,
    x numeric,
    y numeric,
    ndvi_modis_boku numeric,
    progressive_rel numeric
);


--
-- Name: gps_used_final; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.gps_used_final (
    animals_id integer,
    gps_data_animals_id integer,
    acquisition_time timestamp with time zone,
    animals_original_name character varying(50),
    geom public.geometry(Point,4326),
    first_sample integer,
    gps_validity_code integer,
    corine_land_cover_aspromonte_code character varying,
    corine_land_cover_2006_code integer,
    clc_l4_code character varying,
    ndvi_modis real,
    ndvi_vegetation real,
    fapar_vegetation real,
    altitude_srtm integer,
    slope_srtm double precision,
    aspect_srtm integer,
    altitude_aster integer,
    slope_aster double precision,
    aspect_aster integer,
    clc_l4_code_macro character varying,
    aspect_srtm_bins character varying,
    x numeric,
    y numeric,
    ndvi_modis_boku numeric,
    progressive_rel numeric
);


--
-- Name: hydro; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.hydro (
    gid integer NOT NULL,
    name_segment character varying(40),
    lenght double precision,
    order_code integer,
    code numeric(10,0),
    basin integer,
    qmax double precision,
    qmin double precision,
    slope double precision,
    geom public.geometry(MultiLineString,4326)
);


--
-- Name: hydro_gid_seq; Type: SEQUENCE; Schema: ws_dream; Owner: -
--

CREATE SEQUENCE ws_dream.hydro_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: hydro_gid_seq; Type: SEQUENCE OWNED BY; Schema: ws_dream; Owner: -
--

ALTER SEQUENCE ws_dream.hydro_gid_seq OWNED BY ws_dream.hydro.gid;


--
-- Name: lu_aspect; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.lu_aspect (
    aspect_class integer NOT NULL,
    aspect_class_description character varying,
    aspect_original_value integer
);


--
-- Name: lu_ground; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.lu_ground (
    ground_class integer NOT NULL,
    ground_class_description character varying
);


--
-- Name: lu_occ; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.lu_occ (
    occ_class integer NOT NULL,
    occ_class_description character varying
);


--
-- Name: lu_physiography; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.lu_physiography (
    physiography_class integer NOT NULL,
    physiography_class_description character varying
);


--
-- Name: lu_slope; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.lu_slope (
    slope_class integer NOT NULL,
    slope_class_description character varying,
    slope_original_value integer
);


--
-- Name: lu_tree_management; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.lu_tree_management (
    tree_management_class integer NOT NULL,
    tree_management_class_description character varying
);


--
-- Name: lu_tree_renewal; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.lu_tree_renewal (
    tree_renewal_class integer NOT NULL,
    tree_renewal_class_description character varying
);


--
-- Name: lu_tree_sprout; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.lu_tree_sprout (
    tree_sprout_class integer NOT NULL,
    tree_sprout_class_description character varying
);


--
-- Name: regularized_traj_for_kernel_fitting; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.regularized_traj_for_kernel_fitting (
    animals_id integer,
    geom public.geometry,
    acquisition_time timestamp with time zone,
    gps_data_animals_id integer,
    animals_original_name character varying(50),
    first_sample integer,
    gps_validity_code integer,
    corine_land_cover_aspromonte_code character varying,
    corine_land_cover_2006_code integer,
    clc_l4_code character varying,
    ndvi_modis real,
    ndvi_vegetation real,
    fapar_vegetation real,
    altitude_srtm integer,
    slope_srtm double precision,
    aspect_srtm integer,
    altitude_aster integer,
    slope_aster double precision,
    aspect_aster integer,
    step_duration interval,
    step_duration_hours numeric,
    x numeric,
    y numeric,
    laea public.geometry(Point,3035),
    laea_x numeric,
    laea_y numeric
);


--
-- Name: release_sites; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.release_sites (
    release_sites_id integer NOT NULL,
    number_animals double precision,
    release_date date,
    release_session integer,
    geom public.geometry(Point,4326),
    release_site_description character varying
);


--
-- Name: released_survival; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.released_survival (
    released_survival_id integer NOT NULL,
    animals_original_name character varying,
    date_capture date,
    capture_area character varying,
    release_date date,
    release_sites_id integer,
    survival_1year character varying(3),
    date_death date,
    cause_mortality character varying,
    reproduced character varying(3),
    collar_history character varying,
    animals_id integer
);


--
-- Name: ssf_agroforestale; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.ssf_agroforestale (
    gps_data_animals_id integer,
    rel_angle_avail double precision,
    dist_avail integer,
    other_month integer,
    gps_available_id integer,
    abs_angle_p double precision,
    geom public.geometry(Point,4326),
    geom_avail public.geometry(Point,4326),
    abs_angle_avail double precision,
    corine_land_cover_2006_code integer,
    clc_l4_code character varying,
    ndvi_modis real,
    ndvi_vegetation real,
    fapar_vegetation real,
    altitude_srtm integer,
    slope_srtm double precision,
    aspect_srtm integer,
    altitude_aster integer,
    slope_aster double precision,
    aspect_aster integer,
    gps_data_animals_id_next integer,
    acquisition_time timestamp with time zone,
    x numeric,
    y numeric
);


--
-- Name: survey_complete_grid; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.survey_complete_grid (
    id_grid integer
);


--
-- Name: survey_grid; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.survey_grid (
    geom public.geometry(Polygon,4326),
    id_grid integer NOT NULL,
    survey_animals_id integer,
    locations_survey_animals_id integer,
    locations_animal_1181 integer,
    locations_animal_1182 integer,
    locations_animal_1183 integer,
    locations_animal_1186 integer,
    locations_animal_1187 integer,
    locations_animal_1189 integer,
    locations_animal_1190 integer,
    locations_animal_1193 integer,
    locations_animal_1194 integer,
    locations_animal_1195 integer,
    locations_animal_1196 integer,
    locations_animal_1197 integer,
    locations_animal_1199 integer,
    locations_animal_1200 integer,
    locations_animal_1458 integer,
    locations_animal_1459 integer,
    locations_animal_1460 integer,
    assigned_animal_1181 integer,
    assigned_animal_1182 integer,
    assigned_animal_1183 integer,
    assigned_animal_1186 integer,
    assigned_animal_1187 integer,
    assigned_animal_1189 integer,
    assigned_animal_1190 integer,
    assigned_animal_1193 integer,
    assigned_animal_1194 integer,
    assigned_animal_1195 integer,
    assigned_animal_1196 integer,
    assigned_animal_1197 integer,
    assigned_animal_1199 integer,
    assigned_animal_1200 integer
);


--
-- Name: survey_grid_0_for_6m; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.survey_grid_0_for_6m (
    id_grid integer NOT NULL,
    geom public.geometry(Polygon,4326),
    locations_animal_1181 integer,
    locations_animal_1182 integer,
    locations_animal_1183 integer,
    locations_animal_1186 integer,
    locations_animal_1190 integer,
    locations_animal_1193 integer,
    locations_animal_1194 integer,
    locations_animal_1196 integer,
    locations_animal_1197 integer,
    locations_animal_1199 integer,
    locations_animal_1187 integer,
    locations_animal_1195 integer,
    locations_animal_1200 integer
);


--
-- Name: survey_grid_3m_for_6m; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.survey_grid_3m_for_6m (
    id_grid integer NOT NULL,
    geom public.geometry(Polygon,4326),
    locations_animal_1181 integer,
    locations_animal_1182 integer,
    locations_animal_1183 integer,
    locations_animal_1186 integer,
    locations_animal_1190 integer,
    locations_animal_1193 integer,
    locations_animal_1194 integer,
    locations_animal_1196 integer,
    locations_animal_1197 integer,
    locations_animal_1199 integer
);


--
-- Name: survey_grid_6m; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.survey_grid_6m (
    id_grid integer NOT NULL,
    geom public.geometry(Polygon,4326),
    locations_animal_1181 integer,
    locations_animal_1182 integer,
    locations_animal_1183 integer,
    locations_animal_1186 integer,
    locations_animal_1190 integer,
    locations_animal_1193 integer,
    locations_animal_1194 integer,
    locations_animal_1196 integer,
    locations_animal_1197 integer,
    locations_animal_1199 integer
);


--
-- Name: survey_grid_6m_for_6m; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.survey_grid_6m_for_6m (
    id_grid integer NOT NULL,
    geom public.geometry(Polygon,4326),
    locations_animal_1181 integer,
    locations_animal_1182 integer,
    locations_animal_1183 integer,
    locations_animal_1186 integer,
    locations_animal_1190 integer,
    locations_animal_1193 integer,
    locations_animal_1194 integer,
    locations_animal_1196 integer,
    locations_animal_1197 integer,
    locations_animal_1199 integer
);


--
-- Name: survey_veg_data; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.survey_veg_data (
    id_grid double precision NOT NULL,
    elevation double precision,
    aspect_class_new integer,
    slope_class integer,
    physiography_new integer,
    canopy_totalperc double precision,
    tree_canopy_conifer_absperc double precision,
    tree_canopy_broadleaved_absperc double precision,
    canopy_preval character varying,
    tree_canopy_height_m_corr double precision,
    tree_canopy_tot_5m double precision,
    tree_canopy_tot_15m double precision,
    tree_canopy_tot_25m double precision,
    tree_canopy_tot_absent double precision,
    tree_canopy_tot_0dot5mleaves double precision,
    tree_canopy_tot_1dot5mleaves double precision,
    tree_canopy_tot_2dot0mleaves double precision,
    tree_canopy_height_leaves_m double precision,
    tree_management integer,
    tree_sprouts_new integer,
    tree_sprouts_broadl_perc double precision,
    tree_sprouts_conif_perc double precision,
    shrub_coverperc double precision,
    shrub_tot_absent double precision,
    shrub_tot_0dot5m double precision,
    shrub_tot_1dot5m double precision,
    shrub_tot_2dot0m double precision,
    shrub_height_m double precision,
    shrub_fernsperc double precision,
    herb_coverperc double precision,
    herb_gpperc_abs double precision,
    herb_gnperc_abs double precision,
    herb_leperc_abs double precision,
    herb_alperc_abs double precision,
    herb_svperc_abs double precision,
    visibility_10mperc double precision,
    visibility_25mperc double precision,
    clc4_perc double precision,
    clc4_description character varying,
    clc4_dominant character varying
);


--
-- Name: survey_veg_data_old; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.survey_veg_data_old (
    id_scheda integer NOT NULL,
    id_grid integer,
    occ_class integer,
    animals_original_name character varying,
    elevation integer,
    aspect_class integer,
    slope_class integer,
    physiography_class integer,
    ground_class integer,
    canopy_total_perc integer,
    tree_canopy_conifer_perc integer,
    tree_canopy_broadleaved_perc integer,
    tree_canopy_height_m integer,
    tree_canopy_height_leaves_m numeric(5,1),
    tree_management_class integer,
    tree_renewal_class integer,
    tree_sprout_class integer,
    shrub_cover_perc integer,
    shrub_height_m numeric(5,1),
    shrub_ferns_perc integer,
    herb_cover_perc integer,
    herb_gp_perc integer,
    herb_gn_perc integer,
    herb_le_perc integer,
    herb_al_perc integer,
    herb_sv_perc integer,
    visibility_10m_perc integer,
    visibility_25m_perc integer,
    animals_id integer
);


--
-- Name: target_area; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.target_area (
    study_areas_id integer NOT NULL,
    geom public.geometry(Polygon,4326)
);


--
-- Name: test_query1_complete; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.test_query1_complete (
    used_id integer,
    available_id integer,
    key integer NOT NULL,
    animals_id character varying,
    acquisition_time character varying,
    available_step_length numeric,
    available_turning_angle numeric,
    geom public.geometry(Point,4326),
    used_abs_angle numeric,
    id_angle_departure integer,
    angle_departure numeric,
    absolute_angle_available_computation numeric,
    id_geom_departure integer,
    geom_departure public.geometry(Point,4326),
    geom_available public.geometry(Point,4326),
    x_used numeric,
    y_used numeric,
    x_available numeric,
    y_available numeric,
    slope_aster numeric,
    slope_srtm numeric,
    aspect_srtm numeric,
    time_window numeric,
    clc_l4 character varying,
    clc_l4_code_macro character varying,
    aspect_srtm_bins character varying
);


--
-- Name: test_query1_complete_key_seq; Type: SEQUENCE; Schema: ws_dream; Owner: -
--

CREATE SEQUENCE ws_dream.test_query1_complete_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: test_query1_complete_key_seq; Type: SEQUENCE OWNED BY; Schema: ws_dream; Owner: -
--

ALTER SEQUENCE ws_dream.test_query1_complete_key_seq OWNED BY ws_dream.test_query1_complete.key;


--
-- Name: trajectories_aspromonte_0_for_6m_buffer; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.trajectories_aspromonte_0_for_6m_buffer (
    animals_id integer NOT NULL,
    name character varying(50),
    geom public.geometry(Polygon,4326)
);


--
-- Name: trajectories_aspromonte_3m_for_6m_buffer; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.trajectories_aspromonte_3m_for_6m_buffer (
    animals_id integer NOT NULL,
    name character varying(50),
    geom public.geometry(Polygon,4326)
);


--
-- Name: trajectories_aspromonte_6m_buffer; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.trajectories_aspromonte_6m_buffer (
    animals_id integer NOT NULL,
    name character varying(50),
    geom public.geometry(Polygon,4326)
);


--
-- Name: trajectories_aspromonte_6m_for_6m_buffer; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.trajectories_aspromonte_6m_for_6m_buffer (
    animals_id integer NOT NULL,
    name character varying(50),
    geom public.geometry(Polygon,4326)
);


--
-- Name: trajectories_aspromonte_sample; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.trajectories_aspromonte_sample (
    animals_id integer NOT NULL,
    name character varying(50),
    geom public.geometry(LineString,4326)
);


--
-- Name: trajectories_aspromonte_sample_all; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.trajectories_aspromonte_sample_all (
    animals_id integer NOT NULL,
    name character varying(50),
    geom public.geometry(LineString,4326)
);


--
-- Name: trajectories_aspromonte_sample_buffer; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.trajectories_aspromonte_sample_buffer (
    animals_id integer NOT NULL,
    name character varying(50),
    geom public.geometry(Polygon,4326)
);


--
-- Name: trajectories_aspromonte_sample_buffer_all; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.trajectories_aspromonte_sample_buffer_all (
    animals_id integer NOT NULL,
    name character varying(50),
    geom public.geometry(Polygon,4326)
);


--
-- Name: val_rendena_outgroup_selection; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.val_rendena_outgroup_selection (
    gps_data_animals_id integer,
    animals_id integer,
    acquisition_time timestamp with time zone,
    geom public.geometry(Point,4326),
    latitude double precision,
    longitude double precision,
    utm_x integer,
    utm_y integer,
    utm_srid integer
);


--
-- Name: val_rendena_outgroup_selection_regularized; Type: TABLE; Schema: ws_dream; Owner: -
--

CREATE TABLE ws_dream.val_rendena_outgroup_selection_regularized (
    animals_id integer,
    acquisition_time timestamp with time zone,
    geom public.geometry,
    gps_data_animals_id integer,
    latitude double precision,
    longitude double precision,
    utm_x integer,
    utm_y integer,
    utm_srid integer
);


--
-- Name: view_boundingbox_aspromonte; Type: VIEW; Schema: ws_dream; Owner: -
--

CREATE VIEW ws_dream.view_boundingbox_aspromonte AS
 SELECT study_areas.study_areas_id,
    (public.st_envelope(public.st_buffer(study_areas.geom, (0.075)::double precision)))::public.geometry(Polygon,4326) AS geom
   FROM main.study_areas
  WHERE (study_areas.study_areas_id = 12);


--
-- Name: VIEW view_boundingbox_aspromonte; Type: COMMENT; Schema: ws_dream; Owner: -
--

COMMENT ON VIEW ws_dream.view_boundingbox_aspromonte IS 'Bounding box of locations in aspromonte with a buffer of 7.5 km.';


--
-- Name: view_validity_interval_ssf_12m; Type: VIEW; Schema: ws_dream; Owner: -
--

CREATE VIEW ws_dream.view_validity_interval_ssf_12m AS
 SELECT gps_data_aspromonte.animals_id,
    (max(gps_data_aspromonte.acquisition_time) - min(gps_data_aspromonte.acquisition_time)) AS intervalx,
    min(gps_data_aspromonte.acquisition_time) AS minx,
    max(gps_data_aspromonte.acquisition_time) AS maxx,
        CASE
            WHEN (date_part('day'::text, min(gps_data_aspromonte.acquisition_time)) <= (16)::double precision) THEN min(gps_data_aspromonte.acquisition_time)
            ELSE (((((date_part('year'::text, min(gps_data_aspromonte.acquisition_time)) || '-'::text) || (date_part('month'::text, min(gps_data_aspromonte.acquisition_time)) + (1)::double precision)) || '-'::text) || 1))::timestamp with time zone
        END AS startx,
        CASE
            WHEN ((max(gps_data_aspromonte.acquisition_time) - min(gps_data_aspromonte.acquisition_time)) < '365 days'::interval) THEN
            CASE
                WHEN (date_part('day'::text, max(gps_data_aspromonte.acquisition_time)) <= (16)::double precision) THEN (((((date_part('year'::text, max(gps_data_aspromonte.acquisition_time)) || '-'::text) || date_part('month'::text, max(gps_data_aspromonte.acquisition_time))) || '-'::text) || 1))::timestamp with time zone
                ELSE max(gps_data_aspromonte.acquisition_time)
            END
            ELSE (((((date_part('year'::text, (min(gps_data_aspromonte.acquisition_time) + '365 days'::interval)) || '-'::text) || date_part('month'::text, (min(gps_data_aspromonte.acquisition_time) + '365 days'::interval))) || '-'::text) || 1))::timestamp with time zone
        END AS endx,
    (
        CASE
            WHEN ((max(gps_data_aspromonte.acquisition_time) - min(gps_data_aspromonte.acquisition_time)) < '365 days'::interval) THEN
            CASE
                WHEN (date_part('day'::text, max(gps_data_aspromonte.acquisition_time)) <= (16)::double precision) THEN (((((date_part('year'::text, max(gps_data_aspromonte.acquisition_time)) || '-'::text) || date_part('month'::text, max(gps_data_aspromonte.acquisition_time))) || '-'::text) || 1))::timestamp with time zone
                ELSE max(gps_data_aspromonte.acquisition_time)
            END
            ELSE (((((date_part('year'::text, (min(gps_data_aspromonte.acquisition_time) + '365 days'::interval)) || '-'::text) || date_part('month'::text, (min(gps_data_aspromonte.acquisition_time) + '365 days'::interval))) || '-'::text) || 1))::timestamp with time zone
        END -
        CASE
            WHEN (date_part('day'::text, min(gps_data_aspromonte.acquisition_time)) <= (16)::double precision) THEN min(gps_data_aspromonte.acquisition_time)
            ELSE (((((date_part('year'::text, min(gps_data_aspromonte.acquisition_time)) || '-'::text) || (date_part('month'::text, min(gps_data_aspromonte.acquisition_time)) + (1)::double precision)) || '-'::text) || 1))::timestamp with time zone
        END) AS intervalx_startend
   FROM ws_dream.gps_data_aspromonte
  WHERE (gps_data_aspromonte.gps_validity_code = 1)
  GROUP BY gps_data_aspromonte.animals_id
 HAVING ((max(gps_data_aspromonte.acquisition_time) - min(gps_data_aspromonte.acquisition_time)) > '180 days'::interval)
  ORDER BY (max(gps_data_aspromonte.acquisition_time) - min(gps_data_aspromonte.acquisition_time));


--
-- Name: view_code_intersection_buffer_0_for_6m; Type: VIEW; Schema: ws_dream; Owner: -
--

CREATE VIEW ws_dream.view_code_intersection_buffer_0_for_6m AS
 SELECT (((((('Update  ws_dream.survey_grid_0_for_6m set locations_animal_'::text || view_validity_interval_ssf_12m.animals_id) || ' = 0 from ws_dream.trajectories_aspromonte_0_for_6m_buffer where locations_animal_'::text) || view_validity_interval_ssf_12m.animals_id) || ' is null and  st_intersects(trajectories_aspromonte_0_for_6m_buffer.geom, survey_grid_0_for_6m.geom) and animals_id = '::text) || view_validity_interval_ssf_12m.animals_id) || ';'::text) AS text_to_run
   FROM ws_dream.view_validity_interval_ssf_12m;


--
-- Name: view_code_intersection_buffer_3m_for_6m; Type: VIEW; Schema: ws_dream; Owner: -
--

CREATE VIEW ws_dream.view_code_intersection_buffer_3m_for_6m AS
 SELECT (((((('Update  ws_dream.survey_grid_3m_for_6m set locations_animal_'::text || view_validity_interval_ssf_12m.animals_id) || ' = 0 from ws_dream.trajectories_aspromonte_3m_for_6m_buffer where locations_animal_'::text) || view_validity_interval_ssf_12m.animals_id) || ' is null and  st_intersects(trajectories_aspromonte_3m_for_6m_buffer.geom, survey_grid_3m_for_6m.geom) and animals_id = '::text) || view_validity_interval_ssf_12m.animals_id) || ';'::text) AS text_to_run
   FROM ws_dream.view_validity_interval_ssf_12m
  WHERE (view_validity_interval_ssf_12m.animals_id <> ALL (ARRAY[1195, 1200, 1187]));


--
-- Name: view_code_intersection_points_0_for_6m; Type: VIEW; Schema: ws_dream; Owner: -
--

CREATE VIEW ws_dream.view_code_intersection_points_0_for_6m AS
 SELECT (((('Update  ws_dream.survey_grid_0_for_6m set locations_animal_'::text || view_validity_interval_ssf_12m.animals_id) || ' = num from (SELECT id_grid, count(*) as num FROM ws_dream.view_gps_data_aspromonte_0_for_6m, ws_dream.survey_grid_0_for_6m where animals_id = '::text) || view_validity_interval_ssf_12m.animals_id) || ' and st_intersects(view_gps_data_aspromonte_0_for_6m.geom, survey_grid_0_for_6m.geom) group by id_grid) a where a.id_grid = survey_grid_0_for_6m.id_grid;'::text) AS text_to_run
   FROM ws_dream.view_validity_interval_ssf_12m;


--
-- Name: view_code_intersection_points_3m_for_6m; Type: VIEW; Schema: ws_dream; Owner: -
--

CREATE VIEW ws_dream.view_code_intersection_points_3m_for_6m AS
 SELECT (((('Update  ws_dream.survey_grid_3m_for_6m set locations_animal_'::text || view_validity_interval_ssf_12m.animals_id) || ' = num from (SELECT id_grid, count(*) as num FROM ws_dream.view_gps_data_aspromonte_3m_for_6m, ws_dream.survey_grid_3m_for_6m where animals_id = '::text) || view_validity_interval_ssf_12m.animals_id) || ' and st_intersects(view_gps_data_aspromonte_3m_for_6m.geom, survey_grid_3m_for_6m.geom) group by id_grid) a where a.id_grid = survey_grid_3m_for_6m.id_grid;'::text) AS text_to_run
   FROM ws_dream.view_validity_interval_ssf_12m
  WHERE (view_validity_interval_ssf_12m.animals_id <> ALL (ARRAY[1195, 1200, 1187]));


--
-- Name: view_gps_positions_dream; Type: VIEW; Schema: ws_dream; Owner: -
--

CREATE VIEW ws_dream.view_gps_positions_dream AS
 SELECT view_eurodeer_gps_positions.animals_id,
    view_eurodeer_gps_positions.study_areas_id,
    view_eurodeer_gps_positions.research_groups_id,
    view_eurodeer_gps_positions.animals_original_name,
    view_eurodeer_gps_positions.sex,
    view_eurodeer_gps_positions.age,
    view_eurodeer_gps_positions.gps_data_animals_id,
    view_eurodeer_gps_positions.gps_sensors_id,
    view_eurodeer_gps_positions.acquisition_time,
    view_eurodeer_gps_positions.x_original_reference,
    view_eurodeer_gps_positions.y_original_reference,
    view_eurodeer_gps_positions.srid_original_reference,
    view_eurodeer_gps_positions.latitude,
    view_eurodeer_gps_positions.longitude,
    view_eurodeer_gps_positions.altitude_gps,
    view_eurodeer_gps_positions.dop,
    view_eurodeer_gps_positions.sats,
    view_eurodeer_gps_positions.temperature_sensor,
    view_eurodeer_gps_positions.geom,
    view_eurodeer_gps_positions.gps_validity_code,
    view_eurodeer_gps_positions.corine_land_cover_2006_code,
    view_eurodeer_gps_positions.snow_modis,
    view_eurodeer_gps_positions.sun_angle,
    view_eurodeer_gps_positions.utm_srid,
    view_eurodeer_gps_positions.utm_x,
    view_eurodeer_gps_positions.utm_y,
    view_eurodeer_gps_positions.corine_land_cover_2000_code,
    view_eurodeer_gps_positions.corine_land_cover_1990_code,
    view_eurodeer_gps_positions.ndvi_modis_boku,
    view_eurodeer_gps_positions.ndvi_modis_smoothed,
    view_eurodeer_gps_positions.altitude_copernicus,
    view_eurodeer_gps_positions.slope_copernicus,
    view_eurodeer_gps_positions.aspect_copernicus,
    view_eurodeer_gps_positions.corine_land_cover_2012_code,
    view_eurodeer_gps_positions.corine_land_cover_2012_vector_code,
    view_eurodeer_gps_positions.forest_density
   FROM main.view_eurodeer_gps_positions
  WHERE (view_eurodeer_gps_positions.research_groups_id = 6)
  ORDER BY view_eurodeer_gps_positions.animals_id, view_eurodeer_gps_positions.acquisition_time;


--
-- Name: VIEW view_gps_positions_dream; Type: COMMENT; Schema: ws_dream; Owner: -
--

COMMENT ON VIEW ws_dream.view_gps_positions_dream IS 'Vaid locations related to DREAm research group with information on study area, sex and age.';


--
-- Name: view_gps_positions_aspromonte; Type: VIEW; Schema: ws_dream; Owner: -
--

CREATE VIEW ws_dream.view_gps_positions_aspromonte AS
 SELECT view_gps_positions_dream.animals_id,
    view_gps_positions_dream.study_areas_id,
    view_gps_positions_dream.research_groups_id,
    view_gps_positions_dream.animals_original_name,
    view_gps_positions_dream.sex,
    view_gps_positions_dream.age,
    view_gps_positions_dream.gps_data_animals_id,
    view_gps_positions_dream.gps_sensors_id,
    view_gps_positions_dream.acquisition_time,
    view_gps_positions_dream.x_original_reference,
    view_gps_positions_dream.y_original_reference,
    view_gps_positions_dream.srid_original_reference,
    view_gps_positions_dream.latitude,
    view_gps_positions_dream.longitude,
    view_gps_positions_dream.altitude_gps,
    view_gps_positions_dream.dop,
    view_gps_positions_dream.sats,
    view_gps_positions_dream.temperature_sensor,
    view_gps_positions_dream.geom,
    view_gps_positions_dream.gps_validity_code,
    view_gps_positions_dream.corine_land_cover_2006_code,
    view_gps_positions_dream.snow_modis,
    view_gps_positions_dream.sun_angle,
    view_gps_positions_dream.utm_srid,
    view_gps_positions_dream.utm_x,
    view_gps_positions_dream.utm_y,
    view_gps_positions_dream.corine_land_cover_2000_code,
    view_gps_positions_dream.corine_land_cover_1990_code,
    view_gps_positions_dream.ndvi_modis_boku,
    view_gps_positions_dream.ndvi_modis_smoothed,
    view_gps_positions_dream.altitude_copernicus,
    view_gps_positions_dream.slope_copernicus,
    view_gps_positions_dream.aspect_copernicus,
    view_gps_positions_dream.corine_land_cover_2012_code,
    view_gps_positions_dream.corine_land_cover_2012_vector_code,
    view_gps_positions_dream.forest_density
   FROM ws_dream.view_gps_positions_dream
  WHERE (view_gps_positions_dream.study_areas_id = 12);


--
-- Name: VIEW view_gps_positions_aspromonte; Type: COMMENT; Schema: ws_dream; Owner: -
--

COMMENT ON VIEW ws_dream.view_gps_positions_aspromonte IS 'Locations of animals in the Aspromonte area (DREAm research group).';


--
-- Name: view_convexhull_aspromonte; Type: VIEW; Schema: ws_dream; Owner: -
--

CREATE VIEW ws_dream.view_convexhull_aspromonte AS
 SELECT animals.animals_id,
    animals.animals_original_name AS name,
    animals.study_areas_id AS studies_id,
    public.st_area(public.st_transform(foo.geom, tools.srid_utm(public.st_x(public.st_centroid(foo.geom)), public.st_y(public.st_centroid(foo.geom))))) AS area,
    (foo.geom)::public.geometry(Polygon,4326) AS geom
   FROM ( SELECT view_gps_positions_aspromonte.animals_id,
            public.st_convexhull(public.st_collect(view_gps_positions_aspromonte.geom)) AS geom
           FROM ws_dream.view_gps_positions_aspromonte
          WHERE (view_gps_positions_aspromonte.gps_validity_code = 1)
          GROUP BY view_gps_positions_aspromonte.animals_id) foo,
    main.animals
  WHERE (animals.animals_id = foo.animals_id);


--
-- Name: VIEW view_convexhull_aspromonte; Type: COMMENT; Schema: ws_dream; Owner: -
--

COMMENT ON VIEW ws_dream.view_convexhull_aspromonte IS 'View with the convex hull of all valid locations per all the animals of Aspromonte study area (DREAm).';


--
-- Name: view_geom_parameters_ssf_12m; Type: VIEW; Schema: ws_dream; Owner: -
--

CREATE VIEW ws_dream.view_geom_parameters_ssf_12m AS
 SELECT (x.geom_parameters).animals_id AS animals_id,
    (x.geom_parameters).acquisition_time AS acquisition_time,
    (x.geom_parameters).acquisition_time_t_1 AS acquisition_time_t_1,
    (x.geom_parameters).acquisition_time_t_2 AS acquisition_time_t_2,
    (x.geom_parameters).deltat_t_1 AS deltat_t_1,
    (x.geom_parameters).deltat_t_2 AS deltat_t_2,
    (x.geom_parameters).deltat_start AS deltat_start,
    (x.geom_parameters).dist_t_1 AS dist_t_1,
    (x.geom_parameters).dist_start AS dist_start,
    (x.geom_parameters).speed_mh_t_1 AS speed_mh_t_1,
    (x.geom_parameters).abs_angle_t_1 AS abs_angle_t_1,
    (x.geom_parameters).rel_angle_t_2 AS rel_angle_t_2
   FROM ( SELECT tools.geom_parameters(view_validity_interval_ssf_12m.animals_id, ((60 * 60) * 6), (300)::double precision, '(SELECT (regularizex).animals_id, (regularizex).acquisition_time, (regularizex).geom from (select ws_dream.regularizex(animals_id, 60*60*6, 300) from ws_dream.view_validity_interval_ssf_12m) a where (regularizex).geom is NOT null) a'::character varying) AS geom_parameters
           FROM ws_dream.view_validity_interval_ssf_12m) x;


--
-- Name: view_gps_data_aspromonte_0_for_6m_irregular; Type: VIEW; Schema: ws_dream; Owner: -
--

CREATE VIEW ws_dream.view_gps_data_aspromonte_0_for_6m_irregular AS
 SELECT rank() OVER (PARTITION BY gps_data_aspromonte.animals_id, ((((((date_part('epoch'::text, gps_data_aspromonte.acquisition_time) - (((3 * 60) * 60))::double precision) / (60)::double precision) / (60)::double precision) / (6)::double precision))::integer) ORDER BY gps_data_aspromonte.animals_id, gps_data_aspromonte.acquisition_time) AS rank,
    gps_data_aspromonte.gps_data_animals_id,
    gps_data_aspromonte.animals_id,
    gps_data_aspromonte.acquisition_time,
    gps_data_aspromonte.animals_original_name,
    gps_data_aspromonte.geom,
    gps_data_aspromonte.first_sample,
    gps_data_aspromonte.gps_validity_code,
    gps_data_aspromonte.corine_land_cover_aspromonte_code
   FROM main.gps_sensors_animals,
    ws_dream.gps_data_aspromonte
  WHERE ((gps_data_aspromonte.gps_validity_code = 1) AND (gps_data_aspromonte.animals_id = gps_sensors_animals.animals_id) AND (gps_data_aspromonte.acquisition_time < (gps_sensors_animals.start_time + ((6)::double precision * '1 mon'::interval))))
  ORDER BY gps_data_aspromonte.animals_id, gps_data_aspromonte.acquisition_time;


--
-- Name: view_gps_data_aspromonte_0_for_6m; Type: VIEW; Schema: ws_dream; Owner: -
--

CREATE VIEW ws_dream.view_gps_data_aspromonte_0_for_6m AS
 SELECT view_gps_data_aspromonte_0_for_6m_irregular.gps_data_animals_id,
    view_gps_data_aspromonte_0_for_6m_irregular.animals_id,
    view_gps_data_aspromonte_0_for_6m_irregular.acquisition_time,
    view_gps_data_aspromonte_0_for_6m_irregular.animals_original_name,
    view_gps_data_aspromonte_0_for_6m_irregular.geom,
    view_gps_data_aspromonte_0_for_6m_irregular.first_sample,
    view_gps_data_aspromonte_0_for_6m_irregular.gps_validity_code,
    view_gps_data_aspromonte_0_for_6m_irregular.corine_land_cover_aspromonte_code
   FROM ws_dream.view_gps_data_aspromonte_0_for_6m_irregular
  WHERE (view_gps_data_aspromonte_0_for_6m_irregular.rank = 1);


--
-- Name: view_gps_data_aspromonte_3m_for_6m; Type: VIEW; Schema: ws_dream; Owner: -
--

CREATE VIEW ws_dream.view_gps_data_aspromonte_3m_for_6m AS
 SELECT gps_data_aspromonte.gps_data_animals_id,
    gps_data_aspromonte.animals_id,
    gps_data_aspromonte.acquisition_time,
    gps_data_aspromonte.animals_original_name,
    gps_data_aspromonte.geom,
    gps_data_aspromonte.first_sample,
    gps_data_aspromonte.gps_validity_code,
    gps_data_aspromonte.corine_land_cover_aspromonte_code
   FROM main.gps_sensors_animals,
    ws_dream.gps_data_aspromonte
  WHERE ((gps_data_aspromonte.gps_validity_code = 1) AND (gps_data_aspromonte.animals_id = gps_sensors_animals.animals_id) AND (gps_data_aspromonte.acquisition_time > (gps_sensors_animals.start_time + ((3)::double precision * '1 mon'::interval))) AND (gps_data_aspromonte.acquisition_time < (gps_sensors_animals.start_time + ((9)::double precision * '1 mon'::interval))) AND (gps_data_aspromonte.animals_id <> ALL (ARRAY[1195, 1200, 1187])))
  ORDER BY gps_data_aspromonte.animals_id, gps_data_aspromonte.acquisition_time;


--
-- Name: view_gps_data_aspromonte_6m; Type: VIEW; Schema: ws_dream; Owner: -
--

CREATE VIEW ws_dream.view_gps_data_aspromonte_6m AS
 SELECT gps_data_aspromonte.gps_data_animals_id,
    gps_data_aspromonte.animals_id,
    gps_data_aspromonte.acquisition_time,
    gps_data_aspromonte.animals_original_name,
    gps_data_aspromonte.geom,
    gps_data_aspromonte.first_sample,
    gps_data_aspromonte.gps_validity_code,
    gps_data_aspromonte.corine_land_cover_aspromonte_code
   FROM main.gps_sensors_animals,
    ws_dream.gps_data_aspromonte
  WHERE ((gps_data_aspromonte.gps_validity_code = 1) AND (gps_data_aspromonte.animals_id = gps_sensors_animals.animals_id) AND (gps_data_aspromonte.acquisition_time > (gps_sensors_animals.start_time + ((6)::double precision * '1 mon'::interval))) AND (gps_data_aspromonte.animals_id <> ALL (ARRAY[1195, 1200])))
  ORDER BY gps_data_aspromonte.animals_id, gps_data_aspromonte.acquisition_time;


--
-- Name: view_gps_data_aspromonte_6m_for_6m; Type: VIEW; Schema: ws_dream; Owner: -
--

CREATE VIEW ws_dream.view_gps_data_aspromonte_6m_for_6m AS
 SELECT gps_data_aspromonte.gps_data_animals_id,
    gps_data_aspromonte.animals_id,
    gps_data_aspromonte.acquisition_time,
    gps_data_aspromonte.animals_original_name,
    gps_data_aspromonte.geom,
    gps_data_aspromonte.first_sample,
    gps_data_aspromonte.gps_validity_code,
    gps_data_aspromonte.corine_land_cover_aspromonte_code
   FROM main.gps_sensors_animals,
    ws_dream.gps_data_aspromonte
  WHERE ((gps_data_aspromonte.gps_validity_code = 1) AND (gps_data_aspromonte.animals_id = gps_sensors_animals.animals_id) AND (gps_data_aspromonte.acquisition_time > (gps_sensors_animals.start_time + ((6)::double precision * '1 mon'::interval))) AND (gps_data_aspromonte.acquisition_time < (gps_sensors_animals.start_time + ((12)::double precision * '1 mon'::interval))) AND (gps_data_aspromonte.animals_id <> ALL (ARRAY[1195, 1200])))
  ORDER BY gps_data_aspromonte.animals_id, gps_data_aspromonte.acquisition_time;


--
-- Name: view_gps_data_ssf_12m; Type: VIEW; Schema: ws_dream; Owner: -
--

CREATE VIEW ws_dream.view_gps_data_ssf_12m AS
 SELECT gps_data_animals.gps_data_animals_id,
    gps_data_animals.animals_id,
    gps_data_animals.acquisition_time,
    gps_data_animals.geom,
    gps_data_animals.gps_validity_code,
    gps_data_animals.snow_modis,
    gps_data_animals.sun_angle,
    gps_data_animals.utm_srid,
    gps_data_animals.utm_x,
    gps_data_animals.utm_y,
    gps_data_animals.corine_land_cover_2006_code,
    gps_data_animals.corine_land_cover_2000_code,
    gps_data_animals.corine_land_cover_1990_code,
    gps_data_aspromonte.corine_land_cover_aspromonte_code
   FROM ws_dream.view_validity_interval_ssf_12m,
    main.gps_data_animals,
    ws_dream.gps_data_aspromonte
  WHERE ((gps_data_aspromonte.gps_data_animals_id = gps_data_animals.gps_data_animals_id) AND (view_validity_interval_ssf_12m.animals_id = gps_data_animals.animals_id) AND (gps_data_animals.acquisition_time >= view_validity_interval_ssf_12m.startx) AND (gps_data_animals.acquisition_time <= view_validity_interval_ssf_12m.endx) AND (gps_data_animals.gps_validity_code = 1));


--
-- Name: view_gps_positions_aspromonte_clc4; Type: VIEW; Schema: ws_dream; Owner: -
--

CREATE VIEW ws_dream.view_gps_positions_aspromonte_clc4 AS
 SELECT view_gps_positions_aspromonte.gps_data_animals_id,
    view_gps_positions_aspromonte.animals_id,
    view_gps_positions_aspromonte.study_areas_id,
    view_gps_positions_aspromonte.research_groups_id,
    view_gps_positions_aspromonte.animals_original_name,
    view_gps_positions_aspromonte.sex,
    view_gps_positions_aspromonte.age,
    view_gps_positions_aspromonte.gps_sensors_id,
    view_gps_positions_aspromonte.acquisition_time,
    view_gps_positions_aspromonte.x_original_reference,
    view_gps_positions_aspromonte.y_original_reference,
    view_gps_positions_aspromonte.srid_original_reference,
    view_gps_positions_aspromonte.latitude,
    view_gps_positions_aspromonte.longitude,
    view_gps_positions_aspromonte.altitude_gps,
    view_gps_positions_aspromonte.dop,
    view_gps_positions_aspromonte.sats,
    view_gps_positions_aspromonte.temperature_sensor,
    view_gps_positions_aspromonte.geom,
    view_gps_positions_aspromonte.gps_validity_code,
    view_gps_positions_aspromonte.corine_land_cover_2006_code,
    view_gps_positions_aspromonte.snow_modis,
    view_gps_positions_aspromonte.sun_angle,
    view_gps_positions_aspromonte.utm_srid,
    view_gps_positions_aspromonte.utm_x,
    view_gps_positions_aspromonte.utm_y,
    gps_data_aspromonte.corine_land_cover_aspromonte_code
   FROM ws_dream.view_gps_positions_aspromonte,
    ws_dream.gps_data_aspromonte
  WHERE (view_gps_positions_aspromonte.gps_data_animals_id = gps_data_aspromonte.gps_data_animals_id)
  ORDER BY view_gps_positions_aspromonte.animals_id, view_gps_positions_aspromonte.acquisition_time;


--
-- Name: view_gps_used_migro; Type: VIEW; Schema: ws_dream; Owner: -
--

CREATE VIEW ws_dream.view_gps_used_migro AS
 SELECT gps_used.animals_id,
    gps_used.gps_data_animals_id,
    gps_used.acquisition_time,
    to_char(gps_used.acquisition_time, 'YYYY-MM-DD HH:MI:SS'::text) AS acquisition_time_formatted,
    gps_used.animals_original_name,
    gps_used.first_sample,
    gps_used.gps_validity_code,
    gps_used.corine_land_cover_aspromonte_code,
    gps_used.corine_land_cover_2006_code,
    gps_used.clc_l4_code,
    gps_used.ndvi_modis,
    gps_used.ndvi_vegetation,
    gps_used.fapar_vegetation,
    gps_used.altitude_srtm,
    gps_used.slope_srtm,
    gps_used.aspect_srtm,
    gps_used.altitude_aster,
    gps_used.slope_aster,
    gps_used.aspect_aster,
    gps_used.clc_l4_code_macro,
    gps_used.aspect_srtm_bins,
    gps_used.x,
    gps_used.y,
    gps_used.ndvi_modis_boku,
    gps_used.progressive_rel,
    (public.st_x(public.st_transform(gps_used.geom, 32633)))::integer AS x_utm33,
    (public.st_y(public.st_transform(gps_used.geom, 32633)))::integer AS y_utm33
   FROM ws_dream.gps_used
  WHERE (gps_used.animals_id <> ALL (ARRAY[1187, 1195, 1200]));


--
-- Name: view_grid_survey; Type: VIEW; Schema: ws_dream; Owner: -
--

CREATE VIEW ws_dream.view_grid_survey AS
 SELECT survey_grid.id_grid,
    survey_grid.geom
   FROM ws_dream.survey_veg_data_old survey_veg_data,
    ws_dream.survey_grid
  WHERE (survey_grid.id_grid = survey_veg_data.id_grid);


--
-- Name: view_survey_grid_0_for_6m_unpivot; Type: VIEW; Schema: ws_dream; Owner: -
--

CREATE VIEW ws_dream.view_survey_grid_0_for_6m_unpivot AS
 SELECT exploded.id_grid,
    exploded.animals_id,
    exploded.val
   FROM ( SELECT survey_grid_0_for_6m.id_grid,
            ("substring"(unnest(ARRAY['locations_animal_1181'::text, 'locations_animal_1182'::text, 'locations_animal_1183'::text, 'locations_animal_1186'::text, 'locations_animal_1190'::text, 'locations_animal_1195'::text, 'locations_animal_1200'::text, 'locations_animal_1187'::text, 'locations_animal_1193'::text, 'locations_animal_1194'::text, 'locations_animal_1196'::text, 'locations_animal_1197'::text, 'locations_animal_1199'::text]), 18, 4))::integer AS animals_id,
            (unnest(ARRAY[(survey_grid_0_for_6m.locations_animal_1181)::text, (survey_grid_0_for_6m.locations_animal_1182)::text, (survey_grid_0_for_6m.locations_animal_1183)::text, (survey_grid_0_for_6m.locations_animal_1186)::text, (survey_grid_0_for_6m.locations_animal_1190)::text, (survey_grid_0_for_6m.locations_animal_1193)::text, (survey_grid_0_for_6m.locations_animal_1194)::text, (survey_grid_0_for_6m.locations_animal_1196)::text, (survey_grid_0_for_6m.locations_animal_1197)::text, (survey_grid_0_for_6m.locations_animal_1199)::text]))::integer AS val
           FROM ws_dream.survey_grid_0_for_6m) exploded
  WHERE (exploded.val IS NOT NULL)
  ORDER BY exploded.animals_id, exploded.val DESC;


--
-- Name: view_survey_grid_0_for_6m_unpivot_corrected; Type: VIEW; Schema: ws_dream; Owner: -
--

CREATE VIEW ws_dream.view_survey_grid_0_for_6m_unpivot_corrected AS
 SELECT exploded.id_grid,
    exploded.animals_id,
    exploded.val
   FROM ( SELECT survey_grid_0_for_6m.id_grid,
            ("substring"(unnest(ARRAY['locations_animal_1181'::text, 'locations_animal_1182'::text, 'locations_animal_1183'::text, 'locations_animal_1186'::text, 'locations_animal_1190'::text, 'locations_animal_1195'::text, 'locations_animal_1200'::text, 'locations_animal_1187'::text, 'locations_animal_1193'::text, 'locations_animal_1194'::text, 'locations_animal_1196'::text, 'locations_animal_1197'::text, 'locations_animal_1199'::text]), 18, 4))::integer AS animals_id,
            (unnest(ARRAY[(survey_grid_0_for_6m.locations_animal_1181)::text, (survey_grid_0_for_6m.locations_animal_1182)::text, (survey_grid_0_for_6m.locations_animal_1183)::text, (survey_grid_0_for_6m.locations_animal_1186)::text, (survey_grid_0_for_6m.locations_animal_1190)::text, (survey_grid_0_for_6m.locations_animal_1195)::text, (survey_grid_0_for_6m.locations_animal_1200)::text, (survey_grid_0_for_6m.locations_animal_1187)::text, (survey_grid_0_for_6m.locations_animal_1193)::text, (survey_grid_0_for_6m.locations_animal_1194)::text, (survey_grid_0_for_6m.locations_animal_1196)::text, (survey_grid_0_for_6m.locations_animal_1197)::text, (survey_grid_0_for_6m.locations_animal_1199)::text]))::integer AS val
           FROM ws_dream.survey_grid_0_for_6m) exploded
  WHERE (exploded.val IS NOT NULL)
  ORDER BY exploded.animals_id, exploded.val DESC;


--
-- Name: view_survey_grid_0_for_6m_unpivot_corrected_veg; Type: VIEW; Schema: ws_dream; Owner: -
--

CREATE VIEW ws_dream.view_survey_grid_0_for_6m_unpivot_corrected_veg AS
 SELECT view_survey_grid_0_for_6m_unpivot_corrected.animals_id,
    view_survey_grid_0_for_6m_unpivot_corrected.val,
    survey_veg_data.id_grid,
    survey_veg_data.elevation,
    survey_veg_data.aspect_class_new,
    survey_veg_data.slope_class,
    survey_veg_data.physiography_new,
    survey_veg_data.canopy_totalperc,
    survey_veg_data.tree_canopy_conifer_absperc,
    survey_veg_data.tree_canopy_broadleaved_absperc,
    survey_veg_data.canopy_preval,
    survey_veg_data.tree_canopy_height_m_corr,
    survey_veg_data.tree_canopy_tot_5m,
    survey_veg_data.tree_canopy_tot_15m,
    survey_veg_data.tree_canopy_tot_25m,
    survey_veg_data.tree_canopy_tot_absent,
    survey_veg_data.tree_canopy_tot_0dot5mleaves,
    survey_veg_data.tree_canopy_tot_1dot5mleaves,
    survey_veg_data.tree_canopy_tot_2dot0mleaves,
    survey_veg_data.tree_canopy_height_leaves_m,
    survey_veg_data.tree_management,
    survey_veg_data.tree_sprouts_new,
    survey_veg_data.tree_sprouts_broadl_perc,
    survey_veg_data.tree_sprouts_conif_perc,
    survey_veg_data.shrub_coverperc,
    survey_veg_data.shrub_tot_absent,
    survey_veg_data.shrub_tot_0dot5m,
    survey_veg_data.shrub_tot_1dot5m,
    survey_veg_data.shrub_tot_2dot0m,
    survey_veg_data.shrub_height_m,
    survey_veg_data.shrub_fernsperc,
    survey_veg_data.herb_coverperc,
    survey_veg_data.herb_gpperc_abs,
    survey_veg_data.herb_gnperc_abs,
    survey_veg_data.herb_leperc_abs,
    survey_veg_data.herb_alperc_abs,
    survey_veg_data.herb_svperc_abs,
    survey_veg_data.visibility_10mperc,
    survey_veg_data.visibility_25mperc,
    survey_veg_data.clc4_perc,
    survey_veg_data.clc4_description,
    survey_veg_data.clc4_dominant
   FROM ws_dream.survey_veg_data,
    ws_dream.view_survey_grid_0_for_6m_unpivot_corrected
  WHERE (survey_veg_data.id_grid = (view_survey_grid_0_for_6m_unpivot_corrected.id_grid)::double precision)
  ORDER BY view_survey_grid_0_for_6m_unpivot_corrected.animals_id;


--
-- Name: view_survey_grid_0_for_6m_unpivot_veg; Type: VIEW; Schema: ws_dream; Owner: -
--

CREATE VIEW ws_dream.view_survey_grid_0_for_6m_unpivot_veg AS
 SELECT view_survey_grid_0_for_6m_unpivot.animals_id,
    view_survey_grid_0_for_6m_unpivot.val,
    survey_veg_data.id_grid,
    survey_veg_data.elevation,
    survey_veg_data.aspect_class_new,
    survey_veg_data.slope_class,
    survey_veg_data.physiography_new,
    survey_veg_data.canopy_totalperc,
    survey_veg_data.tree_canopy_conifer_absperc,
    survey_veg_data.tree_canopy_broadleaved_absperc,
    survey_veg_data.canopy_preval,
    survey_veg_data.tree_canopy_height_m_corr,
    survey_veg_data.tree_canopy_tot_5m,
    survey_veg_data.tree_canopy_tot_15m,
    survey_veg_data.tree_canopy_tot_25m,
    survey_veg_data.tree_canopy_tot_absent,
    survey_veg_data.tree_canopy_tot_0dot5mleaves,
    survey_veg_data.tree_canopy_tot_1dot5mleaves,
    survey_veg_data.tree_canopy_tot_2dot0mleaves,
    survey_veg_data.tree_canopy_height_leaves_m,
    survey_veg_data.tree_management,
    survey_veg_data.tree_sprouts_new,
    survey_veg_data.tree_sprouts_broadl_perc,
    survey_veg_data.tree_sprouts_conif_perc,
    survey_veg_data.shrub_coverperc,
    survey_veg_data.shrub_tot_absent,
    survey_veg_data.shrub_tot_0dot5m,
    survey_veg_data.shrub_tot_1dot5m,
    survey_veg_data.shrub_tot_2dot0m,
    survey_veg_data.shrub_height_m,
    survey_veg_data.shrub_fernsperc,
    survey_veg_data.herb_coverperc,
    survey_veg_data.herb_gpperc_abs,
    survey_veg_data.herb_gnperc_abs,
    survey_veg_data.herb_leperc_abs,
    survey_veg_data.herb_alperc_abs,
    survey_veg_data.herb_svperc_abs,
    survey_veg_data.visibility_10mperc,
    survey_veg_data.visibility_25mperc,
    survey_veg_data.clc4_perc,
    survey_veg_data.clc4_description,
    survey_veg_data.clc4_dominant
   FROM ws_dream.survey_veg_data,
    ws_dream.view_survey_grid_0_for_6m_unpivot
  WHERE (survey_veg_data.id_grid = (view_survey_grid_0_for_6m_unpivot.id_grid)::double precision)
  ORDER BY view_survey_grid_0_for_6m_unpivot.animals_id;


--
-- Name: view_survey_grid_3m_for_6m_unpivot; Type: VIEW; Schema: ws_dream; Owner: -
--

CREATE VIEW ws_dream.view_survey_grid_3m_for_6m_unpivot AS
 SELECT exploded.id_grid,
    exploded.animals_id,
    exploded.val
   FROM ( SELECT survey_grid_3m_for_6m.id_grid,
            ("substring"(unnest(ARRAY['locations_animal_1181'::text, 'locations_animal_1182'::text, 'locations_animal_1183'::text, 'locations_animal_1186'::text, 'locations_animal_1190'::text, 'locations_animal_1193'::text, 'locations_animal_1194'::text, 'locations_animal_1196'::text, 'locations_animal_1197'::text, 'locations_animal_1199'::text]), 18, 4))::integer AS animals_id,
            (unnest(ARRAY[(survey_grid_3m_for_6m.locations_animal_1181)::text, (survey_grid_3m_for_6m.locations_animal_1182)::text, (survey_grid_3m_for_6m.locations_animal_1183)::text, (survey_grid_3m_for_6m.locations_animal_1186)::text, (survey_grid_3m_for_6m.locations_animal_1190)::text, (survey_grid_3m_for_6m.locations_animal_1193)::text, (survey_grid_3m_for_6m.locations_animal_1194)::text, (survey_grid_3m_for_6m.locations_animal_1196)::text, (survey_grid_3m_for_6m.locations_animal_1197)::text, (survey_grid_3m_for_6m.locations_animal_1199)::text]))::integer AS val
           FROM ws_dream.survey_grid_3m_for_6m) exploded
  WHERE (exploded.val IS NOT NULL)
  ORDER BY exploded.animals_id, exploded.val DESC;


--
-- Name: view_survey_grid_3m_for_6m_unpivot_veg; Type: VIEW; Schema: ws_dream; Owner: -
--

CREATE VIEW ws_dream.view_survey_grid_3m_for_6m_unpivot_veg AS
 SELECT view_survey_grid_3m_for_6m_unpivot.animals_id,
    view_survey_grid_3m_for_6m_unpivot.val,
    survey_veg_data.id_grid,
    survey_veg_data.elevation,
    survey_veg_data.aspect_class_new,
    survey_veg_data.slope_class,
    survey_veg_data.physiography_new,
    survey_veg_data.canopy_totalperc,
    survey_veg_data.tree_canopy_conifer_absperc,
    survey_veg_data.tree_canopy_broadleaved_absperc,
    survey_veg_data.canopy_preval,
    survey_veg_data.tree_canopy_height_m_corr,
    survey_veg_data.tree_canopy_tot_5m,
    survey_veg_data.tree_canopy_tot_15m,
    survey_veg_data.tree_canopy_tot_25m,
    survey_veg_data.tree_canopy_tot_absent,
    survey_veg_data.tree_canopy_tot_0dot5mleaves,
    survey_veg_data.tree_canopy_tot_1dot5mleaves,
    survey_veg_data.tree_canopy_tot_2dot0mleaves,
    survey_veg_data.tree_canopy_height_leaves_m,
    survey_veg_data.tree_management,
    survey_veg_data.tree_sprouts_new,
    survey_veg_data.tree_sprouts_broadl_perc,
    survey_veg_data.tree_sprouts_conif_perc,
    survey_veg_data.shrub_coverperc,
    survey_veg_data.shrub_tot_absent,
    survey_veg_data.shrub_tot_0dot5m,
    survey_veg_data.shrub_tot_1dot5m,
    survey_veg_data.shrub_tot_2dot0m,
    survey_veg_data.shrub_height_m,
    survey_veg_data.shrub_fernsperc,
    survey_veg_data.herb_coverperc,
    survey_veg_data.herb_gpperc_abs,
    survey_veg_data.herb_gnperc_abs,
    survey_veg_data.herb_leperc_abs,
    survey_veg_data.herb_alperc_abs,
    survey_veg_data.herb_svperc_abs,
    survey_veg_data.visibility_10mperc,
    survey_veg_data.visibility_25mperc,
    survey_veg_data.clc4_perc,
    survey_veg_data.clc4_description,
    survey_veg_data.clc4_dominant
   FROM ws_dream.survey_veg_data,
    ws_dream.view_survey_grid_3m_for_6m_unpivot
  WHERE (survey_veg_data.id_grid = (view_survey_grid_3m_for_6m_unpivot.id_grid)::double precision)
  ORDER BY view_survey_grid_3m_for_6m_unpivot.animals_id;


--
-- Name: view_survey_grid_6m_for_6m_unpivot; Type: VIEW; Schema: ws_dream; Owner: -
--

CREATE VIEW ws_dream.view_survey_grid_6m_for_6m_unpivot AS
 SELECT exploded.id_grid,
    exploded.animals_id,
    exploded.val
   FROM ( SELECT survey_grid_6m_for_6m.id_grid,
            ("substring"(unnest(ARRAY['locations_animal_1181'::text, 'locations_animal_1182'::text, 'locations_animal_1183'::text, 'locations_animal_1186'::text, 'locations_animal_1190'::text, 'locations_animal_1193'::text, 'locations_animal_1194'::text, 'locations_animal_1196'::text, 'locations_animal_1197'::text, 'locations_animal_1199'::text]), 18, 4))::integer AS animals_id,
            (unnest(ARRAY[(survey_grid_6m_for_6m.locations_animal_1181)::text, (survey_grid_6m_for_6m.locations_animal_1182)::text, (survey_grid_6m_for_6m.locations_animal_1183)::text, (survey_grid_6m_for_6m.locations_animal_1186)::text, (survey_grid_6m_for_6m.locations_animal_1190)::text, (survey_grid_6m_for_6m.locations_animal_1193)::text, (survey_grid_6m_for_6m.locations_animal_1194)::text, (survey_grid_6m_for_6m.locations_animal_1196)::text, (survey_grid_6m_for_6m.locations_animal_1197)::text, (survey_grid_6m_for_6m.locations_animal_1199)::text]))::integer AS val
           FROM ws_dream.survey_grid_6m_for_6m) exploded
  WHERE (exploded.val IS NOT NULL)
  ORDER BY exploded.animals_id, exploded.val DESC;


--
-- Name: view_survey_grid_6m_for_6m_unpivot_veg; Type: VIEW; Schema: ws_dream; Owner: -
--

CREATE VIEW ws_dream.view_survey_grid_6m_for_6m_unpivot_veg AS
 SELECT view_survey_grid_6m_for_6m_unpivot.animals_id,
    view_survey_grid_6m_for_6m_unpivot.val,
    survey_veg_data.id_grid,
    survey_veg_data.elevation,
    survey_veg_data.aspect_class_new,
    survey_veg_data.slope_class,
    survey_veg_data.physiography_new,
    survey_veg_data.canopy_totalperc,
    survey_veg_data.tree_canopy_conifer_absperc,
    survey_veg_data.tree_canopy_broadleaved_absperc,
    survey_veg_data.canopy_preval,
    survey_veg_data.tree_canopy_height_m_corr,
    survey_veg_data.tree_canopy_tot_5m,
    survey_veg_data.tree_canopy_tot_15m,
    survey_veg_data.tree_canopy_tot_25m,
    survey_veg_data.tree_canopy_tot_absent,
    survey_veg_data.tree_canopy_tot_0dot5mleaves,
    survey_veg_data.tree_canopy_tot_1dot5mleaves,
    survey_veg_data.tree_canopy_tot_2dot0mleaves,
    survey_veg_data.tree_canopy_height_leaves_m,
    survey_veg_data.tree_management,
    survey_veg_data.tree_sprouts_new,
    survey_veg_data.tree_sprouts_broadl_perc,
    survey_veg_data.tree_sprouts_conif_perc,
    survey_veg_data.shrub_coverperc,
    survey_veg_data.shrub_tot_absent,
    survey_veg_data.shrub_tot_0dot5m,
    survey_veg_data.shrub_tot_1dot5m,
    survey_veg_data.shrub_tot_2dot0m,
    survey_veg_data.shrub_height_m,
    survey_veg_data.shrub_fernsperc,
    survey_veg_data.herb_coverperc,
    survey_veg_data.herb_gpperc_abs,
    survey_veg_data.herb_gnperc_abs,
    survey_veg_data.herb_leperc_abs,
    survey_veg_data.herb_alperc_abs,
    survey_veg_data.herb_svperc_abs,
    survey_veg_data.visibility_10mperc,
    survey_veg_data.visibility_25mperc,
    survey_veg_data.clc4_perc,
    survey_veg_data.clc4_description,
    survey_veg_data.clc4_dominant
   FROM ws_dream.survey_veg_data,
    ws_dream.view_survey_grid_6m_for_6m_unpivot
  WHERE (survey_veg_data.id_grid = (view_survey_grid_6m_for_6m_unpivot.id_grid)::double precision)
  ORDER BY view_survey_grid_6m_for_6m_unpivot.animals_id;


--
-- Name: view_survey_grid_6m_unpivot; Type: VIEW; Schema: ws_dream; Owner: -
--

CREATE VIEW ws_dream.view_survey_grid_6m_unpivot AS
 SELECT exploded.id_grid,
    exploded.animals_id,
    exploded.val
   FROM ( SELECT survey_grid_6m.id_grid,
            ("substring"(unnest(ARRAY['locations_animal_1181'::text, 'locations_animal_1182'::text, 'locations_animal_1183'::text, 'locations_animal_1186'::text, 'locations_animal_1190'::text, 'locations_animal_1193'::text, 'locations_animal_1194'::text, 'locations_animal_1196'::text, 'locations_animal_1197'::text, 'locations_animal_1199'::text]), 18, 4))::integer AS animals_id,
            (unnest(ARRAY[(survey_grid_6m.locations_animal_1181)::text, (survey_grid_6m.locations_animal_1182)::text, (survey_grid_6m.locations_animal_1183)::text, (survey_grid_6m.locations_animal_1186)::text, (survey_grid_6m.locations_animal_1190)::text, (survey_grid_6m.locations_animal_1193)::text, (survey_grid_6m.locations_animal_1194)::text, (survey_grid_6m.locations_animal_1196)::text, (survey_grid_6m.locations_animal_1197)::text, (survey_grid_6m.locations_animal_1199)::text]))::integer AS val
           FROM ws_dream.survey_grid_6m) exploded
  WHERE (exploded.val IS NOT NULL)
  ORDER BY exploded.animals_id, exploded.val DESC;


--
-- Name: view_survey_grid_6m_unpivot_veg; Type: VIEW; Schema: ws_dream; Owner: -
--

CREATE VIEW ws_dream.view_survey_grid_6m_unpivot_veg AS
 SELECT view_survey_grid_6m_unpivot.animals_id,
    view_survey_grid_6m_unpivot.val,
    survey_veg_data.id_grid,
    survey_veg_data.elevation,
    survey_veg_data.aspect_class_new,
    survey_veg_data.slope_class,
    survey_veg_data.physiography_new,
    survey_veg_data.canopy_totalperc,
    survey_veg_data.tree_canopy_conifer_absperc,
    survey_veg_data.tree_canopy_broadleaved_absperc,
    survey_veg_data.canopy_preval,
    survey_veg_data.tree_canopy_height_m_corr,
    survey_veg_data.tree_canopy_tot_5m,
    survey_veg_data.tree_canopy_tot_15m,
    survey_veg_data.tree_canopy_tot_25m,
    survey_veg_data.tree_canopy_tot_absent,
    survey_veg_data.tree_canopy_tot_0dot5mleaves,
    survey_veg_data.tree_canopy_tot_1dot5mleaves,
    survey_veg_data.tree_canopy_tot_2dot0mleaves,
    survey_veg_data.tree_canopy_height_leaves_m,
    survey_veg_data.tree_management,
    survey_veg_data.tree_sprouts_new,
    survey_veg_data.tree_sprouts_broadl_perc,
    survey_veg_data.tree_sprouts_conif_perc,
    survey_veg_data.shrub_coverperc,
    survey_veg_data.shrub_tot_absent,
    survey_veg_data.shrub_tot_0dot5m,
    survey_veg_data.shrub_tot_1dot5m,
    survey_veg_data.shrub_tot_2dot0m,
    survey_veg_data.shrub_height_m,
    survey_veg_data.shrub_fernsperc,
    survey_veg_data.herb_coverperc,
    survey_veg_data.herb_gpperc_abs,
    survey_veg_data.herb_gnperc_abs,
    survey_veg_data.herb_leperc_abs,
    survey_veg_data.herb_alperc_abs,
    survey_veg_data.herb_svperc_abs,
    survey_veg_data.visibility_10mperc,
    survey_veg_data.visibility_25mperc,
    survey_veg_data.clc4_perc,
    survey_veg_data.clc4_description,
    survey_veg_data.clc4_dominant
   FROM ws_dream.survey_veg_data,
    ws_dream.view_survey_grid_6m_unpivot
  WHERE (survey_veg_data.id_grid = (view_survey_grid_6m_unpivot.id_grid)::double precision)
  ORDER BY view_survey_grid_6m_unpivot.animals_id;


--
-- Name: view_survey_veg_animals; Type: VIEW; Schema: ws_dream; Owner: -
--

CREATE VIEW ws_dream.view_survey_veg_animals AS
 SELECT survey_veg_data.id_grid,
    survey_veg_data.elevation,
    survey_veg_data.aspect_class,
    survey_veg_data.slope_class,
    survey_veg_data.physiography_class,
    survey_veg_data.ground_class,
    survey_veg_data.canopy_total_perc,
    survey_veg_data.tree_canopy_conifer_perc,
    survey_veg_data.tree_canopy_broadleaved_perc,
    survey_veg_data.tree_canopy_height_m,
    survey_veg_data.tree_canopy_height_leaves_m,
    survey_veg_data.tree_management_class,
    survey_veg_data.tree_renewal_class,
    survey_veg_data.tree_sprout_class,
    survey_veg_data.shrub_cover_perc,
    survey_veg_data.shrub_height_m,
    survey_veg_data.shrub_ferns_perc,
    survey_veg_data.herb_cover_perc,
    survey_veg_data.herb_gp_perc,
    survey_veg_data.herb_gn_perc,
    survey_veg_data.herb_le_perc,
    survey_veg_data.herb_al_perc,
    survey_veg_data.herb_sv_perc,
    survey_veg_data.visibility_10m_perc,
    survey_veg_data.visibility_25m_perc,
    survey_grid.locations_animal_1181,
    survey_grid.locations_animal_1182,
    survey_grid.locations_animal_1183,
    survey_grid.locations_animal_1186,
    survey_grid.locations_animal_1187,
    survey_grid.locations_animal_1189,
    survey_grid.locations_animal_1190,
    survey_grid.locations_animal_1193,
    survey_grid.locations_animal_1194,
    survey_grid.locations_animal_1195,
    survey_grid.locations_animal_1196,
    survey_grid.locations_animal_1197,
    survey_grid.locations_animal_1199,
    survey_grid.locations_animal_1200,
    survey_grid.locations_animal_1458,
    survey_grid.locations_animal_1459,
    survey_grid.locations_animal_1460,
    survey_grid.assigned_animal_1181,
    survey_grid.assigned_animal_1182,
    survey_grid.assigned_animal_1183,
    survey_grid.assigned_animal_1186,
    survey_grid.assigned_animal_1187,
    survey_grid.assigned_animal_1189,
    survey_grid.assigned_animal_1190,
    survey_grid.assigned_animal_1193,
    survey_grid.assigned_animal_1194,
    survey_grid.assigned_animal_1195,
    survey_grid.assigned_animal_1196,
    survey_grid.assigned_animal_1197,
    survey_grid.assigned_animal_1199,
    survey_grid.assigned_animal_1200
   FROM ws_dream.survey_veg_data_old survey_veg_data,
    ws_dream.survey_grid
  WHERE (survey_veg_data.id_grid = survey_grid.id_grid)
  ORDER BY survey_veg_data.id_grid;


--
-- Name: view_trajectories_aspromonte; Type: VIEW; Schema: ws_dream; Owner: -
--

CREATE VIEW ws_dream.view_trajectories_aspromonte AS
 SELECT b.animals_id,
    b.animals_original_name AS name,
    b.study_areas_id AS studies_id,
    (foo2.geom)::public.geometry(LineString,4326) AS geom
   FROM ( SELECT foo.animals_id,
            public.st_makeline(foo.geom) AS geom
           FROM ( SELECT view_gps_positions_aspromonte.geom,
                    view_gps_positions_aspromonte.animals_id,
                    view_gps_positions_aspromonte.acquisition_time
                   FROM ws_dream.view_gps_positions_aspromonte
                  WHERE (view_gps_positions_aspromonte.gps_validity_code = 1)
                  ORDER BY view_gps_positions_aspromonte.animals_id, view_gps_positions_aspromonte.acquisition_time) foo
          GROUP BY foo.animals_id) foo2,
    main.animals b
  WHERE (b.animals_id = foo2.animals_id);


--
-- Name: VIEW view_trajectories_aspromonte; Type: COMMENT; Schema: ws_dream; Owner: -
--

COMMENT ON VIEW ws_dream.view_trajectories_aspromonte IS 'Complete trajectories as linear spatial features per each of the animals of Aspromonte study area (DREAm research group).';


--
-- Name: view_trajectories_aspromonte_0_for_6m; Type: VIEW; Schema: ws_dream; Owner: -
--

CREATE VIEW ws_dream.view_trajectories_aspromonte_0_for_6m AS
 SELECT b.animals_id,
    b.animals_original_name AS name,
    b.study_areas_id AS studies_id,
    (foo2.geom)::public.geometry(LineString,4326) AS geom
   FROM ( SELECT foo.animals_id,
            public.st_makeline(foo.geom) AS geom
           FROM ( SELECT view_gps_data_aspromonte_0_for_6m.geom,
                    view_gps_data_aspromonte_0_for_6m.animals_id,
                    view_gps_data_aspromonte_0_for_6m.acquisition_time
                   FROM ws_dream.view_gps_data_aspromonte_0_for_6m
                  WHERE (view_gps_data_aspromonte_0_for_6m.gps_validity_code = 1)
                  ORDER BY view_gps_data_aspromonte_0_for_6m.animals_id, view_gps_data_aspromonte_0_for_6m.acquisition_time) foo
          GROUP BY foo.animals_id) foo2,
    main.animals b
  WHERE (b.animals_id = foo2.animals_id);


--
-- Name: view_trajectories_aspromonte_0_for_6m_buffer; Type: VIEW; Schema: ws_dream; Owner: -
--

CREATE VIEW ws_dream.view_trajectories_aspromonte_0_for_6m_buffer AS
 SELECT foo2.animals_id,
    foo2.animals_original_name AS name,
    (public.st_buffer((foo2.geom)::public.geography, (100)::double precision))::public.geometry(Polygon,4326) AS geom
   FROM ( SELECT foo.animals_id,
            public.st_makeline(foo.geom) AS geom,
            foo.animals_original_name
           FROM ( SELECT view_gps_data_aspromonte_0_for_6m.geom,
                    view_gps_data_aspromonte_0_for_6m.animals_id,
                    view_gps_data_aspromonte_0_for_6m.acquisition_time,
                    view_gps_data_aspromonte_0_for_6m.animals_original_name
                   FROM ws_dream.view_gps_data_aspromonte_0_for_6m
                  WHERE (view_gps_data_aspromonte_0_for_6m.gps_validity_code = 1)
                  ORDER BY view_gps_data_aspromonte_0_for_6m.animals_id, view_gps_data_aspromonte_0_for_6m.acquisition_time) foo
          GROUP BY foo.animals_id, foo.animals_original_name) foo2;


--
-- Name: view_trajectories_aspromonte_3m_for_6m; Type: VIEW; Schema: ws_dream; Owner: -
--

CREATE VIEW ws_dream.view_trajectories_aspromonte_3m_for_6m AS
 SELECT b.animals_id,
    b.animals_original_name AS name,
    b.study_areas_id AS studies_id,
    (foo2.geom)::public.geometry(LineString,4326) AS geom
   FROM ( SELECT foo.animals_id,
            public.st_makeline(foo.geom) AS geom
           FROM ( SELECT view_gps_data_aspromonte_3m_for_6m.geom,
                    view_gps_data_aspromonte_3m_for_6m.animals_id,
                    view_gps_data_aspromonte_3m_for_6m.acquisition_time
                   FROM ws_dream.view_gps_data_aspromonte_3m_for_6m
                  WHERE (view_gps_data_aspromonte_3m_for_6m.gps_validity_code = 1)
                  ORDER BY view_gps_data_aspromonte_3m_for_6m.animals_id, view_gps_data_aspromonte_3m_for_6m.acquisition_time) foo
          GROUP BY foo.animals_id) foo2,
    main.animals b
  WHERE (b.animals_id = foo2.animals_id);


--
-- Name: view_trajectories_aspromonte_3m_for_6m_buffer; Type: VIEW; Schema: ws_dream; Owner: -
--

CREATE VIEW ws_dream.view_trajectories_aspromonte_3m_for_6m_buffer AS
 SELECT foo2.animals_id,
    foo2.animals_original_name AS name,
    (public.st_buffer((foo2.geom)::public.geography, (100)::double precision))::public.geometry(Polygon,4326) AS geom
   FROM ( SELECT foo.animals_id,
            public.st_makeline(foo.geom) AS geom,
            foo.animals_original_name
           FROM ( SELECT view_gps_data_aspromonte_3m_for_6m.geom,
                    view_gps_data_aspromonte_3m_for_6m.animals_id,
                    view_gps_data_aspromonte_3m_for_6m.acquisition_time,
                    view_gps_data_aspromonte_3m_for_6m.animals_original_name
                   FROM ws_dream.view_gps_data_aspromonte_3m_for_6m
                  WHERE (view_gps_data_aspromonte_3m_for_6m.gps_validity_code = 1)
                  ORDER BY view_gps_data_aspromonte_3m_for_6m.animals_id, view_gps_data_aspromonte_3m_for_6m.acquisition_time) foo
          GROUP BY foo.animals_id, foo.animals_original_name) foo2;


--
-- Name: view_trajectories_aspromonte_6m; Type: VIEW; Schema: ws_dream; Owner: -
--

CREATE VIEW ws_dream.view_trajectories_aspromonte_6m AS
 SELECT b.animals_id,
    b.animals_original_name AS name,
    b.study_areas_id AS studies_id,
    (foo2.geom)::public.geometry(LineString,4326) AS geom
   FROM ( SELECT foo.animals_id,
            public.st_makeline(foo.geom) AS geom
           FROM ( SELECT view_gps_data_aspromonte_6m.geom,
                    view_gps_data_aspromonte_6m.animals_id,
                    view_gps_data_aspromonte_6m.acquisition_time
                   FROM ws_dream.view_gps_data_aspromonte_6m
                  WHERE (view_gps_data_aspromonte_6m.gps_validity_code = 1)
                  ORDER BY view_gps_data_aspromonte_6m.animals_id, view_gps_data_aspromonte_6m.acquisition_time) foo
          GROUP BY foo.animals_id) foo2,
    main.animals b
  WHERE (b.animals_id = foo2.animals_id);


--
-- Name: view_trajectories_aspromonte_6m_buffer; Type: VIEW; Schema: ws_dream; Owner: -
--

CREATE VIEW ws_dream.view_trajectories_aspromonte_6m_buffer AS
 SELECT foo2.animals_id,
    foo2.animals_original_name AS name,
    (public.st_buffer((foo2.geom)::public.geography, (100)::double precision))::public.geometry(Polygon,4326) AS geom
   FROM ( SELECT foo.animals_id,
            public.st_makeline(foo.geom) AS geom,
            foo.animals_original_name
           FROM ( SELECT view_gps_data_aspromonte_6m.geom,
                    view_gps_data_aspromonte_6m.animals_id,
                    view_gps_data_aspromonte_6m.acquisition_time,
                    view_gps_data_aspromonte_6m.animals_original_name
                   FROM ws_dream.view_gps_data_aspromonte_6m
                  WHERE (view_gps_data_aspromonte_6m.gps_validity_code = 1)
                  ORDER BY view_gps_data_aspromonte_6m.animals_id, view_gps_data_aspromonte_6m.acquisition_time) foo
          GROUP BY foo.animals_id, foo.animals_original_name) foo2;


--
-- Name: view_trajectories_aspromonte_6m_for_6m; Type: VIEW; Schema: ws_dream; Owner: -
--

CREATE VIEW ws_dream.view_trajectories_aspromonte_6m_for_6m AS
 SELECT b.animals_id,
    b.animals_original_name AS name,
    b.study_areas_id AS studies_id,
    (foo2.geom)::public.geometry(LineString,4326) AS geom
   FROM ( SELECT foo.animals_id,
            public.st_makeline(foo.geom) AS geom
           FROM ( SELECT view_gps_data_aspromonte_6m_for_6m.geom,
                    view_gps_data_aspromonte_6m_for_6m.animals_id,
                    view_gps_data_aspromonte_6m_for_6m.acquisition_time
                   FROM ws_dream.view_gps_data_aspromonte_6m_for_6m
                  WHERE (view_gps_data_aspromonte_6m_for_6m.gps_validity_code = 1)
                  ORDER BY view_gps_data_aspromonte_6m_for_6m.animals_id, view_gps_data_aspromonte_6m_for_6m.acquisition_time) foo
          GROUP BY foo.animals_id) foo2,
    main.animals b
  WHERE (b.animals_id = foo2.animals_id);


--
-- Name: view_trajectories_aspromonte_6m_for_6m_buffer; Type: VIEW; Schema: ws_dream; Owner: -
--

CREATE VIEW ws_dream.view_trajectories_aspromonte_6m_for_6m_buffer AS
 SELECT foo2.animals_id,
    foo2.animals_original_name AS name,
    (public.st_buffer((foo2.geom)::public.geography, (100)::double precision))::public.geometry(Polygon,4326) AS geom
   FROM ( SELECT foo.animals_id,
            public.st_makeline(foo.geom) AS geom,
            foo.animals_original_name
           FROM ( SELECT view_gps_data_aspromonte_6m_for_6m.geom,
                    view_gps_data_aspromonte_6m_for_6m.animals_id,
                    view_gps_data_aspromonte_6m_for_6m.acquisition_time,
                    view_gps_data_aspromonte_6m_for_6m.animals_original_name
                   FROM ws_dream.view_gps_data_aspromonte_6m_for_6m
                  WHERE (view_gps_data_aspromonte_6m_for_6m.gps_validity_code = 1)
                  ORDER BY view_gps_data_aspromonte_6m_for_6m.animals_id, view_gps_data_aspromonte_6m_for_6m.acquisition_time) foo
          GROUP BY foo.animals_id, foo.animals_original_name) foo2;


--
-- Name: view_trajectories_aspromonte_sample; Type: VIEW; Schema: ws_dream; Owner: -
--

CREATE VIEW ws_dream.view_trajectories_aspromonte_sample AS
 SELECT foo2.animals_id,
    foo2.animals_original_name AS name,
    (foo2.geom)::public.geometry(LineString,4326) AS geom
   FROM ( SELECT foo.animals_id,
            public.st_makeline(foo.geom) AS geom,
            foo.animals_original_name
           FROM ( SELECT gps_data_aspromonte.geom,
                    gps_data_aspromonte.animals_id,
                    gps_data_aspromonte.acquisition_time,
                    gps_data_aspromonte.animals_original_name
                   FROM ws_dream.gps_data_aspromonte
                  WHERE ((gps_data_aspromonte.gps_validity_code = 1) AND (gps_data_aspromonte.first_sample = 1))
                  ORDER BY gps_data_aspromonte.animals_id, gps_data_aspromonte.acquisition_time) foo
          GROUP BY foo.animals_id, foo.animals_original_name) foo2;


--
-- Name: view_trajectories_aspromonte_sample_all; Type: VIEW; Schema: ws_dream; Owner: -
--

CREATE VIEW ws_dream.view_trajectories_aspromonte_sample_all AS
 SELECT foo2.animals_id,
    foo2.animals_original_name AS name,
    (foo2.geom)::public.geometry(LineString,4326) AS geom
   FROM ( SELECT foo.animals_id,
            public.st_makeline(foo.geom) AS geom,
            foo.animals_original_name
           FROM ( SELECT gps_data_aspromonte.geom,
                    gps_data_aspromonte.animals_id,
                    gps_data_aspromonte.acquisition_time,
                    gps_data_aspromonte.animals_original_name
                   FROM ws_dream.gps_data_aspromonte
                  WHERE (gps_data_aspromonte.gps_validity_code = 1)
                  ORDER BY gps_data_aspromonte.animals_id, gps_data_aspromonte.acquisition_time) foo
          GROUP BY foo.animals_id, foo.animals_original_name) foo2;


--
-- Name: view_trajectories_aspromonte_sample_buffer; Type: VIEW; Schema: ws_dream; Owner: -
--

CREATE VIEW ws_dream.view_trajectories_aspromonte_sample_buffer AS
 SELECT foo2.animals_id,
    foo2.animals_original_name AS name,
    (public.st_buffer((foo2.geom)::public.geography, (100)::double precision))::public.geometry(Polygon,4326) AS geom
   FROM ( SELECT foo.animals_id,
            public.st_makeline(foo.geom) AS geom,
            foo.animals_original_name
           FROM ( SELECT gps_data_aspromonte.geom,
                    gps_data_aspromonte.animals_id,
                    gps_data_aspromonte.acquisition_time,
                    gps_data_aspromonte.animals_original_name
                   FROM ws_dream.gps_data_aspromonte
                  WHERE ((gps_data_aspromonte.gps_validity_code = 1) AND (gps_data_aspromonte.first_sample = 1))
                  ORDER BY gps_data_aspromonte.animals_id, gps_data_aspromonte.acquisition_time) foo
          GROUP BY foo.animals_id, foo.animals_original_name) foo2;


--
-- Name: view_trajectories_aspromonte_sample_buffer_all; Type: VIEW; Schema: ws_dream; Owner: -
--

CREATE VIEW ws_dream.view_trajectories_aspromonte_sample_buffer_all AS
 SELECT foo2.animals_id,
    foo2.animals_original_name AS name,
    (public.st_buffer((foo2.geom)::public.geography, (100)::double precision))::public.geometry(Polygon,4326) AS geom
   FROM ( SELECT foo.animals_id,
            public.st_makeline(foo.geom) AS geom,
            foo.animals_original_name
           FROM ( SELECT gps_data_aspromonte.geom,
                    gps_data_aspromonte.animals_id,
                    gps_data_aspromonte.acquisition_time,
                    gps_data_aspromonte.animals_original_name
                   FROM ws_dream.gps_data_aspromonte
                  WHERE (gps_data_aspromonte.gps_validity_code = 1)
                  ORDER BY gps_data_aspromonte.animals_id, gps_data_aspromonte.acquisition_time) foo
          GROUP BY foo.animals_id, foo.animals_original_name) foo2;


--
-- Name: activity_data_animals_hjoellund_denmark; Type: TABLE; Schema: ws_fabio; Owner: -
--

CREATE TABLE ws_fabio.activity_data_animals_hjoellund_denmark (
    gmt_date date,
    gmt_time time with time zone,
    act_1 integer,
    act_2 integer,
    temperature_activity integer,
    animals_original_id character varying,
    animals_id integer,
    gps_sensors_id integer,
    sensors_original_id character varying,
    research_groups_id integer,
    animals_original_name character varying,
    activity_sensor_mode_code integer,
    activity_validity_code integer,
    acquisition_time timestamp with time zone,
    p_key bigint NOT NULL,
    act_3 integer
);


--
-- Name: activity_data_animals_hjoellund_denmark_p_key_seq; Type: SEQUENCE; Schema: ws_fabio; Owner: -
--

CREATE SEQUENCE ws_fabio.activity_data_animals_hjoellund_denmark_p_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: activity_data_animals_hjoellund_denmark_p_key_seq; Type: SEQUENCE OWNED BY; Schema: ws_fabio; Owner: -
--

ALTER SEQUENCE ws_fabio.activity_data_animals_hjoellund_denmark_p_key_seq OWNED BY ws_fabio.activity_data_animals_hjoellund_denmark.p_key;


--
-- Name: activity_data_animals_kaloe_denmark; Type: TABLE; Schema: ws_fabio; Owner: -
--

CREATE TABLE ws_fabio.activity_data_animals_kaloe_denmark (
    utc_date date,
    utc_time time with time zone,
    act_1 integer,
    act_2 integer,
    temperature_activity integer,
    animals_original_id character varying,
    animals_id integer,
    gps_sensors_id integer,
    sensors_original_id character varying,
    research_groups_id integer,
    activity_sensor_mode_code integer,
    activity_validity_code integer,
    acquisition_time timestamp with time zone,
    p_key bigint NOT NULL,
    act_3 integer
);


--
-- Name: activity_data_animals_kaloe_denmark_p_key_seq; Type: SEQUENCE; Schema: ws_fabio; Owner: -
--

CREATE SEQUENCE ws_fabio.activity_data_animals_kaloe_denmark_p_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: activity_data_animals_kaloe_denmark_p_key_seq; Type: SEQUENCE OWNED BY; Schema: ws_fabio; Owner: -
--

ALTER SEQUENCE ws_fabio.activity_data_animals_kaloe_denmark_p_key_seq OWNED BY ws_fabio.activity_data_animals_kaloe_denmark.p_key;


--
-- Name: activity_data_animals_rendena; Type: TABLE; Schema: ws_fabio; Owner: -
--

CREATE TABLE ws_fabio.activity_data_animals_rendena (
    utc_date date,
    utc_time time with time zone,
    origin character varying,
    activity_sensor_mode_code integer,
    dt integer,
    act_1 integer,
    act_2 integer,
    act_3 integer,
    temp integer,
    animals_original_id character varying,
    animals_id integer,
    gps_sensors_id integer,
    sensors_original_id character varying,
    research_group_id integer,
    activity_validity_code integer,
    acquisition_time timestamp with time zone,
    p_key bigint NOT NULL
);


--
-- Name: activity_data_animals_rendena_p_key_seq; Type: SEQUENCE; Schema: ws_fabio; Owner: -
--

CREATE SEQUENCE ws_fabio.activity_data_animals_rendena_p_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: activity_data_animals_rendena_p_key_seq; Type: SEQUENCE OWNED BY; Schema: ws_fabio; Owner: -
--

ALTER SEQUENCE ws_fabio.activity_data_animals_rendena_p_key_seq OWNED BY ws_fabio.activity_data_animals_rendena.p_key;


--
-- Name: activity_sensors_animals_cz; Type: TABLE; Schema: ws_fabio; Owner: -
--

CREATE TABLE ws_fabio.activity_sensors_animals_cz (
    study_area character varying,
    animals_original_id character varying,
    animals_original_name character varying,
    sensors_original_id integer,
    start_time timestamp with time zone,
    end_time timestamp with time zone,
    notes character varying,
    end_deployment_code integer
);


--
-- Name: activity_sensors_animals_hjoellund_denmark; Type: TABLE; Schema: ws_fabio; Owner: -
--

CREATE TABLE ws_fabio.activity_sensors_animals_hjoellund_denmark (
    study_area character varying,
    animals_original_id character varying,
    animals_original_name character varying,
    sensors_original_id character varying,
    start_time timestamp with time zone,
    end_time timestamp with time zone,
    end_deployment_code integer,
    notes character varying,
    gps_sensors_animals_id integer,
    gps_sensors_id integer,
    study_areas_id integer,
    animals_id integer
);


--
-- Name: activity_sensors_animals_kaloe_denmark; Type: TABLE; Schema: ws_fabio; Owner: -
--

CREATE TABLE ws_fabio.activity_sensors_animals_kaloe_denmark (
    study_area character varying,
    animals_original_id character varying,
    animals_original_name character varying,
    sensors_original_id character varying,
    start_time timestamp with time zone,
    end_time timestamp with time zone,
    end_deployment_code integer,
    notes character varying,
    gps_sensors_id integer,
    study_areas_id integer,
    animals_id integer
);


--
-- Name: activity_sensors_animals_rendena; Type: TABLE; Schema: ws_fabio; Owner: -
--

CREATE TABLE ws_fabio.activity_sensors_animals_rendena (
    study_area character varying,
    animals_original_id character varying,
    animals_original_name character varying,
    sensors_original_id character varying,
    start_time timestamp with time zone,
    end_time timestamp with time zone,
    end_deployment_code integer,
    notes character varying,
    gps_sensors_id integer,
    study_areas_id integer,
    animals_id integer
);


--
-- Name: activity_sensors_cz; Type: TABLE; Schema: ws_fabio; Owner: -
--

CREATE TABLE ws_fabio.activity_sensors_cz (
    research_groups_name character varying,
    sensors_original_id integer,
    vendor character varying,
    model character varying,
    notes character varying,
    associated_gps_sensors_original_id integer,
    research_group_id integer,
    gps_sensors_original_id integer
);


--
-- Name: activity_sensors_hjoellund_denmark; Type: TABLE; Schema: ws_fabio; Owner: -
--

CREATE TABLE ws_fabio.activity_sensors_hjoellund_denmark (
    research_groups_id integer,
    sensors_original_id character varying,
    vendor character varying,
    model character varying,
    notes character varying,
    associated_gps_sensors_original_id integer
);


--
-- Name: activity_sensors_kaloe_denmark; Type: TABLE; Schema: ws_fabio; Owner: -
--

CREATE TABLE ws_fabio.activity_sensors_kaloe_denmark (
    research_groups_id integer,
    activity_sensors_original_id character varying,
    vendor character varying,
    model character varying,
    notes character varying,
    gps_sensors_id integer
);


--
-- Name: activity_sensors_rendena; Type: TABLE; Schema: ws_fabio; Owner: -
--

CREATE TABLE ws_fabio.activity_sensors_rendena (
    research_groups_id integer,
    sensors_original_id character varying,
    vendor character varying,
    model character varying,
    notes character varying,
    gps_sensors_id integer
);


--
-- Name: animals_cz; Type: TABLE; Schema: ws_fabio; Owner: -
--

CREATE TABLE ws_fabio.animals_cz (
    study_areas character varying,
    subarea character varying,
    species character varying,
    animals_original_id character varying,
    animals_original_name character varying,
    sex "char",
    reintroduction integer,
    year_birth integer,
    year_birth_exact boolean,
    number_of_captures integer,
    mortality_code_new integer,
    date_mortality date,
    time_mortality time without time zone,
    notes character varying,
    subareas_id integer,
    study_areas_id integer
);


--
-- Name: captures_cz; Type: TABLE; Schema: ws_fabio; Owner: -
--

CREATE TABLE ws_fabio.captures_cz (
    study_area character varying,
    animals_original_id character varying,
    animals_original_name character varying,
    capture_timestamp timestamp with time zone,
    age_exact integer,
    species character varying,
    capture_methods_code integer,
    first_capture boolean,
    longitude_captures double precision,
    latitude_captures double precision,
    gps_sensors_original_id integer,
    vhf_sensors_original_id integer,
    activity_sensors_original_id integer,
    handling_start timestamp with time zone,
    sedation boolean,
    sampling_faeces boolean,
    sampling_biopsy boolean,
    sampling_blood boolean,
    sampling_hair boolean,
    sampling_notes character varying,
    injury boolean,
    injury_description character varying,
    death character varying,
    death_description character varying,
    behavior_handling_code integer,
    behavior_release_code integer,
    heart_rate_start double precision,
    heart_rate_start_timestamp timestamp with time zone,
    heart_rate_end character varying,
    heart_rate_end_timestamp timestamp with time zone,
    hindfoot_length_cm double precision,
    body_mass_kg double precision,
    rectal_temperature_c double precision,
    relocated boolean,
    release_type_code integer,
    handling_end timestamp with time zone,
    release_timestamp timestamp with time zone,
    longitude_release double precision,
    latitude_release double precision,
    notes character varying,
    derived_from_deployment boolean,
    geom_capture public.geometry(Point,4326),
    geom_release public.geometry(Point,4326),
    capture_result_code integer NOT NULL,
    age_class_code integer NOT NULL
);


--
-- Name: gps_data_animals_cz; Type: TABLE; Schema: ws_fabio; Owner: -
--

CREATE TABLE ws_fabio.gps_data_animals_cz (
    sensors_original_id integer,
    longitude double precision,
    latitude double precision,
    height_above_ellipsoid double precision,
    type_of_fix integer,
    status character varying,
    acquisition_time timestamp with time zone,
    temperature_sensor integer,
    dop double precision,
    sats integer,
    altitude_gps integer,
    x_original_reference double precision,
    y_original_reference double precision,
    srid_original_reference integer,
    animals_original_id character varying,
    gps_validity_code smallint,
    animals_id integer,
    gps_sensors_id integer,
    geom public.geometry(Point,4326),
    animals_original_name character varying,
    p_key bigint NOT NULL
);


--
-- Name: gps_data_animals_cz_p_key_seq; Type: SEQUENCE; Schema: ws_fabio; Owner: -
--

CREATE SEQUENCE ws_fabio.gps_data_animals_cz_p_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: gps_data_animals_cz_p_key_seq; Type: SEQUENCE OWNED BY; Schema: ws_fabio; Owner: -
--

ALTER SEQUENCE ws_fabio.gps_data_animals_cz_p_key_seq OWNED BY ws_fabio.gps_data_animals_cz.p_key;


--
-- Name: gps_sensors_animals_cz; Type: TABLE; Schema: ws_fabio; Owner: -
--

CREATE TABLE ws_fabio.gps_sensors_animals_cz (
    study_area character varying,
    animals_original_id character varying,
    animals_original_name character varying,
    sensors_original_id integer,
    start_time timestamp with time zone,
    end_time timestamp with time zone,
    notes character varying,
    end_deployment_code integer
);


--
-- Name: gps_sensors_cz; Type: TABLE; Schema: ws_fabio; Owner: -
--

CREATE TABLE ws_fabio.gps_sensors_cz (
    research_groups_name character varying,
    sensors_original_id character varying,
    vendor character varying,
    model character varying,
    notes character varying,
    research_groups_id integer,
    gps_sensor_code character varying
);


--
-- Name: traiettorie_cz; Type: VIEW; Schema: ws_fabio; Owner: -
--

CREATE VIEW ws_fabio.traiettorie_cz AS
 SELECT gps_data_animals_cz.animals_original_id,
    (public.st_makeline(gps_data_animals_cz.geom))::public.geometry(LineString,4326) AS geom
   FROM ws_fabio.gps_data_animals_cz
  GROUP BY gps_data_animals_cz.animals_original_id
  ORDER BY gps_data_animals_cz.animals_original_id;


--
-- Name: whit_mcp_cembra; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.whit_mcp_cembra (
    study_areas_id integer NOT NULL,
    geom public.geometry(Polygon,4326),
    id integer,
    area numeric,
    perimeter numeric
);


--
-- Name: Bounding geometry_id_0_seq; Type: SEQUENCE; Schema: ws_fem; Owner: -
--

CREATE SEQUENCE ws_fem."Bounding geometry_id_0_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Bounding geometry_id_0_seq; Type: SEQUENCE OWNED BY; Schema: ws_fem; Owner: -
--

ALTER SEQUENCE ws_fem."Bounding geometry_id_0_seq" OWNED BY ws_fem.whit_mcp_cembra.study_areas_id;


--
-- Name: Fires_2013_2018_24h; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem."Fires_2013_2018_24h" (
    id integer NOT NULL,
    geom public.geometry(MultiPolygon,32629),
    id_val integer,
    dtinicio character varying(20),
    dtfim character varying(20),
    area_ha double precision,
    area_ha_2 double precision,
    id_val_2 integer,
    dtinicio_2 character varying(19),
    dtfim_2 character varying(19),
    id_val_3 integer,
    dtinici3 character varying(30),
    dtfim_3 character varying(30),
    area_ha3 double precision,
    area_ha3_2 double precision,
    id_val_4 integer,
    dtinici3_2 character varying(19),
    dtfim_4 character varying(19),
    layer character varying(100),
    path character varying(200)
);


--
-- Name: Fires_2013_2018_24h_id_seq; Type: SEQUENCE; Schema: ws_fem; Owner: -
--

CREATE SEQUENCE ws_fem."Fires_2013_2018_24h_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Fires_2013_2018_24h_id_seq; Type: SEQUENCE OWNED BY; Schema: ws_fem; Owner: -
--

ALTER SEQUENCE ws_fem."Fires_2013_2018_24h_id_seq" OWNED BY ws_fem."Fires_2013_2018_24h".id;


--
-- Name: joh_HRBI_OCHL; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem."joh_HRBI_OCHL" (
    gid integer NOT NULL,
    objectid_1 integer,
    fid_opencl integer,
    objectid_2 integer,
    fid_study_ integer,
    id integer,
    fid_clc_20 integer,
    objectid integer,
    ch00_06 character varying(16),
    clc00 character varying(5),
    clc06 character varying(5),
    area_ha double precision,
    shape_leng numeric,
    openclosed smallint,
    fid_highlo integer,
    objectid_3 integer,
    id_1 integer,
    grid_code integer,
    shape_le_1 numeric,
    shape_le_2 numeric,
    shape_area numeric,
    hlocagct character varying(1),
    hlocint smallint,
    objecti3 integer,
    id_month_y character varying(254),
    shape_l3 numeric,
    shape_ar_2 numeric,
    area numeric,
    perimeter numeric,
    geom public.geometry(MultiPolygon)
);


--
-- Name: HRBI_OCHL_gid_seq; Type: SEQUENCE; Schema: ws_fem; Owner: -
--

CREATE SEQUENCE ws_fem."HRBI_OCHL_gid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: HRBI_OCHL_gid_seq; Type: SEQUENCE OWNED BY; Schema: ws_fem; Owner: -
--

ALTER SEQUENCE ws_fem."HRBI_OCHL_gid_seq" OWNED BY ws_fem."joh_HRBI_OCHL".gid;


--
-- Name: VegeSampling_Locs_Aug2015_NEW_intersect; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem."VegeSampling_Locs_Aug2015_NEW_intersect" (
    id integer NOT NULL,
    geom public.geometry(MultiPoint,32632),
    year integer,
    plot_id character varying(254),
    "interval" integer,
    animals_id integer,
    plot_type character varying(254),
    "plot % cov" numeric,
    "forb % cov" numeric,
    "grass % co" numeric,
    "shrub % co" numeric,
    "woody % co" numeric,
    "forb pheno" character varying(254),
    "grass phen" character varying(254),
    "shrub phen" character varying(254),
    "plot pheno" numeric,
    canopy_nor integer,
    canopy_eas integer,
    canopy_sou integer,
    canopy_wes integer,
    canopy_clo numeric,
    acquisitio character varying(254),
    animals__1 integer,
    slope integer,
    elevation integer,
    utm_x integer,
    utm_y integer,
    slope_dem character varying(254),
    elevation_ character varying(254),
    habitat_cl character varying(254),
    spect_gis numeric,
    slope_gis numeric,
    elev_gis numeric
);


--
-- Name: VegeSampling_Locs_Aug2015_NEW_intersect_ferdi; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem."VegeSampling_Locs_Aug2015_NEW_intersect_ferdi" (
    id integer NOT NULL,
    geom public.geometry(Point,32632),
    plot_id character varying(254),
    acquisition_datex date,
    cell_id integer,
    tmean double precision,
    precip double precision,
    snow double precision,
    ndvi double precision,
    geom_wgs84 public.geometry(Point,4326)
);


--
-- Name: VegeSampling_Locs_Aug2015_NEW_intersect_id_seq; Type: SEQUENCE; Schema: ws_fem; Owner: -
--

CREATE SEQUENCE ws_fem."VegeSampling_Locs_Aug2015_NEW_intersect_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: VegeSampling_Locs_Aug2015_NEW_intersect_id_seq; Type: SEQUENCE OWNED BY; Schema: ws_fem; Owner: -
--

ALTER SEQUENCE ws_fem."VegeSampling_Locs_Aug2015_NEW_intersect_id_seq" OWNED BY ws_fem."VegeSampling_Locs_Aug2015_NEW_intersect".id;


--
-- Name: agri4cast_data; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.agri4cast_data (
    id_key integer NOT NULL,
    grid_code integer,
    temperature_max double precision,
    temperature_min double precision,
    temperature_avg double precision,
    precipitation double precision,
    snowdepth double precision,
    acquisition_date date
);


--
-- Name: agri4cast_data_id_key_seq; Type: SEQUENCE; Schema: ws_fem; Owner: -
--

CREATE SEQUENCE ws_fem.agri4cast_data_id_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: agri4cast_data_id_key_seq; Type: SEQUENCE OWNED BY; Schema: ws_fem; Owner: -
--

ALTER SEQUENCE ws_fem.agri4cast_data_id_key_seq OWNED BY ws_fem.agri4cast_data.id_key;


--
-- Name: agri4cast_data_var; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.agri4cast_data_var (
    id_key integer,
    grid_code integer,
    acquisition_date date,
    temperature_max_var double precision,
    temperature_min_var double precision,
    temperature_avg_var double precision,
    snowdepth_var double precision,
    precipitation_var double precision
);


--
-- Name: agri4cast_grid; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.agri4cast_grid (
    grid_code integer NOT NULL,
    geom public.geometry(Polygon,4326)
);


--
-- Name: TABLE agri4cast_grid; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON TABLE ws_fem.agri4cast_grid IS 'Reference vector grid for the Agri4cast climate data. Each cell (grid_code) corresponds to an id in the agri4cast data table.';


--
-- Name: amsterdam_activity_data; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.amsterdam_activity_data (
    study_areas_id integer,
    animals_id integer,
    activity_sensors_id integer,
    act_1 double precision,
    act_2 double precision,
    act_3 double precision,
    acquisition_time timestamp without time zone,
    activity_sensor_mode_code integer,
    gps_sensors_id integer
);


--
-- Name: amsterdam_gps_data2; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.amsterdam_gps_data2 (
    study_areas_id integer,
    animals_id integer,
    gps_sensors_id integer,
    acquisition_time timestamp with time zone,
    longitude double precision,
    latitude double precision,
    geom public.geometry(Point,4326),
    gps_validity_code smallint,
    corine_land_cover_2006_code integer,
    corine_land_cover_2012_code integer,
    ndvi_modis_boku double precision,
    ndvi_modis_smoothed double precision,
    altitude_copernicus integer,
    slope_copernicus double precision,
    aspect_copernicus integer,
    forest_density integer,
    activity_sensors_id integer
);


--
-- Name: amsterdam_subset; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.amsterdam_subset (
    study_areas_id integer,
    animals_id integer,
    gps_sensors_id integer,
    activity_sensors_id integer,
    vendor character varying,
    model character varying,
    gps_start_time timestamp with time zone,
    gps_end_time timestamp with time zone,
    act_start_time timestamp with time zone,
    act_end_time timestamp with time zone,
    gps_monitoring_days interval,
    act_monitoring_days interval,
    total_fixes numeric,
    prop_missing_fixes numeric
);


--
-- Name: amsterdam_summary_env_data; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.amsterdam_summary_env_data (
    study_areas_id integer,
    avg_altitude numeric,
    stddev_altitude numeric,
    min_altitude integer,
    max_altitude integer,
    avg_slope double precision,
    stddev_slope double precision,
    avg_forest numeric,
    stddev_forest numeric
);


--
-- Name: TABLE amsterdam_summary_env_data; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON TABLE ws_fem.amsterdam_summary_env_data IS 'summary of altitude, slope and forest density per population';


--
-- Name: amsterdam_summary_mvs; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.amsterdam_summary_mvs (
    count bigint,
    gps_validity_code smallint,
    animals_id integer,
    gps_sensors_id integer,
    activity_sensors_id integer,
    study_areas_id integer,
    gps_start_time timestamp with time zone,
    gps_end_time timestamp with time zone,
    act_start_time timestamp with time zone,
    act_end_time timestamp with time zone
);


--
-- Name: amsterdam_summary_mvs_1_7_15_16_25; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.amsterdam_summary_mvs_1_7_15_16_25 (
    count bigint,
    gps_validity_code smallint,
    animals_id integer,
    gps_sensors_id integer,
    activity_sensors_id integer,
    study_areas_id integer,
    gps_start_time timestamp with time zone,
    gps_end_time timestamp with time zone,
    act_start_time timestamp with time zone,
    act_end_time timestamp with time zone
);


--
-- Name: aspect_trentino; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.aspect_trentino (
    rid integer NOT NULL,
    rast public.raster,
    filename text,
    CONSTRAINT enforce_height_rast CHECK ((public.st_height(rast) = ANY (ARRAY[50, 16]))),
    CONSTRAINT enforce_nodata_values_rast CHECK ((public._raster_constraint_nodata_values(rast) = '{-9999.0000000000}'::numeric[])),
    CONSTRAINT enforce_num_bands_rast CHECK ((public.st_numbands(rast) = 1)),
    CONSTRAINT enforce_out_db_rast CHECK ((public._raster_constraint_out_db(rast) = '{t}'::boolean[])),
    CONSTRAINT enforce_pixel_types_rast CHECK ((public._raster_constraint_pixel_types(rast) = '{16BSI}'::text[])),
    CONSTRAINT enforce_same_alignment_rast CHECK (public.st_samealignment(rast, '0100000000000000000000244000000000000024C05F158E51049922418B12525212AE534100000000000000000000000000000000787F000001000100'::public.raster)),
    CONSTRAINT enforce_scalex_rast CHECK ((round((public.st_scalex(rast))::numeric, 10) = round((10)::numeric, 10))),
    CONSTRAINT enforce_scaley_rast CHECK ((round((public.st_scaley(rast))::numeric, 10) = round((- (10)::numeric), 10))),
    CONSTRAINT enforce_srid_rast CHECK ((public.st_srid(rast) = 32632)),
    CONSTRAINT enforce_width_rast CHECK ((public.st_width(rast) = ANY (ARRAY[50, 20])))
);


--
-- Name: aspect_trentino_rid_seq; Type: SEQUENCE; Schema: ws_fem; Owner: -
--

CREATE SEQUENCE ws_fem.aspect_trentino_rid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: aspect_trentino_rid_seq; Type: SEQUENCE OWNED BY; Schema: ws_fem; Owner: -
--

ALTER SEQUENCE ws_fem.aspect_trentino_rid_seq OWNED BY ws_fem.aspect_trentino.rid;


--
-- Name: combination; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.combination (
    id bigint NOT NULL,
    a integer,
    b integer
);


--
-- Name: combination_animal_year; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.combination_animal_year (
    id integer NOT NULL,
    animals_id integer,
    yearx integer
);


--
-- Name: combination_animal_year_id_seq; Type: SEQUENCE; Schema: ws_fem; Owner: -
--

CREATE SEQUENCE ws_fem.combination_animal_year_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: combination_animal_year_id_seq; Type: SEQUENCE OWNED BY; Schema: ws_fem; Owner: -
--

ALTER SEQUENCE ws_fem.combination_animal_year_id_seq OWNED BY ws_fem.combination_animal_year.id;


--
-- Name: combination_complete; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.combination_complete (
    id bigint NOT NULL,
    animals_id integer,
    yearx integer,
    a integer,
    b integer,
    id_coded character varying
);


--
-- Name: corine_land_cover_legend_recl; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.corine_land_cover_legend_recl (
    grid_code integer NOT NULL,
    clc_l3_code character(3),
    label1 character varying,
    label2 character varying,
    label3 character varying,
    reclassified integer
);


--
-- Name: fede_raw_gpsdata_feeding_analysis; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.fede_raw_gpsdata_feeding_analysis (
    gps_data_animals_id integer NOT NULL,
    animals_id integer,
    sex "char",
    age_class integer,
    study_areas_id integer,
    research_groups_id integer,
    acquisition_time timestamp with time zone,
    utm_x integer,
    utm_y integer,
    gps_validity_code smallint,
    year_extract numeric,
    week_extract numeric,
    month_extract numeric,
    key integer NOT NULL,
    key2 integer NOT NULL
);


--
-- Name: data_gps_start_key2_seq; Type: SEQUENCE; Schema: ws_fem; Owner: -
--

CREATE SEQUENCE ws_fem.data_gps_start_key2_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: data_gps_start_key2_seq; Type: SEQUENCE OWNED BY; Schema: ws_fem; Owner: -
--

ALTER SEQUENCE ws_fem.data_gps_start_key2_seq OWNED BY ws_fem.fede_raw_gpsdata_feeding_analysis.key2;


--
-- Name: data_gps_start_key_seq; Type: SEQUENCE; Schema: ws_fem; Owner: -
--

CREATE SEQUENCE ws_fem.data_gps_start_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: data_gps_start_key_seq; Type: SEQUENCE OWNED BY; Schema: ws_fem; Owner: -
--

ALTER SEQUENCE ws_fem.data_gps_start_key_seq OWNED BY ws_fem.fede_raw_gpsdata_feeding_analysis.key;


--
-- Name: fede_data_final_analysis_feeding; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.fede_data_final_analysis_feeding (
    animal_id integer,
    feeding_site character varying(15),
    week integer,
    winter_week integer,
    time_perc double precision,
    time_bin integer,
    final_year integer,
    home_range double precision,
    activation integer,
    hunting_management integer,
    snow_modis integer,
    snow_cumulative double precision,
    study_id integer,
    study_name character varying,
    project character varying,
    feeding_site_original_id character varying,
    year_start integer,
    year_end integer,
    feeding_site_type character varying,
    feeding_management character varying,
    feed_freq_categorized character varying,
    energetic_value_fs character varying,
    start_feeding character varying,
    end_feeding character varying,
    potential_competition integer,
    potential_predation integer,
    latitude double precision,
    longitude double precision,
    corine_2006 integer,
    notes character varying,
    altidude_srtm integer,
    aspect_aster integer,
    slope_aster double precision,
    aspect_srtm integer,
    slope_srtm double precision,
    altutude_aster integer,
    sex character varying,
    age_class integer,
    id_key integer NOT NULL
);


--
-- Name: data_id_key_seq; Type: SEQUENCE; Schema: ws_fem; Owner: -
--

CREATE SEQUENCE ws_fem.data_id_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: data_id_key_seq; Type: SEQUENCE OWNED BY; Schema: ws_fem; Owner: -
--

ALTER SEQUENCE ws_fem.data_id_key_seq OWNED BY ws_fem.fede_data_final_analysis_feeding.id_key;


--
-- Name: dataset_gps; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.dataset_gps (
    gps_data_animals_id integer NOT NULL,
    animals_id integer,
    acquisition_time timestamp with time zone,
    utm_x integer,
    utm_y integer,
    yearx integer,
    month_rel integer
);


--
-- Name: dem_trentino; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.dem_trentino (
    rid integer NOT NULL,
    rast public.raster,
    filename text,
    CONSTRAINT enforce_height_rast CHECK ((public.st_height(rast) = ANY (ARRAY[50, 16]))),
    CONSTRAINT enforce_num_bands_rast CHECK ((public.st_numbands(rast) = 1)),
    CONSTRAINT enforce_out_db_rast CHECK ((public._raster_constraint_out_db(rast) = '{t}'::boolean[])),
    CONSTRAINT enforce_same_alignment_rast CHECK (public.st_samealignment(rast, '0100000000000000000000244000000000000024C05F158E51049922418B12525212AE534100000000000000000000000000000000787F000001000100'::public.raster)),
    CONSTRAINT enforce_scalex_rast CHECK ((round((public.st_scalex(rast))::numeric, 10) = round((10)::numeric, 10))),
    CONSTRAINT enforce_scaley_rast CHECK ((round((public.st_scaley(rast))::numeric, 10) = round((- (10)::numeric), 10))),
    CONSTRAINT enforce_srid_rast CHECK ((public.st_srid(rast) = 32632)),
    CONSTRAINT enforce_width_rast CHECK ((public.st_width(rast) = ANY (ARRAY[50, 20])))
);


--
-- Name: dem_trentino_rid_seq; Type: SEQUENCE; Schema: ws_fem; Owner: -
--

CREATE SEQUENCE ws_fem.dem_trentino_rid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: dem_trentino_rid_seq; Type: SEQUENCE OWNED BY; Schema: ws_fem; Owner: -
--

ALTER SEQUENCE ws_fem.dem_trentino_rid_seq OWNED BY ws_fem.dem_trentino.rid;


--
-- Name: env_data_hunting_reserves_WGS84; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem."env_data_hunting_reserves_WGS84" (
    id integer NOT NULL,
    geom public.geometry(MultiPolygon,4326),
    area double precision,
    perimeter double precision,
    riserve_ double precision,
    riserve_id double precision,
    ccat double precision,
    cod character varying(10),
    des character varying(50),
    sup numeric,
    demanio character varying(2),
    corrette character varying(2),
    cod_mas character varying(5),
    hectares double precision
);


--
-- Name: env_data_hunting_reserves_WGS84_id_seq; Type: SEQUENCE; Schema: ws_fem; Owner: -
--

CREATE SEQUENCE ws_fem."env_data_hunting_reserves_WGS84_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: env_data_hunting_reserves_WGS84_id_seq; Type: SEQUENCE OWNED BY; Schema: ws_fem; Owner: -
--

ALTER SEQUENCE ws_fem."env_data_hunting_reserves_WGS84_id_seq" OWNED BY ws_fem."env_data_hunting_reserves_WGS84".id;


--
-- Name: env_data_landuse; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.env_data_landuse (
    id integer NOT NULL,
    geom public.geometry(MultiPolygon,4326)
);


--
-- Name: env_data_subsites_bondone; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.env_data_subsites_bondone (
    geom public.geometry(MultiPolygon,4326),
    st_area double precision,
    populations_id integer
);


--
-- Name: env_data_usosuolo_cea_id_seq; Type: SEQUENCE; Schema: ws_fem; Owner: -
--

CREATE SEQUENCE ws_fem.env_data_usosuolo_cea_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: env_data_usosuolo_cea_id_seq; Type: SEQUENCE OWNED BY; Schema: ws_fem; Owner: -
--

ALTER SEQUENCE ws_fem.env_data_usosuolo_cea_id_seq OWNED BY ws_fem.env_data_landuse.id;


--
-- Name: fede_feeding_stations_management_data; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.fede_feeding_stations_management_data (
    feeding_site_id integer NOT NULL,
    research_groups_id integer,
    study_areas_id integer NOT NULL,
    study_name character varying,
    project character varying,
    feeding_site_original_id character varying,
    fs_id character varying,
    year_start integer,
    year_end integer,
    feeding_site_code integer,
    moving_site boolean,
    feeding_management integer,
    feeding_frequency_code integer,
    food_items character varying,
    food_energy_code character varying,
    day_start_feeding integer,
    month_start_feeding integer,
    day_end_feeding integer,
    month_end_feeding integer,
    species_excluded character varying,
    other_feeders character varying,
    potential_competition boolean,
    predator_species character varying,
    potential_predation boolean,
    managed_by character varying,
    latitude double precision,
    longitude double precision,
    utm_y integer,
    utm_x integer,
    srid_code integer,
    notes character varying,
    geom public.geometry(Point,4326),
    corine_land_cover_2006_code integer,
    altitude_srtm integer,
    altitude_aster integer,
    slope_srtm double precision,
    aspect_srtm integer,
    slope_aster double precision,
    aspect_aster integer,
    corine_land_cover_2000_code integer,
    corine_land_cover_1990_code integer
);


--
-- Name: TABLE fede_feeding_stations_management_data; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON TABLE ws_fem.fede_feeding_stations_management_data IS 'This is the table containing all the information on the management of the feeding sites, where these are used (i.e ten study areas).';


--
-- Name: COLUMN fede_feeding_stations_management_data.feeding_site_id; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.fede_feeding_stations_management_data.feeding_site_id IS 'Primary key of the table.';


--
-- Name: COLUMN fede_feeding_stations_management_data.research_groups_id; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.fede_feeding_stations_management_data.research_groups_id IS 'The id of the research group from which the information of the feeding site comes. The id is the same used in the table ws_fem.research_groups.';


--
-- Name: COLUMN fede_feeding_stations_management_data.study_areas_id; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.fede_feeding_stations_management_data.study_areas_id IS 'It is the same code used in the table ws_fem.study_areas to identify the study areas.';


--
-- Name: COLUMN fede_feeding_stations_management_data.study_name; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.fede_feeding_stations_management_data.study_name IS ' name of the study area, as indicated in the table ws_fem.study_areas.';


--
-- Name: COLUMN fede_feeding_stations_management_data.project; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.fede_feeding_stations_management_data.project IS 'Name of the specific project within the study area.';


--
-- Name: COLUMN fede_feeding_stations_management_data.feeding_site_original_id; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.fede_feeding_stations_management_data.feeding_site_original_id IS 'Name of the feeding site as it was provided by data owners.';


--
-- Name: COLUMN fede_feeding_stations_management_data.fs_id; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.fede_feeding_stations_management_data.fs_id IS 'New created id for each feeding site, for simplicity in analysis and database management. It is the primary key of the table.';


--
-- Name: COLUMN fede_feeding_stations_management_data.year_start; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.fede_feeding_stations_management_data.year_start IS 'First year of management.';


--
-- Name: COLUMN fede_feeding_stations_management_data.year_end; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.fede_feeding_stations_management_data.year_end IS ' last year of management.';


--
-- Name: COLUMN fede_feeding_stations_management_data.feeding_site_code; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.fede_feeding_stations_management_data.feeding_site_code IS 'It indicates if the site is a proper feeding station (1) or a box trap (2). See look up table feeding_site_type for details.';


--
-- Name: COLUMN fede_feeding_stations_management_data.moving_site; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.fede_feeding_stations_management_data.moving_site IS 'It indicates if the feeding site is moved (1) or not (0) during the management period.';


--
-- Name: COLUMN fede_feeding_stations_management_data.feeding_management; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.fede_feeding_stations_management_data.feeding_management IS 'It indicates if the feeding site is foraged ad libitum (1) or on an  occasional basis (2).';


--
-- Name: COLUMN fede_feeding_stations_management_data.feeding_frequency_code; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.fede_feeding_stations_management_data.feeding_frequency_code IS ' it indicates the code of frequency with whom the feeding site is provided with food. See look up table feeding_ frequency_categorized for details.';


--
-- Name: COLUMN fede_feeding_stations_management_data.food_items; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.fede_feeding_stations_management_data.food_items IS ' it indicates the food items with whom the feeding sites are filled, as provided by data owners.';


--
-- Name: COLUMN fede_feeding_stations_management_data.food_energy_code; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.fede_feeding_stations_management_data.food_energy_code IS ' classification of food quality according to energetic values of the items provided. See look up table feeding_site_feeding quality for details.';


--
-- Name: COLUMN fede_feeding_stations_management_data.day_start_feeding; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.fede_feeding_stations_management_data.day_start_feeding IS ' activation day of management, does not change from year to year in case of multiple years of management.';


--
-- Name: COLUMN fede_feeding_stations_management_data.month_start_feeding; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.fede_feeding_stations_management_data.month_start_feeding IS ' activation month of management, does not change from year to year in case of multiple years of management.';


--
-- Name: COLUMN fede_feeding_stations_management_data.day_end_feeding; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.fede_feeding_stations_management_data.day_end_feeding IS 'Deactivation day of management, does not change from year to year in case of multiple years of management.';


--
-- Name: COLUMN fede_feeding_stations_management_data.month_end_feeding; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.fede_feeding_stations_management_data.month_end_feeding IS 'Deactivation month of management, does not change from year to year in case of multiple years of management.';


--
-- Name: COLUMN fede_feeding_stations_management_data.species_excluded; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.fede_feeding_stations_management_data.species_excluded IS 'It indicates if and what species are excluded from access to the feding site.';


--
-- Name: COLUMN fede_feeding_stations_management_data.other_feeders; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.fede_feeding_stations_management_data.other_feeders IS 'It indicates if and what other species feed on the feeding site.';


--
-- Name: COLUMN fede_feeding_stations_management_data.potential_competition; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.fede_feeding_stations_management_data.potential_competition IS 'If there are other ungulates (red deer, muflon, wild boar, bisons) feeding on the station AND they are not prevented from access to food, then 1, otherwise 0.';


--
-- Name: COLUMN fede_feeding_stations_management_data.predator_species; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.fede_feeding_stations_management_data.predator_species IS ' it indicates if and what predators live in the proximity of feeding sites.';


--
-- Name: COLUMN fede_feeding_stations_management_data.potential_predation; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.fede_feeding_stations_management_data.potential_predation IS ' if among the predators there are any which is of relevance for roe deer, then 1, otherwise 0.';


--
-- Name: COLUMN fede_feeding_stations_management_data.managed_by; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.fede_feeding_stations_management_data.managed_by IS 'Managers of the feeding sites.';


--
-- Name: COLUMN fede_feeding_stations_management_data.latitude; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.fede_feeding_stations_management_data.latitude IS 'Latitude of the feeding site.';


--
-- Name: COLUMN fede_feeding_stations_management_data.longitude; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.fede_feeding_stations_management_data.longitude IS 'Longitude of the feeding site.';


--
-- Name: COLUMN fede_feeding_stations_management_data.utm_y; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.fede_feeding_stations_management_data.utm_y IS 'Coordinate of the feeding site in utm.';


--
-- Name: COLUMN fede_feeding_stations_management_data.utm_x; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.fede_feeding_stations_management_data.utm_x IS 'Coordinate of the feeding site in utm.';


--
-- Name: COLUMN fede_feeding_stations_management_data.srid_code; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.fede_feeding_stations_management_data.srid_code IS 'Epsg code on the utm zone of the fs.';


--
-- Name: COLUMN fede_feeding_stations_management_data.geom; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.fede_feeding_stations_management_data.geom IS 'Geometry of the location (point).';


--
-- Name: COLUMN fede_feeding_stations_management_data.corine_land_cover_2006_code; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.fede_feeding_stations_management_data.corine_land_cover_2006_code IS 'Code of the Corine lad cover class produced in 2006 (in env_data.corine_land_cover_legend there is a complete description of these codes).';


--
-- Name: COLUMN fede_feeding_stations_management_data.altitude_srtm; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.fede_feeding_stations_management_data.altitude_srtm IS 'Meters above sea level (from SRTM project).';


--
-- Name: COLUMN fede_feeding_stations_management_data.altitude_aster; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.fede_feeding_stations_management_data.altitude_aster IS 'Meters above sea level (from ASTER project).';


--
-- Name: COLUMN fede_feeding_stations_management_data.slope_srtm; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.fede_feeding_stations_management_data.slope_srtm IS 'Degrees (from SRTM project).';


--
-- Name: COLUMN fede_feeding_stations_management_data.aspect_srtm; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.fede_feeding_stations_management_data.aspect_srtm IS 'Degrees calculated counterclockwise from east (source: SRTM project).';


--
-- Name: COLUMN fede_feeding_stations_management_data.slope_aster; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.fede_feeding_stations_management_data.slope_aster IS 'Degrees (from ASTER project).';


--
-- Name: COLUMN fede_feeding_stations_management_data.aspect_aster; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.fede_feeding_stations_management_data.aspect_aster IS 'Degrees calculated counterclockwise from east (source: ASTER project).';


--
-- Name: COLUMN fede_feeding_stations_management_data.corine_land_cover_2000_code; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.fede_feeding_stations_management_data.corine_land_cover_2000_code IS 'Code of the Corine lad cover class produced in 2000 (in env_data.corine_land_cover_legend there is a complete description of these codes).';


--
-- Name: COLUMN fede_feeding_stations_management_data.corine_land_cover_1990_code; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.fede_feeding_stations_management_data.corine_land_cover_1990_code IS 'Code of the Corine lad cover class produced in 1990 (in env_data.corine_land_cover_legend there is a complete description of these codes).';


--
-- Name: fede_feeding_stations_merge_management_timeseries; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.fede_feeding_stations_merge_management_timeseries (
    fs_id character varying,
    week integer,
    year integer,
    activation character varying(3),
    hunting_management integer,
    snow numeric,
    severity double precision,
    research_groups_id integer,
    study_areas_id integer,
    study_name character varying,
    project character varying,
    feeding_site_original_id character varying,
    year_start integer,
    year_end integer,
    feeding_site_code integer,
    feeding_management integer,
    feeding_frequency_code integer,
    day_start_feeding integer,
    month_start_feeding integer,
    day_end_feeding integer,
    month_end_feeding integer,
    potential_competition boolean,
    potential_predation boolean,
    latitude double precision,
    longitude double precision,
    geom public.geometry(Point,4326),
    corine_land_cover_2006_code integer,
    notes character varying,
    altitude_srtm integer,
    altitude_aster integer,
    slope_srtm double precision,
    aspect_srtm integer,
    slope_aster double precision,
    aspect_aster integer,
    id_key integer NOT NULL,
    temporal_id_concat_2 character varying
);


--
-- Name: fede_feeding_stations_selected_spatiotemporal_overlap; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.fede_feeding_stations_selected_spatiotemporal_overlap (
    id_tuple character varying(7) NOT NULL,
    hr_id character varying(15),
    fs_id character varying(40),
    animal_id integer,
    years integer
);


--
-- Name: TABLE fede_feeding_stations_selected_spatiotemporal_overlap; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON TABLE ws_fem.fede_feeding_stations_selected_spatiotemporal_overlap IS 'This is the table containing the selected feeding sites each year per animal.';


--
-- Name: COLUMN fede_feeding_stations_selected_spatiotemporal_overlap.id_tuple; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.fede_feeding_stations_selected_spatiotemporal_overlap.id_tuple IS 'Id of every tuple.';


--
-- Name: COLUMN fede_feeding_stations_selected_spatiotemporal_overlap.fs_id; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.fede_feeding_stations_selected_spatiotemporal_overlap.fs_id IS 'To use for join.';


--
-- Name: fede_feeding_stations_timeseries; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.fede_feeding_stations_timeseries (
    id_key integer,
    fs_id character varying(40),
    week integer,
    year integer,
    winter_year integer,
    activation character varying(3),
    hunting_management integer,
    snow numeric,
    severity double precision,
    progress bigint
);


--
-- Name: fede_feeding_stations_timeseries_valrendena; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.fede_feeding_stations_timeseries_valrendena (
    fs_id character varying(15),
    id integer NOT NULL,
    week integer,
    year integer,
    activation character varying(3),
    hunting character varying(3),
    snow_modis character varying(3)
);


--
-- Name: fede_feeding_use_rendena_lastdata; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.fede_feeding_use_rendena_lastdata (
    id integer NOT NULL,
    animal integer,
    fs_id character varying(13),
    week integer,
    time_perc double precision,
    avail_time integer,
    time_bin_new integer,
    final_year integer,
    weekly_temp double precision
);


--
-- Name: fede_homeranges_k50_feeding; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.fede_homeranges_k50_feeding (
    id integer,
    animal integer,
    year_m integer,
    week integer,
    home_range_size double precision
);


--
-- Name: fede_homeranges_k50_feeding_valrendena; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.fede_homeranges_k50_feeding_valrendena (
    id integer NOT NULL,
    animal integer,
    year integer,
    week integer,
    hr_size double precision,
    sex character varying(2),
    first_capture_date character varying(12),
    age_class_capture integer
);


--
-- Name: fede_secondo_alldata; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.fede_secondo_alldata (
    "row.names" text,
    id integer,
    animal_id integer,
    animal_id_a integer,
    animal_inter text,
    site_animal_a integer,
    site_animal_b integer,
    clustered integer,
    migration integer,
    acquisition_time timestamp without time zone,
    datex date,
    min_t boolean,
    d_animali integer,
    lat double precision,
    lon double precision,
    geom text,
    dop double precision,
    snow text,
    altitude_aster integer,
    slope_aster double precision,
    aspect_aster double precision,
    corine integer,
    open_close integer,
    "sex_A" text,
    "sex_B" text,
    "sex_AB" text,
    "age_class_A" integer,
    "age_class_B" integer,
    "age_AB" text,
    dist_fs_a integer,
    dist_fs_b integer,
    "avg_Dist_FS" integer,
    id_fs_a character varying,
    id_fs_b character varying,
    "same_FS" integer,
    "activation_fs_A" integer,
    "activation_fs_B" integer,
    same_activation integer,
    min_temp double precision
);


--
-- Name: fede_secondo_correct; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.fede_secondo_correct (
    animal_id integer,
    animal_id_a integer,
    animal_inter text,
    site_animal_a integer,
    site_animal_b integer,
    clustered integer,
    acquisition_time timestamp without time zone,
    d_animali text,
    lat double precision,
    lon double precision,
    geom public.geometry,
    alt_gps double precision,
    dop double precision,
    snow_modis double precision,
    altitude_aster double precision,
    slope_aster double precision,
    aspect_aster double precision,
    corine double precision,
    sex_a text,
    age_class_code_capture_a integer,
    minfs_dist integer,
    minfs_act integer,
    feeding_site_original_id_a text,
    potential_competition integer
);


--
-- Name: feeding_management_new_study_areas_id_seq; Type: SEQUENCE; Schema: ws_fem; Owner: -
--

CREATE SEQUENCE ws_fem.feeding_management_new_study_areas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: feeding_management_new_study_areas_id_seq; Type: SEQUENCE OWNED BY; Schema: ws_fem; Owner: -
--

ALTER SEQUENCE ws_fem.feeding_management_new_study_areas_id_seq OWNED BY ws_fem.fede_feeding_stations_management_data.study_areas_id;


--
-- Name: feeding_sites_alldata_id_key_seq; Type: SEQUENCE; Schema: ws_fem; Owner: -
--

CREATE SEQUENCE ws_fem.feeding_sites_alldata_id_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: feeding_sites_alldata_id_key_seq; Type: SEQUENCE OWNED BY; Schema: ws_fem; Owner: -
--

ALTER SEQUENCE ws_fem.feeding_sites_alldata_id_key_seq OWNED BY ws_fem.fede_feeding_stations_merge_management_timeseries.id_key;


--
-- Name: gio_extr; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.gio_extr (
    "row.names" text,
    subset_id text,
    burst_ double precision,
    step_id_ integer,
    case_ boolean,
    x1_ double precision,
    y1_ double precision,
    x2_ double precision,
    y2_ double precision,
    t1_ timestamp with time zone,
    t2_ timestamp with time zone,
    dt_ text,
    sl_ double precision,
    ta_ double precision,
    slope_start double precision,
    slope_end double precision,
    cover_density_start double precision,
    cover_density_end double precision,
    dem_start double precision,
    dem_end double precision,
    imperv_start double precision,
    imperv_end double precision,
    geom_start public.geometry,
    geom_end public.geometry,
    snow_modis_start numeric,
    snow_modis_end numeric,
    ndvi_modis_boku_start numeric,
    ndvi_modis_boku_end numeric
);


--
-- Name: gio_extr2; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.gio_extr2 (
    "row.names" text,
    subset_id text,
    burst_ double precision,
    step_id_ integer,
    case_ boolean,
    x1_ double precision,
    y1_ double precision,
    x2_ double precision,
    y2_ double precision,
    t1_ timestamp with time zone,
    t2_ timestamp with time zone,
    dt_ text,
    sl_ double precision,
    ta_ double precision,
    slope_start double precision,
    slope_end double precision,
    cover_density_start double precision,
    cover_density_end double precision,
    dem_start double precision,
    dem_end double precision,
    imperv_start double precision,
    imperv_end double precision,
    geom_start public.geometry,
    geom_end public.geometry,
    snow_modis_start numeric,
    snow_modis_end numeric,
    ndvi_modis_boku_start numeric,
    ndvi_modis_boku_end numeric
);


--
-- Name: gio_extr3; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.gio_extr3 (
    "row.names" text,
    subset_id text,
    burst_ double precision,
    step_id_ integer,
    case_ boolean,
    x1_ double precision,
    y1_ double precision,
    x2_ double precision,
    y2_ double precision,
    t1_ timestamp with time zone,
    t2_ timestamp with time zone,
    dt_ text,
    sl_ double precision,
    ta_ double precision,
    slope_start double precision,
    slope_end double precision,
    cover_density_start double precision,
    cover_density_end double precision,
    dem_start double precision,
    dem_end double precision,
    imperv_start double precision,
    imperv_end double precision,
    geom_start public.geometry,
    geom_end public.geometry,
    snow_modis_start numeric,
    snow_modis_end numeric,
    ndvi_modis_boku_start numeric,
    ndvi_modis_boku_end numeric,
    ndvi_constancy_start numeric,
    ndvi_constancy_end numeric,
    ndvi_contingency_start numeric,
    ndvi_contingency_end numeric,
    ndvi_predictability_start numeric,
    ndvi_predictability_end numeric,
    corine_2012_start numeric,
    corine_2012_end numeric,
    geom_3035_start public.geometry,
    geom_3035_end public.geometry
);


--
-- Name: gio_extr4; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.gio_extr4 (
    "row.names" text,
    subset_id text,
    burst_ double precision,
    step_id_ integer,
    case_ boolean,
    x1_ double precision,
    y1_ double precision,
    x2_ double precision,
    y2_ double precision,
    t1_ timestamp with time zone,
    t2_ timestamp with time zone,
    dt_ text,
    sl_ double precision,
    ta_ double precision,
    slope double precision,
    cover_density double precision,
    dem double precision,
    imperv double precision,
    geom_end public.geometry,
    snow_modis_end numeric,
    ndvi_modis_boku_end numeric,
    corine_2012 numeric,
    geom_3035 public.geometry
);


--
-- Name: gio_path0; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.gio_path0 (
    "row.names" text,
    x double precision,
    y double precision,
    date timestamp with time zone,
    dx double precision,
    dy double precision,
    dist double precision,
    dt double precision,
    "R2n" double precision,
    "abs.angle" double precision,
    "rel.angle" double precision,
    id text,
    burst text,
    pkey text,
    topmod text,
    locs integer,
    str1 timestamp with time zone,
    end1 timestamp with time zone,
    str2 timestamp with time zone,
    end2 timestamp with time zone,
    movement text,
    pathid text,
    "case" text,
    geom public.geometry,
    snow_modis numeric,
    ndvi_modis_boku numeric
);


--
-- Name: gio_path04; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.gio_path04 (
    "row.names" text,
    x double precision,
    y double precision,
    date timestamp with time zone,
    dx double precision,
    dy double precision,
    dist double precision,
    dt double precision,
    "R2n" double precision,
    "abs.angle" double precision,
    "rel.angle" double precision,
    id text,
    burst text,
    pkey text,
    topmod text,
    locs integer,
    str1 timestamp with time zone,
    end1 timestamp with time zone,
    str2 timestamp with time zone,
    end2 timestamp with time zone,
    movement text,
    pathid text,
    "case" text,
    geom_3035 public.geometry,
    geom_4326 public.geometry,
    ndvi_modis_boku numeric,
    snow_modis numeric,
    ndvi_constancy numeric,
    ndvi_contingency numeric,
    ndvi_predictability numeric
);


--
-- Name: gio_random; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.gio_random (
    rand_id numeric,
    animals_id integer,
    random_point public.geometry,
    x double precision,
    y double precision,
    acquisition_time timestamp with time zone,
    study_areas_id integer,
    study_area_geom public.geometry,
    altitude_copernicus integer,
    slope_copernicus double precision,
    aspect_copernicus numeric,
    snow_modis integer,
    ndvi_modis_boku double precision,
    ndvi_modis_smoothed double precision,
    corine_land_cover_2000_code integer,
    corine_land_cover_2006_code integer,
    corine_land_cover_2012_code integer,
    corine_land_cover_2012_vector_code integer,
    forest_density integer
);


--
-- Name: gio_randompoints; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.gio_randompoints (
    rand_id numeric,
    animals_id integer,
    random_point public.geometry,
    x double precision,
    y double precision,
    acquisition_time timestamp with time zone,
    study_areas_id integer,
    study_area_geom public.geometry,
    altitude_copernicus integer,
    slope_copernicus double precision,
    aspect_copernicus numeric,
    snow_modis integer,
    ndvi_modis_boku double precision,
    ndvi_modis_smoothed double precision,
    corine_land_cover_2000_code integer,
    corine_land_cover_2006_code integer,
    corine_land_cover_2012_code integer,
    corine_land_cover_2012_vector_code integer,
    forest_density integer
);


--
-- Name: gio_steps_; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.gio_steps_ (
    "row.names" text,
    id_year text,
    burst_ integer,
    step_id_ integer,
    case_ boolean,
    x1_ double precision,
    y1_ double precision,
    x2_ double precision,
    y2_ double precision,
    x1_trans double precision,
    y1_trans double precision,
    x2_trans double precision,
    y2_trans double precision,
    t1_ text,
    t2_ text,
    dt_ double precision,
    sl_ double precision,
    ta_ double precision,
    road_cross double precision,
    road_proximity_start double precision,
    road_proximity_end double precision,
    forest_density_start double precision,
    dem_start double precision,
    slope_start double precision,
    aspect_start double precision,
    forest_density_end double precision,
    dem_end double precision,
    slope_end double precision,
    aspect_end double precision,
    geom_start public.geometry,
    geom_end public.geometry,
    snow_modis_start numeric,
    snow_modis_end numeric,
    ndvi_modis_boku_start numeric,
    ndvi_modis_boku_end numeric,
    ndvi_constancy_start numeric,
    ndvi_constancy_end numeric,
    ndvi_contingency_start numeric,
    ndvi_contingency_end numeric,
    ndvi_predictability_start numeric,
    ndvi_predictability_end numeric
);


--
-- Name: gio_steps_aurignac; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.gio_steps_aurignac (
    "row.names" text,
    id_year text,
    burst_ integer,
    step_id_ integer,
    case_ boolean,
    x1_ double precision,
    y1_ double precision,
    x2_ double precision,
    y2_ double precision,
    t1_ text,
    t2_ text,
    dt_ integer,
    sl_ double precision,
    ta_ double precision,
    road_cross double precision,
    forest_density_start double precision,
    dem_start double precision,
    slope_start double precision,
    aspect_start double precision,
    road_proximity_start double precision,
    x1_trans double precision,
    y1_trans double precision,
    forest_density_end double precision,
    dem_end double precision,
    slope_end double precision,
    aspect_end double precision,
    road_proximity_end double precision,
    x2_trans double precision,
    y2_trans double precision,
    geom_start public.geometry,
    geom_end public.geometry,
    snow_modis_start numeric,
    snow_modis_end numeric,
    ndvi_modis_boku_start numeric,
    ndvi_modis_boku_end numeric,
    ndvi_constancy_start numeric,
    ndvi_constancy_end numeric,
    ndvi_contingency_start numeric,
    ndvi_contingency_end numeric,
    ndvi_predictability_start numeric,
    ndvi_predictability_end numeric
);


--
-- Name: gio_steps_res; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.gio_steps_res (
    "row.names" text,
    id_year text,
    burst_ integer,
    step_id_ integer,
    case_ boolean,
    x1_ double precision,
    y1_ double precision,
    x2_ double precision,
    y2_ double precision,
    t1_ text,
    t2_ text,
    dt_ integer,
    sl_ double precision,
    ta_ double precision,
    road_cross double precision,
    forest_density_start double precision,
    dem_start double precision,
    slope_start double precision,
    aspect_start double precision,
    road_proximity_start double precision,
    x1_trans double precision,
    y1_trans double precision,
    forest_density_end double precision,
    dem_end double precision,
    slope_end double precision,
    aspect_end double precision,
    road_proximity_end double precision,
    x2_trans double precision,
    y2_trans double precision,
    geom_start public.geometry,
    geom_end public.geometry,
    snow_modis_start numeric,
    snow_modis_end numeric,
    ndvi_modis_boku_start numeric,
    ndvi_modis_boku_end numeric,
    ndvi_constancy_start numeric,
    ndvi_constancy_end numeric,
    ndvi_contingency_start numeric,
    ndvi_contingency_end numeric,
    ndvi_predictability_start numeric,
    ndvi_predictability_end numeric
);


--
-- Name: gio_sum6; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.gio_sum6 (
    "row.names" text,
    burst text,
    topmod text,
    locs integer,
    "date.begin" timestamp with time zone,
    "date.end" timestamp with time zone
);


--
-- Name: gps_classified; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.gps_classified (
    gps_classified_id integer NOT NULL,
    animals_id integer,
    acquisition_time timestamp with time zone,
    geom public.geometry(Point,4326),
    gps_origin smallint,
    animals_name character varying,
    age_class integer,
    sex character varying,
    corine_land_cover_2006_code integer,
    altitude_aster integer,
    landcover_class integer,
    altitude_class integer,
    doy integer,
    jday integer,
    utm_srid integer,
    utm_x integer,
    utm_y integer,
    temperature_sensor double precision
);


--
-- Name: TABLE gps_classified; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON TABLE ws_fem.gps_classified IS 'GPS data regularized at 4 hours and interpolated (gap < 12 hours, i.e. 3 missing locations).';


--
-- Name: gps_classified_gps_classified_id_seq; Type: SEQUENCE; Schema: ws_fem; Owner: -
--

CREATE SEQUENCE ws_fem.gps_classified_gps_classified_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: gps_classified_gps_classified_id_seq; Type: SEQUENCE OWNED BY; Schema: ws_fem; Owner: -
--

ALTER SEQUENCE ws_fem.gps_classified_gps_classified_id_seq OWNED BY ws_fem.gps_classified.gps_classified_id;


--
-- Name: grid_points; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.grid_points (
    id bigint NOT NULL,
    geom public.geometry(Point,4326),
    study_areas_id integer
);


--
-- Name: grid_points_rd; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.grid_points_rd (
    id bigint NOT NULL,
    geom public.geometry(Point,4326),
    study_areas_id integer,
    done integer
);


--
-- Name: joh_avg_daily_dist_woodland_habitat_fran; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_avg_daily_dist_woodland_habitat_fran (
    animals_id integer,
    study_areas_id integer,
    date date,
    avg_dist numeric
);


--
-- Name: joh_cams_data_roe_red_fran; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cams_data_roe_red_fran (
    gps_data_animals_id integer,
    species text,
    research_groups_id integer,
    study_areas_id integer,
    sex "char",
    row_number bigint,
    animals_id integer,
    gps_sensors_id integer,
    acquisition_time timestamp with time zone,
    x_original_reference double precision,
    y_original_reference double precision,
    srid_original_reference integer,
    latitude double precision,
    longitude double precision,
    geom public.geometry(Point,4326),
    gps_validity_code smallint,
    utm_x integer,
    utm_y integer,
    utm_srid integer
);


--
-- Name: TABLE joh_cams_data_roe_red_fran; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON TABLE ws_fem.joh_cams_data_roe_red_fran IS 'data table (subset db): For roe and red deer 2 male and 2 female per study area (red 1,2,4,6; roe 1,2,5,8,24). Only adult individuals. Maximum 15% missing data and close to 1 year of observations.';


--
-- Name: joh_cams_roe_red_fran; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cams_roe_red_fran (
    row_number bigint,
    species text,
    research_groups_id integer,
    research_group_name character varying(250),
    contact character varying,
    study_areas_id integer,
    animals_id integer,
    gps_sensors_id integer,
    sex "char",
    age_class_description character varying,
    first_capture_date date,
    all_points bigint,
    invalid bigint,
    perc_missing double precision,
    days_acquisition double precision
);


--
-- Name: TABLE joh_cams_roe_red_fran; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON TABLE ws_fem.joh_cams_roe_red_fran IS 'animals table (subset db): For roe and red deer 2 male and 2 female per study area (red 1,2,4,6; roe 1,2,5,8,24). Only adult individuals. Maximum 15% missing data and close to 1 year of observations.';


--
-- Name: COLUMN joh_cams_roe_red_fran.row_number; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.joh_cams_roe_red_fran.row_number IS 'Unique id per animal.';


--
-- Name: COLUMN joh_cams_roe_red_fran.all_points; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.joh_cams_roe_red_fran.all_points IS 'All locations within acquisition period.';


--
-- Name: COLUMN joh_cams_roe_red_fran.invalid; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.joh_cams_roe_red_fran.invalid IS 'All invalid locations within acquisition_interval.';


--
-- Name: COLUMN joh_cams_roe_red_fran.perc_missing; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.joh_cams_roe_red_fran.perc_missing IS 'Percentage of missing locations in acquisition interval.';


--
-- Name: COLUMN joh_cams_roe_red_fran.days_acquisition; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.joh_cams_roe_red_fran.days_acquisition IS 'Number of days of the acquisition period.';


--
-- Name: joh_cembra_sl; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_sl (
    id integer,
    rownr bigint,
    animals_id integer,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    random_step double precision,
    geom public.geometry,
    longitude double precision,
    latitude double precision,
    sample integer
);


--
-- Name: joh_cembra_sl_input_data; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_sl_input_data (
    animals_id integer,
    id integer,
    acquisition_time timestamp with time zone,
    longitude double precision,
    latitude double precision,
    geom public.geometry
);


--
-- Name: joh_cembra_sl_original_data; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_sl_original_data (
    "row.names" text,
    "X" double precision,
    "Y" double precision,
    "NO" integer,
    "CollarID" integer,
    "UTC_DATE" text,
    "UTC_TIME" text,
    "LMT_DATE" text,
    "LMT_TIME" text,
    "Origin" text,
    "ECEF_X" integer,
    "ECEF_Y" integer,
    "ECEF_Z" integer,
    "LATITUDE" double precision,
    "LONGITUDE" double precision,
    "HEIGHT" double precision,
    "DOP" double precision,
    "FIXTYPE" text,
    "ERROR" double precision,
    "SATS_USED" integer,
    "CH1_SATID" integer,
    "CH1_C_N" integer,
    "CH2_SATID" integer,
    "CH2_C_N" integer,
    "CH3_SATID" integer,
    "CH3_C_N" integer,
    "CH4_SATID" integer,
    "CH4_C_N" integer,
    "CH5_SATID" integer,
    "CH5_C_N" integer,
    "CH6_SATID" integer,
    "CH6_C_N" integer,
    "CH7_SATID" integer,
    "CH7_C_N" integer,
    "CH8_SATID" integer,
    "CH8_C_N" integer,
    "CH9_SATID" integer,
    "CH9_C_N" integer,
    "CH10_SATID" integer,
    "CH10_C_N" integer,
    "CH11_SATID" integer,
    "CH11_C_N" integer,
    "CH12_SATID" integer,
    "CH12_C_N" integer,
    "MOR_STATUS" boolean,
    "ACTIVITY" integer,
    "MAIN_VOL" double precision,
    "BU_VOL" double precision,
    "TEMP" integer,
    "Easting" double precision,
    "Northing" double precision,
    "AnimalID" integer,
    "GroupID" integer
);


--
-- Name: joh_cembra_sl_sample_temp2_p; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_sl_sample_temp2_p (
    rownr bigint,
    id integer,
    animals_id integer,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    random_step double precision,
    geom public.geometry,
    longitude double precision,
    latitude double precision,
    sample integer,
    sample_id bigint,
    random_angle double precision,
    st_project public.geography
);


--
-- Name: joh_cembra_sl_sample_utm; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_sl_sample_utm (
    rownr bigint,
    id integer,
    animals_id integer,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    used_geom public.geometry,
    used_x double precision,
    used_y double precision,
    sample integer,
    sample_id bigint,
    random_step double precision,
    random_angle double precision,
    available_geom public.geometry,
    available_x double precision,
    available_y double precision,
    update_temp integer
);


--
-- Name: joh_cembra_sl_sample_utm_p; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_sl_sample_utm_p (
    rownr bigint,
    id integer,
    animals_id integer,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    used_geom public.geometry,
    used_x double precision,
    used_y double precision,
    sample integer,
    sample_id bigint,
    random_step double precision,
    random_angle double precision,
    available_geom public.geometry,
    available_x double precision,
    available_y double precision
);


--
-- Name: joh_cembra_sl_sample_wgs; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_sl_sample_wgs (
    rownr bigint,
    id integer,
    animals_id integer,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    used_geom public.geometry,
    used_latitude double precision,
    used_longitude double precision,
    sample integer,
    sample_id bigint,
    random_step double precision,
    random_angle double precision,
    available_geom public.geography,
    available_latitude double precision,
    available_longitude double precision
);


--
-- Name: joh_cembra_update212_id26_sl_sample_temp1; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update212_id26_sl_sample_temp1 (
    id integer,
    rownr bigint,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    random_step double precision,
    geom public.geometry,
    longitude double precision,
    latitude double precision,
    sample integer,
    sample_id bigint
);


--
-- Name: joh_cembra_update212_id26_sl_sample_temp2; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update212_id26_sl_sample_temp2 (
    rownr bigint,
    id integer,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    random_step double precision,
    geom public.geometry,
    longitude double precision,
    latitude double precision,
    sample integer,
    sample_id bigint,
    random_angle double precision,
    st_project public.geography
);


--
-- Name: joh_cembra_update212_id26_sl_sample_utm; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update212_id26_sl_sample_utm (
    rownr bigint,
    id integer,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    used_geom public.geometry,
    used_x double precision,
    used_y double precision,
    sample integer,
    sample_id bigint,
    random_angle double precision,
    available_geom public.geometry,
    available_x double precision,
    available_y double precision
);


--
-- Name: joh_cembra_update212_id26_sl_sample_wgs; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update212_id26_sl_sample_wgs (
    rownr bigint,
    id integer,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    used_geom public.geometry,
    used_latitude double precision,
    used_longitude double precision,
    sample integer,
    sample_id bigint,
    random_step double precision,
    random_angle double precision,
    available_geom public.geography,
    available_latitude double precision,
    available_longitude double precision
);


--
-- Name: joh_cembra_update212_id2_sl_sample_temp1; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update212_id2_sl_sample_temp1 (
    id integer,
    rownr bigint,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    random_step double precision,
    geom public.geometry,
    longitude double precision,
    latitude double precision,
    sample integer,
    sample_id bigint
);


--
-- Name: joh_cembra_update212_id2_sl_sample_temp2; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update212_id2_sl_sample_temp2 (
    rownr bigint,
    id integer,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    random_step double precision,
    geom public.geometry,
    longitude double precision,
    latitude double precision,
    sample integer,
    sample_id bigint,
    random_angle double precision,
    st_project public.geography
);


--
-- Name: joh_cembra_update212_id2_sl_sample_utm; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update212_id2_sl_sample_utm (
    rownr bigint,
    id integer,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    used_geom public.geometry,
    used_x double precision,
    used_y double precision,
    sample integer,
    sample_id bigint,
    random_angle double precision,
    available_geom public.geometry,
    available_x double precision,
    available_y double precision
);


--
-- Name: joh_cembra_update212_id2_sl_sample_wgs; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update212_id2_sl_sample_wgs (
    rownr bigint,
    id integer,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    used_geom public.geometry,
    used_latitude double precision,
    used_longitude double precision,
    sample integer,
    sample_id bigint,
    random_step double precision,
    random_angle double precision,
    available_geom public.geography,
    available_latitude double precision,
    available_longitude double precision
);


--
-- Name: joh_cembra_update212_id8_sl_sample_temp1; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update212_id8_sl_sample_temp1 (
    id integer,
    rownr bigint,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    random_step double precision,
    geom public.geometry,
    longitude double precision,
    latitude double precision,
    sample integer,
    sample_id bigint
);


--
-- Name: joh_cembra_update212_id8_sl_sample_temp2; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update212_id8_sl_sample_temp2 (
    rownr bigint,
    id integer,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    random_step double precision,
    geom public.geometry,
    longitude double precision,
    latitude double precision,
    sample integer,
    sample_id bigint,
    random_angle double precision,
    st_project public.geography
);


--
-- Name: joh_cembra_update212_id8_sl_sample_utm; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update212_id8_sl_sample_utm (
    rownr bigint,
    id integer,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    used_geom public.geometry,
    used_x double precision,
    used_y double precision,
    sample integer,
    sample_id bigint,
    random_angle double precision,
    available_geom public.geometry,
    available_x double precision,
    available_y double precision
);


--
-- Name: joh_cembra_update212_id8_sl_sample_wgs; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update212_id8_sl_sample_wgs (
    rownr bigint,
    id integer,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    used_geom public.geometry,
    used_latitude double precision,
    used_longitude double precision,
    sample integer,
    sample_id bigint,
    random_step double precision,
    random_angle double precision,
    available_geom public.geography,
    available_latitude double precision,
    available_longitude double precision
);


--
-- Name: joh_cembra_update212_idlast_sl_sample_temp1; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update212_idlast_sl_sample_temp1 (
    id integer,
    rownr bigint,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    random_step double precision,
    geom public.geometry,
    longitude double precision,
    latitude double precision,
    sample integer,
    sample_id bigint
);


--
-- Name: joh_cembra_update212_idlast_sl_sample_temp2; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update212_idlast_sl_sample_temp2 (
    rownr bigint,
    id integer,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    random_step double precision,
    geom public.geometry,
    longitude double precision,
    latitude double precision,
    sample integer,
    sample_id bigint,
    random_angle double precision,
    st_project public.geography
);


--
-- Name: joh_cembra_update212_idlast_sl_sample_utm; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update212_idlast_sl_sample_utm (
    rownr bigint,
    id integer,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    used_geom public.geometry,
    used_x double precision,
    used_y double precision,
    sample integer,
    sample_id bigint,
    random_angle double precision,
    available_geom public.geometry,
    available_x double precision,
    available_y double precision
);


--
-- Name: joh_cembra_update212_idlast_sl_sample_wgs; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update212_idlast_sl_sample_wgs (
    rownr bigint,
    id integer,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    used_geom public.geometry,
    used_latitude double precision,
    used_longitude double precision,
    sample integer,
    sample_id bigint,
    random_step double precision,
    random_angle double precision,
    available_geom public.geography,
    available_latitude double precision,
    available_longitude double precision
);


--
-- Name: joh_cembra_update212_sl_sample_temp1; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update212_sl_sample_temp1 (
    id integer,
    rownr bigint,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    random_step double precision,
    geom public.geometry,
    longitude double precision,
    latitude double precision,
    sample integer,
    sample_id bigint
);


--
-- Name: joh_cembra_update212_sl_sample_temp2; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update212_sl_sample_temp2 (
    rownr bigint,
    id integer,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    random_step double precision,
    geom public.geometry,
    longitude double precision,
    latitude double precision,
    sample integer,
    sample_id bigint,
    random_angle double precision,
    st_project public.geography
);


--
-- Name: joh_cembra_update212_sl_sample_utm; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update212_sl_sample_utm (
    rownr bigint,
    id integer,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    used_geom public.geometry,
    used_x double precision,
    used_y double precision,
    sample integer,
    sample_id bigint,
    random_angle double precision,
    available_geom public.geometry,
    available_x double precision,
    available_y double precision
);


--
-- Name: joh_cembra_update212_sl_sample_wgs; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update212_sl_sample_wgs (
    rownr bigint,
    id integer,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    used_geom public.geometry,
    used_latitude double precision,
    used_longitude double precision,
    sample integer,
    sample_id bigint,
    random_step double precision,
    random_angle double precision,
    available_geom public.geography,
    available_latitude double precision,
    available_longitude double precision
);


--
-- Name: joh_cembra_update21_sl_sample_temp1; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update21_sl_sample_temp1 (
    id integer,
    rownr bigint,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    random_step double precision,
    geom public.geometry,
    longitude double precision,
    latitude double precision,
    sample integer,
    sample_id bigint
);


--
-- Name: joh_cembra_update21_sl_sample_temp2; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update21_sl_sample_temp2 (
    rownr bigint,
    id integer,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    random_step double precision,
    geom public.geometry,
    longitude double precision,
    latitude double precision,
    sample integer,
    sample_id bigint,
    random_angle double precision,
    st_project public.geography
);


--
-- Name: joh_cembra_update21_sl_sample_utm; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update21_sl_sample_utm (
    rownr bigint,
    id integer,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    used_geom public.geometry,
    used_x double precision,
    used_y double precision,
    sample integer,
    sample_id bigint,
    random_angle double precision,
    available_geom public.geometry,
    available_x double precision,
    available_y double precision
);


--
-- Name: joh_cembra_update21_sl_sample_wgs; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update21_sl_sample_wgs (
    rownr bigint,
    id integer,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    used_geom public.geometry,
    used_latitude double precision,
    used_longitude double precision,
    sample integer,
    sample_id bigint,
    random_step double precision,
    random_angle double precision,
    available_geom public.geography,
    available_latitude double precision,
    available_longitude double precision
);


--
-- Name: joh_cembra_update2_sl; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update2_sl (
    id integer,
    rownr bigint,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    random_step double precision,
    geom public.geometry,
    longitude double precision,
    latitude double precision,
    sample integer
);


--
-- Name: joh_cembra_update2_sl_input_data; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update2_sl_input_data (
    animals_id text,
    id integer,
    acquisition_time timestamp with time zone,
    longitude double precision,
    latitude double precision,
    geom public.geometry
);


--
-- Name: joh_cembra_update2_sl_original_data; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update2_sl_original_data (
    "row.names" text,
    "No" integer,
    "CollarID" integer,
    "UTC_Date" text,
    "UTC_Time" text,
    "LMT_Date" text,
    "LMT_Time" text,
    "Origin" text,
    "SCTS_Date" text,
    "SCTS_Time" text,
    "ECEF_X" integer,
    "ECEF_Y" integer,
    "ECEF_Z" integer,
    "Latitude" double precision,
    "Longitude" double precision,
    "Height" double precision,
    "DOP" double precision,
    "FixType" text,
    "X3D_Error" boolean,
    "Sats" boolean,
    "Sat" boolean,
    "C.N" boolean,
    "Sat.1" boolean,
    "C.N.1" boolean,
    "Sat.2" boolean,
    "C.N.2" boolean,
    "Sat.3" boolean,
    "C.N.3" boolean,
    "Sat.4" boolean,
    "C.N.4" boolean,
    "Sat.5" boolean,
    "C.N.5" boolean,
    "Sat.6" boolean,
    "C.N.6" boolean,
    "Sat.7" boolean,
    "C.N.7" boolean,
    "Sat.8" boolean,
    "C.N.8" boolean,
    "Sat.9" boolean,
    "C.N.9" boolean,
    "Sat.10" boolean,
    "C.N.10" boolean,
    "Sat.11" boolean,
    "C.N.11" boolean,
    "Mort..Status" boolean,
    "Activity" boolean,
    "Main" double precision,
    "Beacon" double precision,
    "Temp" integer,
    "Easting" double precision,
    "Northing" double precision,
    "AnimalID" text,
    "GroupID" text
);


--
-- Name: joh_cembra_update2_sl_sample_temp1; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update2_sl_sample_temp1 (
    id integer,
    rownr bigint,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    random_step double precision,
    geom public.geometry,
    longitude double precision,
    latitude double precision,
    sample integer,
    sample_id bigint
);


--
-- Name: joh_cembra_update2_sl_sample_temp2; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update2_sl_sample_temp2 (
    rownr bigint,
    id integer,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    random_step double precision,
    geom public.geometry,
    longitude double precision,
    latitude double precision,
    sample integer,
    sample_id bigint,
    random_angle double precision,
    st_project public.geography
);


--
-- Name: joh_cembra_update2_sl_sample_utm; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update2_sl_sample_utm (
    rownr bigint,
    id integer,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    used_geom public.geometry,
    used_x double precision,
    used_y double precision,
    sample integer,
    sample_id bigint,
    random_angle double precision,
    available_geom public.geometry,
    available_x double precision,
    available_y double precision
);


--
-- Name: joh_cembra_update2_sl_sample_wgs; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update2_sl_sample_wgs (
    rownr bigint,
    id integer,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    used_geom public.geometry,
    used_latitude double precision,
    used_longitude double precision,
    sample integer,
    sample_id bigint,
    random_step double precision,
    random_angle double precision,
    available_geom public.geography,
    available_latitude double precision,
    available_longitude double precision
);


--
-- Name: joh_cembra_update2_sl_temp1; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update2_sl_temp1 (
    id integer,
    rownr bigint,
    animals_id text,
    acquisition_time timestamp with time zone,
    timeseriesx timestamp with time zone,
    steplength double precision,
    geom public.geometry,
    longitude double precision,
    latitude double precision
);


--
-- Name: joh_cembra_update2_sl_temp2; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update2_sl_temp2 (
    id integer,
    rownr bigint,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    random_step double precision,
    geom public.geometry,
    longitude double precision,
    latitude double precision
);


--
-- Name: joh_cembra_update_julius_minmax_sl; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update_julius_minmax_sl (
    min double precision,
    max double precision
);


--
-- Name: joh_cembra_update_minmax_sl; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update_minmax_sl (
    min double precision,
    max double precision
);


--
-- Name: joh_cembra_update_minmax_sl_all; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update_minmax_sl_all (
    min double precision,
    max double precision
);


--
-- Name: joh_cembra_update_minmax_sl_julius; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update_minmax_sl_julius (
    min double precision,
    max double precision
);


--
-- Name: joh_cembra_update_sl; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update_sl (
    id integer,
    rownr bigint,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    random_step double precision,
    geom public.geometry,
    longitude double precision,
    latitude double precision,
    sample integer
);


--
-- Name: joh_cembra_update_sl_all; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update_sl_all (
    id integer,
    rownr bigint,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    random_step double precision,
    geom public.geometry,
    longitude double precision,
    latitude double precision,
    sample integer
);


--
-- Name: joh_cembra_update_sl_all_final; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update_sl_all_final (
    id integer,
    rownr bigint,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    random_step double precision,
    geom public.geometry,
    longitude double precision,
    latitude double precision,
    sample integer
);


--
-- Name: joh_cembra_update_sl_all_final_sample_temp1; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update_sl_all_final_sample_temp1 (
    id integer,
    rownr bigint,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    random_step double precision,
    geom public.geometry,
    longitude double precision,
    latitude double precision,
    sample integer,
    sample_id bigint
);


--
-- Name: joh_cembra_update_sl_all_final_sample_temp2; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update_sl_all_final_sample_temp2 (
    rownr bigint,
    id integer,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    random_step double precision,
    geom public.geometry,
    longitude double precision,
    latitude double precision,
    sample integer,
    sample_id bigint,
    random_angle double precision,
    st_project public.geography
);


--
-- Name: joh_cembra_update_sl_all_final_sample_utm; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update_sl_all_final_sample_utm (
    rownr bigint,
    id integer,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    used_geom public.geometry,
    used_x double precision,
    used_y double precision,
    sample integer,
    sample_id bigint,
    random_angle double precision,
    available_geom public.geometry,
    available_x double precision,
    available_y double precision
);


--
-- Name: joh_cembra_update_sl_all_final_sample_wgs; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update_sl_all_final_sample_wgs (
    rownr bigint,
    id integer,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    used_geom public.geometry,
    used_latitude double precision,
    used_longitude double precision,
    sample integer,
    sample_id bigint,
    random_step double precision,
    random_angle double precision,
    available_geom public.geography,
    available_latitude double precision,
    available_longitude double precision
);


--
-- Name: joh_cembra_update_sl_all_input_data; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update_sl_all_input_data (
    animals_id text,
    id integer,
    acquisition_time timestamp with time zone,
    longitude double precision,
    latitude double precision,
    geom public.geometry
);


--
-- Name: joh_cembra_update_sl_all_original_data; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update_sl_all_original_data (
    "row.names" text,
    "No" integer,
    "CollarID" integer,
    "UTC_Date" text,
    "UTC_Time" text,
    "LMT_Date" text,
    "LMT_Time" text,
    "Origin" text,
    "SCTS_Date" text,
    "SCTS_Time" text,
    "ECEF_X" integer,
    "ECEF_Y" integer,
    "ECEF_Z" integer,
    "Latitude" double precision,
    "Longitude" double precision,
    "Height" double precision,
    "DOP" double precision,
    "FixType" text
);


--
-- Name: joh_cembra_update_sl_all_sample_utm; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update_sl_all_sample_utm (
    rownr bigint,
    id integer,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    used_geom public.geometry,
    used_x double precision,
    used_y double precision,
    sample integer,
    sample_id bigint,
    random_angle double precision,
    available_geom public.geometry,
    available_x double precision,
    available_y double precision
);


--
-- Name: joh_cembra_update_sl_all_sample_wgs; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update_sl_all_sample_wgs (
    rownr bigint,
    id integer,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    used_geom public.geometry,
    used_latitude double precision,
    used_longitude double precision,
    sample integer,
    sample_id bigint,
    random_step double precision,
    random_angle double precision,
    available_geom public.geography,
    available_latitude double precision,
    available_longitude double precision
);


--
-- Name: joh_cembra_update_sl_all_temp1; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update_sl_all_temp1 (
    id integer,
    rownr bigint,
    animals_id text,
    acquisition_time timestamp with time zone,
    timeseriesx timestamp with time zone,
    steplength double precision,
    geom public.geometry,
    longitude double precision,
    latitude double precision
);


--
-- Name: joh_cembra_update_sl_all_temp2; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update_sl_all_temp2 (
    id integer,
    rownr bigint,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    random_step double precision,
    geom public.geometry,
    longitude double precision,
    latitude double precision
);


--
-- Name: joh_cembra_update_sl_input_data; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update_sl_input_data (
    animals_id text,
    id integer,
    acquisition_time timestamp with time zone,
    longitude double precision,
    latitude double precision,
    geom public.geometry
);


--
-- Name: joh_cembra_update_sl_julius; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update_sl_julius (
    id integer,
    rownr bigint,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    random_step double precision,
    geom public.geometry,
    longitude double precision,
    latitude double precision,
    sample integer
);


--
-- Name: joh_cembra_update_sl_julius13_sample_temp1; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update_sl_julius13_sample_temp1 (
    id integer,
    rownr bigint,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    random_step double precision,
    geom public.geometry,
    longitude double precision,
    latitude double precision,
    sample integer,
    sample_id bigint
);


--
-- Name: joh_cembra_update_sl_julius13_sample_temp2; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update_sl_julius13_sample_temp2 (
    rownr bigint,
    id integer,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    random_step double precision,
    geom public.geometry,
    longitude double precision,
    latitude double precision,
    sample integer,
    sample_id bigint,
    random_angle double precision,
    st_project public.geography
);


--
-- Name: joh_cembra_update_sl_julius13_sample_utm; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update_sl_julius13_sample_utm (
    rownr bigint,
    id integer,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    used_geom public.geometry,
    used_x double precision,
    used_y double precision,
    sample integer,
    sample_id bigint,
    random_angle double precision,
    available_geom public.geometry,
    available_x double precision,
    available_y double precision
);


--
-- Name: joh_cembra_update_sl_julius13_sample_wgs; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update_sl_julius13_sample_wgs (
    rownr bigint,
    id integer,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    used_geom public.geometry,
    used_latitude double precision,
    used_longitude double precision,
    sample integer,
    sample_id bigint,
    random_step double precision,
    random_angle double precision,
    available_geom public.geography,
    available_latitude double precision,
    available_longitude double precision
);


--
-- Name: joh_cembra_update_sl_julius1_sample_temp1; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update_sl_julius1_sample_temp1 (
    id integer,
    rownr bigint,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    random_step double precision,
    geom public.geometry,
    longitude double precision,
    latitude double precision,
    sample integer,
    sample_id bigint
);


--
-- Name: joh_cembra_update_sl_julius1_sample_temp2; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update_sl_julius1_sample_temp2 (
    rownr bigint,
    id integer,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    random_step double precision,
    geom public.geometry,
    longitude double precision,
    latitude double precision,
    sample integer,
    sample_id bigint,
    random_angle double precision,
    st_project public.geography
);


--
-- Name: joh_cembra_update_sl_julius1_sample_utm; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update_sl_julius1_sample_utm (
    rownr bigint,
    id integer,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    used_geom public.geometry,
    used_x double precision,
    used_y double precision,
    sample integer,
    sample_id bigint,
    random_angle double precision,
    available_geom public.geometry,
    available_x double precision,
    available_y double precision
);


--
-- Name: joh_cembra_update_sl_julius1_sample_wgs; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update_sl_julius1_sample_wgs (
    rownr bigint,
    id integer,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    used_geom public.geometry,
    used_latitude double precision,
    used_longitude double precision,
    sample integer,
    sample_id bigint,
    random_step double precision,
    random_angle double precision,
    available_geom public.geography,
    available_latitude double precision,
    available_longitude double precision
);


--
-- Name: joh_cembra_update_sl_julius_all_input_data; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update_sl_julius_all_input_data (
    animals_id text,
    id integer,
    acquisition_time timestamp with time zone,
    longitude double precision,
    latitude double precision,
    geom public.geometry
);


--
-- Name: joh_cembra_update_sl_julius_bracketssample_temp1; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update_sl_julius_bracketssample_temp1 (
    id integer,
    rownr bigint,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    random_step double precision,
    geom public.geometry,
    longitude double precision,
    latitude double precision,
    sample integer,
    sample_id bigint
);


--
-- Name: joh_cembra_update_sl_julius_bracketssample_temp2; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update_sl_julius_bracketssample_temp2 (
    rownr bigint,
    id integer,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    random_step double precision,
    geom public.geometry,
    longitude double precision,
    latitude double precision,
    sample integer,
    sample_id bigint,
    random_angle double precision,
    st_project public.geography
);


--
-- Name: joh_cembra_update_sl_julius_bracketssample_utm; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update_sl_julius_bracketssample_utm (
    rownr bigint,
    id integer,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    used_geom public.geometry,
    used_x double precision,
    used_y double precision,
    sample integer,
    sample_id bigint,
    random_angle double precision,
    available_geom public.geometry,
    available_x double precision,
    available_y double precision
);


--
-- Name: joh_cembra_update_sl_julius_bracketssample_wgs; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update_sl_julius_bracketssample_wgs (
    rownr bigint,
    id integer,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    used_geom public.geometry,
    used_latitude double precision,
    used_longitude double precision,
    sample integer,
    sample_id bigint,
    random_step double precision,
    random_angle double precision,
    available_geom public.geography,
    available_latitude double precision,
    available_longitude double precision
);


--
-- Name: joh_cembra_update_sl_julius_s13_sample_temp1; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update_sl_julius_s13_sample_temp1 (
    id integer,
    rownr bigint,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    random_step double precision,
    geom public.geometry,
    longitude double precision,
    latitude double precision,
    sample integer,
    sample_id bigint
);


--
-- Name: joh_cembra_update_sl_julius_s13_sample_temp2; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update_sl_julius_s13_sample_temp2 (
    rownr bigint,
    id integer,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    random_step double precision,
    geom public.geometry,
    longitude double precision,
    latitude double precision,
    sample integer,
    sample_id bigint,
    random_angle double precision,
    st_project public.geography
);


--
-- Name: joh_cembra_update_sl_julius_s13_sample_utm; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update_sl_julius_s13_sample_utm (
    rownr bigint,
    id integer,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    used_geom public.geometry,
    used_x double precision,
    used_y double precision,
    sample integer,
    sample_id bigint,
    random_angle double precision,
    available_geom public.geometry,
    available_x double precision,
    available_y double precision
);


--
-- Name: joh_cembra_update_sl_julius_s13_sample_wgs; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update_sl_julius_s13_sample_wgs (
    rownr bigint,
    id integer,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    used_geom public.geometry,
    used_latitude double precision,
    used_longitude double precision,
    sample integer,
    sample_id bigint,
    random_step double precision,
    random_angle double precision,
    available_geom public.geography,
    available_latitude double precision,
    available_longitude double precision
);


--
-- Name: joh_cembra_update_sl_julius_temp1; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update_sl_julius_temp1 (
    id integer,
    rownr bigint,
    animals_id text,
    acquisition_time timestamp with time zone,
    timeseriesx timestamp with time zone,
    steplength double precision,
    geom public.geometry,
    longitude double precision,
    latitude double precision
);


--
-- Name: joh_cembra_update_sl_julius_temp2; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update_sl_julius_temp2 (
    id integer,
    rownr bigint,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    random_step double precision,
    geom public.geometry,
    longitude double precision,
    latitude double precision
);


--
-- Name: joh_cembra_update_sl_original_data; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update_sl_original_data (
    "row.names" text,
    "No" integer,
    "CollarID" integer,
    "UTC_Date" text,
    "UTC_Time" text,
    "LMT_Date" text,
    "LMT_Time" text,
    "Origin" text,
    "SCTS_Date" text,
    "SCTS_Time" text,
    "ECEF_X" integer,
    "ECEF_Y" integer,
    "ECEF_Z" integer,
    "Latitude" double precision,
    "Longitude" double precision,
    "Height" double precision,
    "DOP" double precision,
    "FixType" text,
    "X3D_Error" boolean,
    "Sats" boolean,
    "Sat" boolean,
    "C.N" boolean,
    "Sat.1" boolean,
    "C.N.1" boolean,
    "Sat.2" boolean,
    "C.N.2" boolean,
    "Sat.3" boolean,
    "C.N.3" boolean,
    "Sat.4" boolean,
    "C.N.4" boolean,
    "Sat.5" boolean,
    "C.N.5" boolean,
    "Sat.6" boolean,
    "C.N.6" boolean,
    "Sat.7" boolean,
    "C.N.7" boolean,
    "Sat.8" boolean,
    "C.N.8" boolean,
    "Sat.9" boolean,
    "C.N.9" boolean,
    "Sat.10" boolean,
    "C.N.10" boolean,
    "Sat.11" boolean,
    "C.N.11" boolean,
    "Mort..Status" boolean,
    "Activity" boolean,
    "Main" double precision,
    "Beacon" double precision,
    "Temp" integer,
    "Easting" double precision,
    "Northing" double precision,
    "AnimalID" text,
    "GroupID" text
);


--
-- Name: joh_cembra_update_sl_temp_sample_temp1; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update_sl_temp_sample_temp1 (
    id integer,
    rownr bigint,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    random_step double precision,
    geom public.geometry,
    longitude double precision,
    latitude double precision,
    sample integer,
    sample_id bigint
);


--
-- Name: joh_cembra_update_sl_temp_sample_temp2; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update_sl_temp_sample_temp2 (
    rownr bigint,
    id integer,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    random_step double precision,
    geom public.geometry,
    longitude double precision,
    latitude double precision,
    sample integer,
    sample_id bigint,
    random_angle double precision,
    st_project public.geography
);


--
-- Name: joh_cembra_update_sl_temp_sample_utm; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update_sl_temp_sample_utm (
    rownr bigint,
    id integer,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    used_geom public.geometry,
    used_x double precision,
    used_y double precision,
    sample integer,
    sample_id bigint,
    random_angle double precision,
    available_geom public.geometry,
    available_x double precision,
    available_y double precision
);


--
-- Name: joh_cembra_update_sl_temp_sample_wgs; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_update_sl_temp_sample_wgs (
    rownr bigint,
    id integer,
    animals_id text,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    used_geom public.geometry,
    used_latitude double precision,
    used_longitude double precision,
    sample integer,
    sample_id bigint,
    random_angle double precision,
    available_geom public.geography,
    available_latitude double precision,
    available_longitude double precision
);


--
-- Name: joh_cembra_veg_camera_design; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_veg_camera_design (
    sampling_type text,
    utm_32632_x double precision,
    utm_32632_y double precision,
    id integer,
    sampling_set integer,
    geom public.geometry,
    latitude double precision,
    longitude double precision,
    slope_srtm double precision,
    aspect_srtm double precision,
    altitude_srtm double precision,
    corine2006 integer
);


--
-- Name: joh_cembra_veg_camera_design_a; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_cembra_veg_camera_design_a (
    "row.names" text,
    type text,
    x double precision,
    y double precision,
    id integer,
    set integer
);


--
-- Name: joh_clctcd_roe; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_clctcd_roe (
    row_number bigint,
    study_areas_id integer,
    sex "char",
    animals_id integer,
    acquisition_time timestamp with time zone,
    geom public.geometry(Point,4326),
    forest_density integer,
    corine_land_cover_2012_vector_code integer,
    timex time without time zone,
    datex date,
    yearx double precision,
    mid_or_noon text,
    doyx double precision,
    aniyr text,
    min double precision,
    max double precision,
    diff_doy double precision
);


--
-- Name: joh_clctcd_roe2h; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_clctcd_roe2h (
    row_number bigint,
    study_areas_id integer,
    sex "char",
    animals_id integer,
    acquisition_time timestamp with time zone,
    geom public.geometry(Point,4326),
    forest_density integer,
    corine_land_cover_2012_vector_code integer,
    timex time without time zone,
    datex date,
    yearx double precision,
    mid_or_noon text,
    doyx double precision,
    aniyr text,
    min double precision,
    max double precision,
    diff_doy double precision
);


--
-- Name: joh_clctcd_roe_aniyr; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_clctcd_roe_aniyr (
    study_areas_id integer,
    animals_id integer,
    aniyr text,
    sex "char",
    count bigint,
    prop double precision,
    cnt_night bigint,
    prop_night double precision,
    cnt_day bigint,
    prop_day double precision
);


--
-- Name: joh_data_kernel; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_data_kernel (
    row_number bigint,
    animals_id integer,
    acquisition_time timestamp with time zone,
    time_trunc timestamp with time zone,
    monthx double precision,
    dayx double precision,
    yearx double precision,
    hourx double precision,
    kernel_den double precision,
    reclass_kernel text,
    y_coord double precision,
    x_coord double precision,
    longitude double precision,
    latitude double precision,
    geom public.geometry
);


--
-- Name: joh_data_marco; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_data_marco (
    study_areas_id integer,
    animals_id integer,
    gps_sensors_id integer,
    sex "char",
    acquisition_time timestamp without time zone,
    acquisition_time_r timestamp without time zone,
    latitude double precision,
    longitude double precision,
    geom public.geometry(Point,4326),
    st_y double precision,
    st_x double precision,
    gps_validity_code smallint,
    monthx double precision,
    dayx double precision,
    weekx double precision,
    hourx double precision,
    yearx double precision
);


--
-- Name: joh_data_marco_period_a; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_data_marco_period_a (
    study_areas_id integer,
    animals_id integer,
    gps_sensors_id integer,
    sex "char",
    acquisition_time timestamp without time zone,
    acquisition_time_r timestamp without time zone,
    latitude double precision,
    longitude double precision,
    geom public.geometry(Point,4326),
    st_y double precision,
    st_x double precision,
    gps_validity_code smallint,
    monthx double precision,
    dayx double precision,
    weekx double precision,
    hourx double precision,
    yearx double precision
);


--
-- Name: joh_data_marco_period_a_random; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_data_marco_period_a_random (
    study_areas_id integer,
    animals_id integer,
    gps_sensors_id integer,
    sex "char",
    acquisition_time timestamp without time zone,
    acquisition_time_r timestamp without time zone,
    latitude double precision,
    longitude double precision,
    geom public.geometry(Point,4326),
    st_y double precision,
    st_x double precision,
    gps_validity_code smallint,
    monthx double precision,
    dayx double precision,
    weekx double precision,
    hourx double precision,
    yearx double precision
);


--
-- Name: joh_data_marco_period_ab; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_data_marco_period_ab (
    study_areas_id integer,
    animals_id integer,
    gps_sensors_id integer,
    sex "char",
    acquisition_time timestamp without time zone,
    acquisition_time_r timestamp without time zone,
    latitude double precision,
    longitude double precision,
    geom public.geometry(Point,4326),
    st_y double precision,
    st_x double precision,
    gps_validity_code smallint,
    monthx double precision,
    dayx double precision,
    weekx double precision,
    hourx double precision,
    yearx double precision
);


--
-- Name: joh_data_marco_period_ab2_random; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_data_marco_period_ab2_random (
    study_areas_id integer,
    animals_id integer,
    gps_sensors_id integer,
    sex "char",
    acquisition_time timestamp without time zone,
    acquisition_time_r timestamp without time zone,
    latitude double precision,
    longitude double precision,
    geom public.geometry(Point,4326),
    st_y double precision,
    st_x double precision,
    gps_validity_code smallint,
    monthx double precision,
    dayx double precision,
    weekx double precision,
    hourx double precision,
    yearx double precision
);


--
-- Name: joh_data_marco_period_ab_random; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_data_marco_period_ab_random (
    study_areas_id integer,
    animals_id integer,
    gps_sensors_id integer,
    sex "char",
    acquisition_time timestamp without time zone,
    acquisition_time_r timestamp without time zone,
    latitude double precision,
    longitude double precision,
    geom public.geometry(Point,4326),
    st_y double precision,
    st_x double precision,
    gps_validity_code smallint,
    monthx double precision,
    dayx double precision,
    weekx double precision,
    hourx double precision,
    yearx double precision
);


--
-- Name: joh_data_marco_period_b; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_data_marco_period_b (
    study_areas_id integer,
    animals_id integer,
    gps_sensors_id integer,
    sex "char",
    acquisition_time timestamp without time zone,
    acquisition_time_r timestamp without time zone,
    latitude double precision,
    longitude double precision,
    geom public.geometry(Point,4326),
    st_y double precision,
    st_x double precision,
    gps_validity_code smallint,
    monthx double precision,
    dayx double precision,
    weekx double precision,
    hourx double precision,
    yearx double precision
);


--
-- Name: joh_data_marco_period_b2_random; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_data_marco_period_b2_random (
    study_areas_id integer,
    animals_id integer,
    gps_sensors_id integer,
    sex "char",
    acquisition_time timestamp without time zone,
    acquisition_time_r timestamp without time zone,
    latitude double precision,
    longitude double precision,
    geom public.geometry(Point,4326),
    st_y double precision,
    st_x double precision,
    gps_validity_code smallint,
    monthx double precision,
    dayx double precision,
    weekx double precision,
    hourx double precision,
    yearx double precision
);


--
-- Name: joh_data_marco_period_b_random; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_data_marco_period_b_random (
    study_areas_id integer,
    animals_id integer,
    gps_sensors_id integer,
    sex "char",
    acquisition_time timestamp without time zone,
    acquisition_time_r timestamp without time zone,
    latitude double precision,
    longitude double precision,
    geom public.geometry(Point,4326),
    st_y double precision,
    st_x double precision,
    gps_validity_code smallint,
    monthx double precision,
    dayx double precision,
    weekx double precision,
    hourx double precision,
    yearx double precision
);


--
-- Name: joh_data_marco_summary; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_data_marco_summary (
    animals_id integer,
    gps_sensors_id integer,
    min timestamp without time zone,
    max timestamp without time zone,
    sex "char",
    all_fixes bigint,
    expected_fixes double precision,
    monitoring_period interval,
    valid_fixes bigint,
    invalid_fixes bigint,
    p_valid double precision,
    p_invalid double precision,
    p_expected double precision,
    p_valid_expected double precision
);


--
-- Name: joh_feeding_sites_louis; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_feeding_sites_louis (
    "row.names" text,
    feeding_site_id integer,
    start_date date,
    end_date date
);


--
-- Name: joh_fran_maze_roe_ngs_behaviour; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_fran_maze_roe_ngs_behaviour (
    "row.names" text,
    well text,
    well_id text,
    sample_origin text,
    extraction_plate text,
    plot_id text,
    animal_id integer,
    animals_original_id text,
    collar_id text,
    date text,
    year integer,
    utm_x integer,
    utm_y integer,
    capture_sample text,
    repeated_sample text,
    period text,
    ndvi_period integer,
    sex text,
    age text,
    tfn double precision,
    tfn2 double precision,
    mig_fran integer,
    mig_fran_semiconservative integer,
    mig_fran_conservative integer,
    capture_site text,
    mortality integer,
    mortality_code_description text,
    mortality_date text,
    mortality_place text
);


--
-- Name: joh_fran_maze_roe_ngs_behaviour_temp; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_fran_maze_roe_ngs_behaviour_temp (
    well text,
    well_id text,
    sample_origin text,
    extraction_plate text,
    plot_id text,
    animal_id integer,
    animals_original_id text,
    collar_id text,
    datex text,
    yearx integer,
    utm_x integer,
    utm_y integer,
    capture_sample text,
    repeated_sample text,
    period text,
    ndvi_period integer,
    sex text,
    age text,
    tfn double precision,
    tfn2 double precision,
    mig_fran integer,
    mig_fran_semiconservative integer,
    mig_fran_conservative integer,
    capture_site text,
    mortality integer,
    mortality_code_description text,
    mortality_date text,
    mortality_place text,
    acquisition_time date,
    geom public.geometry,
    latitude double precision,
    longitude double precision,
    ndvi_modis real,
    ndvi_modis_boku double precision
);


--
-- Name: joh_home_ranges_mcp; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_home_ranges_mcp (
    animals_id integer,
    utm_srid integer,
    study_areas_id integer,
    geom public.geometry
);


--
-- Name: joh_kernel_data; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_kernel_data (
    x_coord double precision,
    y_coord double precision,
    row_number integer,
    animals_id integer,
    acquisitio timestamp with time zone,
    kernel_den double precision
);


--
-- Name: joh_leiden; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_leiden (
    "row.names" text,
    "individual.local.identifier" text,
    "tag.local.identifier" integer,
    "location.lat" double precision,
    "location.long" double precision,
    argos_lc text,
    time_utc text,
    date text
);


--
-- Name: joh_leiden2; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_leiden2 (
    "row.names" text,
    "X" integer,
    "individual.local.identifier" text,
    "tag.local.identifier" integer,
    "location.lat" double precision,
    "location.long" double precision,
    argos_lc text,
    time_utc text,
    date text,
    "timestamp" text,
    "hourOfDay" integer,
    "Filter" text,
    "Year" integer,
    "ID" text,
    "Species" text,
    "Place.of.release" text,
    "Sex" text,
    "Origin" text,
    "Mother" text,
    "BornOrFound" text,
    "Date.of.release" text,
    "Time.of.release" text,
    "Date.of.last.contact" text,
    "Age.at.release..d." integer,
    "PTT.type" text,
    "Comments" text,
    "DateTimeRelease" text
);


--
-- Name: joh_leiden_f; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_leiden_f (
    rownames integer,
    animals_id text,
    tag_id integer,
    latitude double precision,
    longitude double precision,
    argos_lc text,
    time_utc text,
    date text,
    acquisition_time timestamp with time zone,
    hourofday integer,
    filterx text,
    yearx integer,
    id text,
    species text,
    placeofrelease text,
    sex text,
    "Origin" text,
    "Mother" text,
    "BornOrFound" text,
    "Date.of.release" text,
    "Time.of.release" text,
    "Date.of.last.contact" text,
    ageatrelease integer,
    ppttype text,
    commentsx text,
    datetimerelease timestamp without time zone,
    validity_code integer,
    geom public.geometry
);


--
-- Name: joh_leiden_f_add; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_leiden_f_add (
    rownames integer,
    animals_id text,
    tag_id integer,
    latitude double precision,
    longitude double precision,
    argos_lc text,
    time_utc text,
    date text,
    acquisition_time timestamp with time zone,
    hourofday integer,
    filterx text,
    yearx integer,
    id text,
    species text,
    placeofrelease text,
    sex text,
    "Origin" text,
    "Mother" text,
    "BornOrFound" text,
    "Date.of.release" text,
    "Time.of.release" text,
    "Date.of.last.contact" text,
    ageatrelease integer,
    ppttype text,
    commentsx text,
    datetimerelease timestamp without time zone,
    validity_code integer,
    geom public.geometry,
    monthx double precision
);


--
-- Name: joh_leiden_f_add_filt; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_leiden_f_add_filt (
    yearx integer,
    monthx double precision,
    animals_id text,
    count bigint,
    rownames integer,
    tag_id integer,
    latitude double precision,
    longitude double precision,
    argos_lc text,
    time_utc text,
    date text,
    acquisition_time timestamp with time zone,
    hourofday integer,
    filterx text,
    id text,
    species text,
    placeofrelease text,
    sex text,
    "Origin" text,
    "Mother" text,
    "BornOrFound" text,
    "Date.of.release" text,
    "Time.of.release" text,
    "Date.of.last.contact" text,
    ageatrelease integer,
    ppttype text,
    commentsx text,
    datetimerelease timestamp without time zone,
    validity_code integer,
    geom public.geometry
);


--
-- Name: joh_leiden_f_mcp; Type: VIEW; Schema: ws_fem; Owner: -
--

CREATE VIEW ws_fem.joh_leiden_f_mcp AS
 SELECT row_number() OVER () AS id,
    a.animals_id,
    (public.st_convexhull(public.st_collect(a.geom)))::public.geometry(Polygon,4326) AS geom
   FROM ws_fem.joh_leiden_f a
  WHERE (a.validity_code = 1)
  GROUP BY a.animals_id;


--
-- Name: joh_leiden_f_mcp_month; Type: VIEW; Schema: ws_fem; Owner: -
--

CREATE VIEW ws_fem.joh_leiden_f_mcp_month AS
 SELECT row_number() OVER () AS id,
    a.animals_id,
    a.yearx,
    a.monthx,
    (public.st_convexhull(public.st_collect(a.geom)))::public.geometry(Polygon,4326) AS geom
   FROM ws_fem.joh_leiden_f_add_filt a
  WHERE (a.validity_code = 1)
  GROUP BY a.animals_id, a.yearx, a.monthx;


--
-- Name: joh_leiden_f_traj; Type: VIEW; Schema: ws_fem; Owner: -
--

CREATE VIEW ws_fem.joh_leiden_f_traj AS
 SELECT row_number() OVER () AS id,
    sel_subquery.animals_id,
    (public.st_makeline(sel_subquery.geom))::public.geometry(LineString,4326) AS geom
   FROM ( SELECT a.animals_id,
            a.geom,
            a.acquisition_time
           FROM ws_fem.joh_leiden_f a
          WHERE ((a.geom IS NOT NULL) AND (a.validity_code = 1))
          ORDER BY a.animals_id, a.acquisition_time) sel_subquery
  GROUP BY sel_subquery.animals_id;


--
-- Name: joh_leiden_f_traj_mv; Type: VIEW; Schema: ws_fem; Owner: -
--

CREATE VIEW ws_fem.joh_leiden_f_traj_mv AS
 SELECT row_number() OVER () AS id,
    sel_subquery.animals_id,
    (public.st_makeline(sel_subquery.geom))::public.geometry(LineString,4326) AS geom
   FROM ( SELECT a.animals_id,
            a.geom,
            a.acquisition_time
           FROM ws_fem.joh_leiden_f a
          WHERE (a.geom IS NOT NULL)
          ORDER BY a.animals_id, a.acquisition_time) sel_subquery
  GROUP BY sel_subquery.animals_id;


--
-- Name: joh_lookup_ndvi_biweek; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_lookup_ndvi_biweek (
    start_date date,
    biweek_modis integer,
    biweek_modis_cum integer,
    modis_smoother_cum integer,
    modis_boku integer,
    biweek_modis_boku integer
);


--
-- Name: TABLE joh_lookup_ndvi_biweek; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON TABLE ws_fem.joh_lookup_ndvi_biweek IS 'I use this table to derive the period in the year of each NDVI image for different NDVI measures (modis,smoothed, boku).';


--
-- Name: joh_ndvi_modis_boku; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_ndvi_modis_boku (
    study_areas_id integer,
    pop text,
    min timestamp with time zone,
    max timestamp with time zone,
    rid integer,
    rast public.raster,
    acquisition_date date
);


--
-- Name: joh_ndvi_modis_boku_pts; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_ndvi_modis_boku_pts (
    study_areas_id integer,
    pop text,
    min timestamp with time zone,
    max timestamp with time zone,
    rid integer,
    ndvi double precision,
    acquisition_date date,
    ndvi_rescaled double precision
);


--
-- Name: joh_ndvi_modis_boku_pts_biweek; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_ndvi_modis_boku_pts_biweek (
    acquisition_date date,
    study_areas_id integer,
    pop text,
    min timestamp with time zone,
    max timestamp with time zone,
    rid integer,
    ndvi double precision,
    biweek integer,
    ndvi_rescaled double precision
);


--
-- Name: joh_patterns; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_patterns (
    agg text
);


--
-- Name: joh_patterns_fnf; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_patterns_fnf (
    "row.names" text,
    rand text,
    seqs integer
);


--
-- Name: joh_patterns_fnf_codon; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_patterns_fnf_codon (
    seqs integer,
    res text,
    rownr text
);


--
-- Name: joh_raw_data_val_rendena; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_raw_data_val_rendena (
    "row.names" text,
    collars_original_id integer,
    utc_date text,
    utc_time text,
    lmt_date text,
    lmt_time text,
    ecef_x integer,
    ecef_y integer,
    ecef_z integer,
    latitude double precision,
    longitude double precision,
    height double precision,
    dop double precision,
    fixtype text,
    x3d_error double precision,
    sats integer,
    easting double precision,
    northing double precision
);


--
-- Name: joh_raw_data_val_rendena2; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_raw_data_val_rendena2 (
    collars_original_id character varying,
    acquisition_time timestamp with time zone,
    latitude double precision,
    longitude double precision,
    height integer,
    dop double precision,
    sats integer,
    easting double precision,
    northing double precision,
    geom public.geometry(Point,4326),
    animals_id integer,
    gps_sensors_id integer,
    gps_validity_code integer
);


--
-- Name: joh_raw_data_val_rendena3; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_raw_data_val_rendena3 (
    unique_id bigint,
    collars_original_id character varying,
    acquisition_time timestamp with time zone,
    latitude double precision,
    longitude double precision,
    height integer,
    dop double precision,
    sats integer,
    easting double precision,
    northing double precision,
    geom public.geometry(Point,4326),
    animals_id integer,
    gps_sensors_id integer,
    gps_validity_code integer
);


--
-- Name: joh_regularized_12h_all_animals; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_regularized_12h_all_animals (
    acquisition_time timestamp with time zone,
    study_areas_id integer,
    sex "char",
    animals_id integer,
    geom public.geometry(Point,4326),
    gps_validity_code smallint
);


--
-- Name: joh_regularized_1h_animals30; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_regularized_1h_animals30 (
    animals_id integer,
    gps_sensors_id integer,
    study_areas_id integer,
    count bigint,
    biweek_year character varying,
    min_round timestamp with time zone,
    max_round timestamp with time zone,
    min timestamp with time zone,
    max timestamp with time zone,
    sex "char"
);


--
-- Name: joh_regularized_1h_data; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_regularized_1h_data (
    row_number bigint,
    gps_data_animals_id integer,
    study_areas_id integer,
    animals_id integer,
    gps_sensors_id integer,
    age_class_code_capture integer,
    age_class integer,
    sex character varying,
    acquisition_time timestamp with time zone,
    biweek_year character varying,
    weekx double precision,
    datex date,
    yearx double precision,
    monthx double precision,
    dayx double precision,
    gps_validity_code smallint,
    latitude double precision,
    longitude double precision,
    utm_x integer,
    utm_y integer,
    geom public.geometry,
    label1 character varying,
    label2 character varying,
    label3 character varying,
    snow_modis integer,
    altitude_srtm integer,
    slope_srtm double precision,
    aspect_srtm_east_ccw integer,
    altitude_aster integer,
    slope_aster double precision,
    aspect_aster_east_ccw integer,
    fapar_vegetation real,
    ndvi_modis_boku double precision,
    ndvi_modis_smoothed double precision,
    sun_angle double precision,
    sunrise text,
    sunset text,
    daylight text
);


--
-- Name: joh_regularized_2h_animals30; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_regularized_2h_animals30 (
    animals_id integer,
    gps_sensors_id integer,
    study_areas_id integer,
    count bigint,
    biweek_year character varying,
    min_round timestamp with time zone,
    max_round timestamp with time zone,
    min timestamp with time zone,
    max timestamp with time zone,
    sex "char"
);


--
-- Name: joh_regularized_2h_data; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_regularized_2h_data (
    row_number bigint,
    gps_data_animals_id integer,
    study_areas_id integer,
    animals_id integer,
    gps_sensors_id integer,
    age_class_code_capture integer,
    age_class integer,
    sex character varying,
    acquisition_time timestamp with time zone,
    biweek_year character varying,
    weekx double precision,
    datex date,
    yearx double precision,
    monthx double precision,
    dayx double precision,
    gps_validity_code smallint,
    latitude double precision,
    longitude double precision,
    utm_x integer,
    utm_y integer,
    geom public.geometry,
    label1 character varying,
    label2 character varying,
    label3 character varying,
    snow_modis integer,
    altitude_srtm integer,
    slope_srtm double precision,
    aspect_srtm_east_ccw integer,
    altitude_aster integer,
    slope_aster double precision,
    aspect_aster_east_ccw integer,
    fapar_vegetation real,
    ndvi_modis_boku double precision,
    ndvi_modis_smoothed double precision,
    sun_angle double precision,
    sunrise text,
    sunset text,
    daylight text
);


--
-- Name: joh_regularized_3h_00_animals; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_regularized_3h_00_animals (
    animals_id integer,
    gps_sensors_id integer,
    study_areas_id integer,
    count bigint,
    sex "char",
    biweek integer,
    biweek_modis_cum integer,
    min date,
    max date,
    "?column?" integer
);


--
-- Name: TABLE joh_regularized_3h_00_animals; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON TABLE ws_fem.joh_regularized_3h_00_animals IS 'from this data we only used study area 17 and 5.';


--
-- Name: joh_regularized_3h_00_reddeer; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_regularized_3h_00_reddeer (
    animals_id integer,
    gps_sensors_id integer,
    study_areas_id integer,
    count bigint,
    sex "char",
    biweek integer,
    biweek_modis_cum integer,
    min date,
    max date,
    "?column?" integer,
    dataset character varying(5)
);


--
-- Name: joh_regularized_3h_02_animals; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_regularized_3h_02_animals (
    animals_id integer,
    gps_sensors_id integer,
    study_areas_id integer,
    count bigint,
    sex "char",
    biweek integer,
    biweek_modis_cum integer,
    min date,
    max date,
    "?column?" integer
);


--
-- Name: TABLE joh_regularized_3h_02_animals; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON TABLE ws_fem.joh_regularized_3h_02_animals IS 'from this dataset we only used study area 24.';


--
-- Name: joh_regularized_3h_02_reddeer; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_regularized_3h_02_reddeer (
    animals_id integer,
    gps_sensors_id integer,
    study_areas_id integer,
    count bigint,
    sex "char",
    biweek integer,
    biweek_modis_cum integer,
    min date,
    max date,
    "?column?" integer,
    dataset character varying(5)
);


--
-- Name: joh_regularized_4h_all_data; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_regularized_4h_all_data (
    row_number bigint,
    gps_data_animals_id integer,
    study_areas_id integer,
    animals_id integer,
    gps_sensors_id integer,
    age_class_code_capture integer,
    age_class integer,
    sex "char",
    acquisition_time timestamp with time zone,
    biweek integer,
    biweek_modis_cum integer,
    biweek_year text,
    weekx double precision,
    datex date,
    yearx double precision,
    monthx double precision,
    dayx double precision,
    gps_validity_code smallint,
    latitude double precision,
    longitude double precision,
    utm_x integer,
    utm_y integer,
    geom public.geometry,
    label1 character varying,
    label2 character varying,
    label3 character varying,
    snow_modis integer,
    altitude_srtm integer,
    slope_srtm double precision,
    aspect_srtm_east_ccw integer,
    altitude_aster integer,
    slope_aster double precision,
    aspect_aster_east_ccw integer,
    fapar_vegetation real,
    ndvi_modis_boku double precision,
    ndvi_modis_smoothed double precision,
    sun_angle double precision,
    sunrise text,
    sunset text,
    daylight text,
    dataset character varying(5),
    ndvi_boku_reclass text,
    utm_srid integer
);


--
-- Name: joh_regularized_4h_all_data2; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_regularized_4h_all_data2 (
    row_number bigint,
    gps_data_animals_id integer,
    study_areas_id integer,
    animals_id integer,
    gps_sensors_id integer,
    age_class_code_capture integer,
    age_class integer,
    sex "char",
    acquisition_time timestamp with time zone,
    biweek integer,
    biweek_modis_cum integer,
    biweek_year text,
    weekx double precision,
    datex date,
    yearx double precision,
    monthx double precision,
    dayx double precision,
    gps_validity_code smallint,
    latitude double precision,
    longitude double precision,
    utm_x integer,
    utm_y integer,
    geom public.geometry,
    label1 character varying,
    label2 character varying,
    label3 character varying,
    snow_modis integer,
    altitude_srtm integer,
    slope_srtm double precision,
    aspect_srtm_east_ccw integer,
    altitude_aster integer,
    slope_aster double precision,
    aspect_aster_east_ccw integer,
    fapar_vegetation real,
    ndvi_modis_boku double precision,
    ndvi_modis_smoothed double precision,
    sun_angle double precision,
    sunrise text,
    sunset text,
    daylight text,
    dataset character varying(5),
    ndvi_boku_reclass text,
    utm_srid integer,
    row_bw bigint,
    date_ref integer,
    unique_id integer,
    n double precision,
    daynight_pattern character varying,
    daynight_pattern_nrd smallint,
    seasons_bio character varying(2),
    seasons_biosub character varying(2)
);


--
-- Name: COLUMN joh_regularized_4h_all_data2.seasons_bio; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.joh_regularized_4h_all_data2.seasons_bio IS 'Summer and winter season based on roe deer biology - March-August and September-Februari.';


--
-- Name: COLUMN joh_regularized_4h_all_data2.seasons_biosub; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.joh_regularized_4h_all_data2.seasons_biosub IS 'Sub seasons based on season bio.';


--
-- Name: joh_regularized_4h_all_data3; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_regularized_4h_all_data3 (
    row_number bigint,
    gps_data_animals_id integer,
    study_areas_id integer,
    animals_id integer,
    gps_sensors_id integer,
    age_class_code_capture integer,
    age_class integer,
    sex "char",
    acquisition_time timestamp with time zone,
    biweek integer,
    biweek_modis_cum integer,
    biweek_year text,
    weekx double precision,
    datex date,
    yearx double precision,
    monthx double precision,
    dayx double precision,
    gps_validity_code smallint,
    latitude double precision,
    longitude double precision,
    utm_x integer,
    utm_y integer,
    geom public.geometry,
    label1 character varying,
    label2 character varying,
    label3 character varying,
    snow_modis integer,
    altitude_srtm integer,
    slope_srtm double precision,
    aspect_srtm_east_ccw integer,
    altitude_aster integer,
    slope_aster double precision,
    aspect_aster_east_ccw integer,
    fapar_vegetation real,
    ndvi_modis_boku double precision,
    ndvi_modis_smoothed double precision,
    sun_angle double precision,
    sunrise text,
    sunset text,
    daylight text,
    dataset character varying(5),
    ndvi_boku_reclass text,
    utm_srid integer,
    row_bw bigint,
    date_ref integer,
    unique_id integer NOT NULL
);


--
-- Name: joh_regularized_4h_all_data3_unique_id_seq; Type: SEQUENCE; Schema: ws_fem; Owner: -
--

CREATE SEQUENCE ws_fem.joh_regularized_4h_all_data3_unique_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: joh_regularized_4h_all_data3_unique_id_seq; Type: SEQUENCE OWNED BY; Schema: ws_fem; Owner: -
--

ALTER SEQUENCE ws_fem.joh_regularized_4h_all_data3_unique_id_seq OWNED BY ws_fem.joh_regularized_4h_all_data3.unique_id;


--
-- Name: joh_regularized_4h_all_data_final; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_regularized_4h_all_data_final (
    unique_id integer,
    row_number bigint,
    gps_data_animals_id integer,
    study_areas_id integer,
    animals_id integer,
    gps_sensors_id integer,
    age_class_code_capture integer,
    age_class integer,
    sex "char",
    acquisition_time timestamp with time zone,
    biweek integer,
    biweek_modis_cum integer,
    biweek_year text,
    weekx double precision,
    datex date,
    yearx double precision,
    monthx double precision,
    dayx double precision,
    gps_validity_code smallint,
    latitude double precision,
    longitude double precision,
    utm_x integer,
    utm_y integer,
    geom public.geometry,
    label1 character varying,
    label2 character varying,
    label3 character varying,
    snow_modis integer,
    altitude_srtm integer,
    slope_srtm double precision,
    aspect_srtm_east_ccw integer,
    altitude_aster integer,
    slope_aster double precision,
    aspect_aster_east_ccw integer,
    fapar_vegetation real,
    ndvi_modis_boku double precision,
    ndvi_modis_smoothed double precision,
    sun_angle double precision,
    sunrise text,
    sunset text,
    daylight text,
    dataset character varying(5),
    ndvi_boku_reclass text,
    utm_srid integer,
    row_bw bigint,
    date_ref integer,
    n double precision,
    daynight_pattern character varying,
    daynight_pattern_nrd smallint,
    seasons_bio character varying(2),
    seasons_biosub character varying(2),
    tcd integer,
    fty integer,
    gfc integer,
    subareas_id integer
);


--
-- Name: COLUMN joh_regularized_4h_all_data_final.seasons_biosub; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.joh_regularized_4h_all_data_final.seasons_biosub IS 'Devision of summer and winter season (biology) into full summer (biweeks 9,10,11,12,13,14) and post (15,16)/pre summer (5,6,7,8) and full winter (biweeks 20,21,22,23,1,2) and post (3,4)/pre winter (17,18,19).';


--
-- Name: joh_regularized_4h_all_data_final_backup; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_regularized_4h_all_data_final_backup (
    unique_id integer,
    row_number bigint,
    gps_data_animals_id integer,
    study_areas_id integer,
    animals_id integer,
    gps_sensors_id integer,
    age_class_code_capture integer,
    age_class integer,
    sex "char",
    acquisition_time timestamp with time zone,
    biweek integer,
    biweek_modis_cum integer,
    biweek_year text,
    weekx double precision,
    datex date,
    yearx double precision,
    monthx double precision,
    dayx double precision,
    gps_validity_code smallint,
    latitude double precision,
    longitude double precision,
    utm_x integer,
    utm_y integer,
    geom public.geometry,
    label1 character varying,
    label2 character varying,
    label3 character varying,
    snow_modis integer,
    altitude_srtm integer,
    slope_srtm double precision,
    aspect_srtm_east_ccw integer,
    altitude_aster integer,
    slope_aster double precision,
    aspect_aster_east_ccw integer,
    fapar_vegetation real,
    ndvi_modis_boku double precision,
    ndvi_modis_smoothed double precision,
    sun_angle double precision,
    sunrise text,
    sunset text,
    daylight text,
    dataset character varying(5),
    ndvi_boku_reclass text,
    utm_srid integer,
    row_bw bigint,
    date_ref integer,
    n double precision,
    daynight_pattern character varying,
    daynight_pattern_nrd smallint,
    seasons_bio character varying(2),
    seasons_biosub character varying(2),
    tcd integer,
    fty integer,
    gfc integer
);


--
-- Name: joh_regularized_4h_all_data_final_mcp_16days_biweek; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_regularized_4h_all_data_final_mcp_16days_biweek (
    row_number integer NOT NULL,
    animals_id integer,
    biweek_year text,
    unique_id text,
    study_areas_id integer,
    utm_srid integer,
    st_transform public.geometry,
    count bigint
);


--
-- Name: joh_regularized_4h_all_data_final_mcp_8days; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_regularized_4h_all_data_final_mcp_8days (
    animals_id integer,
    biweek_year text,
    splitter text,
    unique_id text,
    study_areas_id integer,
    utm_srid integer,
    st_transform public.geometry,
    count bigint,
    row_number integer NOT NULL
);


--
-- Name: joh_regularized_4h_all_data_hunting_final; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_regularized_4h_all_data_hunting_final (
    unique_id integer,
    row_number bigint,
    gps_data_animals_id integer,
    study_areas_id integer,
    animals_id integer,
    gps_sensors_id integer,
    age_class_code_capture integer,
    age_class integer,
    sex "char",
    acquisition_time timestamp with time zone,
    biweek integer,
    biweek_modis_cum integer,
    biweek_year text,
    weekx double precision,
    datex date,
    yearx double precision,
    monthx double precision,
    dayx double precision,
    gps_validity_code smallint,
    latitude double precision,
    longitude double precision,
    utm_x integer,
    utm_y integer,
    geom public.geometry,
    label1 character varying,
    label2 character varying,
    label3 character varying,
    snow_modis integer,
    altitude_srtm integer,
    slope_srtm double precision,
    aspect_srtm_east_ccw integer,
    altitude_aster integer,
    slope_aster double precision,
    aspect_aster_east_ccw integer,
    fapar_vegetation real,
    ndvi_modis_boku double precision,
    ndvi_modis_smoothed double precision,
    sun_angle double precision,
    sunrise text,
    sunset text,
    daylight text,
    dataset character varying(5),
    ndvi_boku_reclass text,
    utm_srid integer,
    row_bw bigint,
    date_ref integer,
    n double precision,
    daynight_pattern character varying,
    daynight_pattern_nrd smallint,
    seasons_bio character varying(2),
    seasons_biosub character varying(2),
    tcd integer,
    fty integer,
    gfc integer,
    subareas_id integer,
    hunting_start_date date,
    hunting_end_date date,
    subareas_hunting_pressure_id integer,
    hunting text
);


--
-- Name: joh_regularized_4h_all_data_temp; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_regularized_4h_all_data_temp (
    unique_id integer,
    row_number bigint,
    gps_data_animals_id integer,
    study_areas_id integer,
    animals_id integer,
    gps_sensors_id integer,
    age_class_code_capture integer,
    age_class integer,
    sex "char",
    acquisition_time timestamp with time zone,
    biweek integer,
    biweek_modis_cum integer,
    biweek_year text,
    weekx double precision,
    datex date,
    yearx double precision,
    monthx double precision,
    dayx double precision,
    gps_validity_code smallint,
    latitude double precision,
    longitude double precision,
    utm_x integer,
    utm_y integer,
    geom public.geometry,
    label1 character varying,
    label2 character varying,
    label3 character varying,
    snow_modis integer,
    altitude_srtm integer,
    slope_srtm double precision,
    aspect_srtm_east_ccw integer,
    altitude_aster integer,
    slope_aster double precision,
    aspect_aster_east_ccw integer,
    fapar_vegetation real,
    ndvi_modis_boku double precision,
    ndvi_modis_smoothed double precision,
    sun_angle double precision,
    sunrise text,
    sunset text,
    daylight text,
    dataset character varying(5),
    ndvi_boku_reclass text,
    utm_srid integer,
    row_bw bigint,
    date_ref integer,
    n double precision,
    daynight_pattern character varying,
    daynight_pattern_nrd smallint,
    seasons_bio character varying(2),
    seasons_biosub character varying(2),
    tcd integer,
    fty integer,
    gfc integer,
    populations_id integer
);


--
-- Name: joh_regularized_4h_animals2; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_regularized_4h_animals2 (
    animals_id integer,
    gps_sensors_id integer,
    study_areas_id integer,
    count bigint,
    sex "char",
    biweek integer,
    biweek_modis_cum integer,
    min date,
    max date,
    "?column?" integer
);


--
-- Name: joh_regularized_4h_data2; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_regularized_4h_data2 (
    row_number bigint,
    gps_data_animals_id integer,
    study_areas_id integer,
    animals_id integer,
    gps_sensors_id integer,
    age_class_code_capture integer,
    age_class integer,
    sex "char",
    acquisition_time timestamp with time zone,
    biweek integer,
    biweek_modis_cum integer,
    weekx double precision,
    datex date,
    yearx double precision,
    monthx double precision,
    dayx double precision,
    gps_validity_code smallint,
    latitude double precision,
    longitude double precision,
    utm_x integer,
    utm_y integer,
    geom public.geometry,
    label1 character varying,
    label2 character varying,
    label3 character varying,
    snow_modis integer,
    altitude_srtm integer,
    slope_srtm double precision,
    aspect_srtm_east_ccw integer,
    altitude_aster integer,
    slope_aster double precision,
    aspect_aster_east_ccw integer,
    fapar_vegetation real,
    ndvi_modis_boku double precision,
    ndvi_modis_smoothed double precision,
    sun_angle double precision,
    sunrise text,
    sunset text,
    daylight text,
    dataset character varying(5)
);


--
-- Name: TABLE joh_regularized_4h_data2; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON TABLE ws_fem.joh_regularized_4h_data2 IS 'complete table with ALL sequences that will be used in the analysis.';


--
-- Name: joh_regularized_4h_data_3h_00; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_regularized_4h_data_3h_00 (
    row_number bigint,
    gps_data_animals_id integer,
    study_areas_id integer,
    animals_id integer,
    gps_sensors_id integer,
    age_class_code_capture integer,
    age_class integer,
    sex "char",
    acquisition_time timestamp with time zone,
    biweek integer,
    biweek_modis_cum integer,
    weekx double precision,
    datex date,
    yearx double precision,
    monthx double precision,
    dayx double precision,
    gps_validity_code smallint,
    latitude double precision,
    longitude double precision,
    utm_x integer,
    utm_y integer,
    geom public.geometry,
    label1 character varying,
    label2 character varying,
    label3 character varying,
    snow_modis integer,
    altitude_srtm integer,
    slope_srtm double precision,
    aspect_srtm_east_ccw integer,
    altitude_aster integer,
    slope_aster double precision,
    aspect_aster_east_ccw integer,
    fapar_vegetation real,
    ndvi_modis_boku double precision,
    ndvi_modis_smoothed double precision,
    sun_angle double precision,
    sunrise text,
    sunset text,
    daylight text,
    dataset character varying(5)
);


--
-- Name: joh_regularized_4h_data_3h_02; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_regularized_4h_data_3h_02 (
    row_number bigint,
    gps_data_animals_id integer,
    study_areas_id integer,
    animals_id integer,
    gps_sensors_id integer,
    age_class_code_capture integer,
    age_class integer,
    sex "char",
    acquisition_time timestamp with time zone,
    biweek integer,
    biweek_modis_cum integer,
    weekx double precision,
    datex date,
    yearx double precision,
    monthx double precision,
    dayx double precision,
    gps_validity_code smallint,
    latitude double precision,
    longitude double precision,
    utm_x integer,
    utm_y integer,
    geom public.geometry,
    label1 character varying,
    label2 character varying,
    label3 character varying,
    snow_modis integer,
    altitude_srtm integer,
    slope_srtm double precision,
    aspect_srtm_east_ccw integer,
    altitude_aster integer,
    slope_aster double precision,
    aspect_aster_east_ccw integer,
    fapar_vegetation real,
    ndvi_modis_boku double precision,
    ndvi_modis_smoothed double precision,
    sun_angle double precision,
    sunrise text,
    sunset text,
    daylight text,
    dataset character varying(5)
);


--
-- Name: joh_regularized_4h_data_raw2; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_regularized_4h_data_raw2 (
    row_number bigint,
    gps_data_animals_id integer,
    study_areas_id integer,
    animals_id integer,
    sex "char",
    gps_sensors_id integer,
    acquisition_time timestamp with time zone,
    biweek integer,
    biweek_modis_cum integer,
    gps_validity_code smallint,
    latitude double precision,
    longitude double precision,
    utm_x integer,
    utm_y integer,
    geom public.geometry,
    label1 character varying,
    label2 character varying,
    label3 character varying,
    snow_modis integer,
    altitude_srtm integer,
    slope_srtm double precision,
    aspect_srtm_east_ccw integer,
    altitude_aster integer,
    slope_aster double precision,
    aspect_aster_east_ccw integer,
    fapar_vegetation real,
    ndvi_modis_boku double precision,
    ndvi_modis_smoothed double precision,
    sun_angle double precision,
    sunrise text,
    sunset text,
    age_class integer,
    daylight text
);


--
-- Name: joh_regularized_4h_reddeer; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_regularized_4h_reddeer (
    animals_id integer,
    gps_sensors_id integer,
    study_areas_id integer,
    count bigint,
    sex "char",
    biweek integer,
    biweek_modis_cum integer,
    min date,
    max date,
    "?column?" integer,
    dataset character varying(5)
);


--
-- Name: joh_regularized_4h_statistics_data_final; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_regularized_4h_statistics_data_final (
    id integer,
    biweek integer,
    longitude double precision,
    latitude double precision,
    geom public.geometry,
    row_number bigint,
    unique_id text,
    study_areas_id integer,
    ndvi_modis_smoothed double precision,
    yearx double precision,
    pop text
);


--
-- Name: joh_regularized_4h_statistics_data_final_with_timestamp; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_regularized_4h_statistics_data_final_with_timestamp (
    id integer,
    biweek integer,
    longitude double precision,
    latitude double precision,
    geom public.geometry,
    acquisition_time timestamp with time zone,
    row_number bigint,
    unique_id text,
    study_areas_id integer,
    ndvi_modis_smoothed double precision,
    yearx double precision,
    pop text,
    ndvi_change double precision,
    ndvi_modis_boku_next double precision
);


--
-- Name: joh_regularized_4h_statistics_mcp; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_regularized_4h_statistics_mcp (
    study_areas_id integer,
    pop text,
    geom public.geometry(Polygon,4326),
    min timestamp with time zone,
    max timestamp with time zone
);


--
-- Name: joh_regularized_4h_statistics_rp; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_regularized_4h_statistics_rp (
    geom public.geometry,
    pop text,
    study_areas_id integer,
    min timestamp with time zone,
    max timestamp with time zone
);


--
-- Name: joh_regularized_4h_statistics_rp5000; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_regularized_4h_statistics_rp5000 (
    geom public.geometry,
    pop text,
    study_areas_id integer,
    min timestamp with time zone,
    max timestamp with time zone
);


--
-- Name: joh_regularized_all_reddeer; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_regularized_all_reddeer (
    animals_id integer,
    gps_sensors_id integer,
    study_areas_id integer,
    count bigint,
    biweek integer,
    biweek_modis_cum integer,
    min date,
    max date,
    dataset character varying(5),
    sex character varying
);


--
-- Name: TABLE joh_regularized_all_reddeer; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON TABLE ws_fem.joh_regularized_all_reddeer IS 'all 4h and 3h interval animals.';


--
-- Name: joh_regularized_animals_general; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_regularized_animals_general (
    animals_id integer,
    gps_sensors_id integer,
    study_areas_id integer,
    count bigint,
    sex "char",
    biweek integer,
    biweek_modis_cum integer,
    min date,
    max date
);


--
-- Name: joh_regularized_fifteen_animals; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_regularized_fifteen_animals (
    animals_id integer,
    gps_sensors_id integer,
    study_areas_id integer,
    dayx double precision,
    count bigint,
    datex date,
    weekx double precision,
    min_round timestamp with time zone,
    max_round timestamp with time zone,
    min timestamp with time zone,
    max timestamp with time zone,
    sex "char"
);


--
-- Name: joh_regularized_fifteen_data_final; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_regularized_fifteen_data_final (
    row_number bigint,
    gps_data_animals_id integer,
    study_areas_id integer,
    animals_id integer,
    gps_sensors_id integer,
    age_class integer,
    sex "char",
    acquisition_time timestamp with time zone,
    datex date,
    dayx double precision,
    yearx double precision,
    monthx double precision,
    weekx double precision,
    gps_validity_code smallint,
    latitude double precision,
    longitude double precision,
    utm_x integer,
    utm_y integer,
    geom public.geometry,
    label1 character varying,
    label2 character varying,
    label3 character varying,
    snow_modis integer,
    altitude_srtm integer,
    slope_srtm double precision,
    aspect_srtm_east_ccw integer,
    altitude_aster integer,
    slope_aster double precision,
    aspect_aster_east_ccw integer,
    fapar_vegetation real,
    ndvi_modis_boku double precision,
    ndvi_modis_smoothed double precision,
    sun_angle double precision,
    sunrise text,
    sunset text,
    daylight text
);


--
-- Name: joh_regularized_five_animals; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_regularized_five_animals (
    animals_id integer,
    gps_sensors_id integer,
    study_areas_id integer,
    dayx timestamp with time zone,
    count bigint,
    min_round timestamp with time zone,
    max_round timestamp with time zone,
    min timestamp with time zone,
    max timestamp with time zone,
    sex "char"
);


--
-- Name: joh_regularized_five_data; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_regularized_five_data (
    row_number bigint,
    gps_data_animals_id integer,
    study_areas_id integer,
    animals_id integer,
    dayx date,
    gps_sensors_id integer,
    acquisition_time timestamp with time zone,
    gps_validity_code smallint,
    latitude double precision,
    longitude double precision,
    utm_x integer,
    utm_y integer,
    geom public.geometry,
    label1 character varying,
    label2 character varying,
    label3 character varying,
    snow_modis integer,
    altitude_srtm integer,
    slope_srtm double precision,
    aspect_srtm_east_ccw integer,
    altitude_aster integer,
    slope_aster double precision,
    aspect_aster_east_ccw integer,
    fapar_vegetation real,
    ndvi_modis_boku double precision,
    ndvi_modis_smoothed double precision,
    sun_angle double precision,
    sunrise text,
    sunset text,
    age_class integer,
    daylight text
);


--
-- Name: joh_regularized_halfh_animals; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_regularized_halfh_animals (
    animals_id integer,
    gps_sensors_id integer,
    study_areas_id integer,
    count bigint,
    biweek_year character varying,
    min_round timestamp with time zone,
    max_round timestamp with time zone,
    min timestamp with time zone,
    max timestamp with time zone,
    sex "char"
);


--
-- Name: joh_regularized_halfh_data; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_regularized_halfh_data (
    row_number bigint NOT NULL,
    gps_data_animals_id integer,
    study_areas_id integer,
    animals_id integer,
    gps_sensors_id integer,
    age_class_code_capture integer,
    age_class integer,
    sex character varying,
    acquisition_time timestamp with time zone,
    biweek_year character varying,
    weekx double precision,
    datex date,
    yearx double precision,
    monthx double precision,
    dayx double precision,
    gps_validity_code smallint,
    latitude double precision,
    longitude double precision,
    utm_x integer,
    utm_y integer,
    geom public.geometry,
    label1 character varying,
    label2 character varying,
    label3 character varying,
    snow_modis integer,
    altitude_srtm integer,
    slope_srtm double precision,
    aspect_srtm_east_ccw integer,
    altitude_aster integer,
    slope_aster double precision,
    aspect_aster_east_ccw integer,
    fapar_vegetation real,
    ndvi_modis_boku double precision,
    ndvi_modis_smoothed double precision,
    sun_angle double precision,
    sunrise text,
    sunset text,
    daylight text
);


--
-- Name: joh_regularized_halfh_data2; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_regularized_halfh_data2 (
    row_number bigint,
    gps_data_animals_id integer,
    study_areas_id integer,
    animals_id integer,
    gps_sensors_id integer,
    age_class_code_capture integer,
    age_class integer,
    sex character varying,
    acquisition_time timestamp with time zone,
    biweek_year character varying,
    weekx double precision,
    datex date,
    yearx double precision,
    monthx double precision,
    dayx double precision,
    gps_validity_code smallint,
    latitude double precision,
    longitude double precision,
    utm_x integer,
    utm_y integer,
    geom public.geometry,
    label1 character varying,
    label2 character varying,
    label3 character varying,
    snow_modis integer,
    altitude_srtm integer,
    slope_srtm double precision,
    aspect_srtm_east_ccw integer,
    altitude_aster integer,
    slope_aster double precision,
    aspect_aster_east_ccw integer,
    fapar_vegetation real,
    ndvi_modis_boku double precision,
    ndvi_modis_smoothed double precision,
    sun_angle double precision,
    sunrise text,
    sunset text,
    daylight text,
    unique_id text
);


--
-- Name: joh_statistics_data_eurodeer_sam_paper; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_statistics_data_eurodeer_sam_paper (
    "row.names" text,
    unique_id text,
    animals_id integer,
    sex text,
    biweek integer,
    age text,
    study_areas_id integer,
    tag_main text,
    "prop.landscape_0" double precision,
    "prop.landscape_1" double precision,
    "patch.cohesion.index_0" double precision,
    "patch.cohesion.index_1" double precision,
    "landscape.shape.index_0" double precision,
    "landscape.shape.index_1" double precision,
    "patch.density_0" double precision,
    "patch.density_1" double precision,
    "edge.density_0" double precision,
    "edge.density_1" double precision,
    "splitting.index_0" double precision,
    "splitting.index_1" double precision,
    study_sites text,
    fact double precision,
    tag_a double precision,
    tag_b double precision,
    tag_c double precision,
    tag_o double precision,
    "ED1" double precision,
    population text,
    "P1" double precision,
    sa text,
    animal text,
    age_code text,
    pop text,
    alternation double precision
);


--
-- Name: joh_subset; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_subset (
    id integer,
    rownr bigint,
    animals_id integer,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    random_step double precision,
    geom public.geometry,
    longitude double precision,
    latitude double precision,
    sample integer
);


--
-- Name: joh_subset2_temp2; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_subset2_temp2 (
    rownr bigint,
    id integer,
    animals_id integer,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    random_step double precision,
    geom public.geometry,
    longitude double precision,
    latitude double precision,
    sample integer,
    sample_id bigint,
    random_angle double precision,
    st_project public.geography
);


--
-- Name: joh_subset2_utm; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_subset2_utm (
    rownr bigint,
    id integer,
    animals_id integer,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    used_geom public.geometry,
    used_x double precision,
    used_y double precision,
    sample integer,
    sample_id bigint,
    random_step double precision,
    random_angle double precision,
    available_geom public.geometry,
    available_x double precision,
    available_y double precision
);


--
-- Name: joh_subset_temp1; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_subset_temp1 (
    id integer,
    rownr bigint,
    animals_id integer,
    acquisition_time timestamp with time zone,
    steplength double precision,
    timeseriesx timestamp with time zone,
    random_step double precision,
    geom public.geometry,
    longitude double precision,
    latitude double precision,
    sample integer,
    sample_id bigint
);


--
-- Name: joh_time_bins_bool; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.joh_time_bins_bool (
    id integer,
    timestamps time with time zone,
    hours integer,
    minutes integer,
    bool05min text,
    bool15min text,
    bool30min text,
    bool60min text,
    bool02h_00 text,
    bool02h_01 text,
    bool03h_00 text,
    bool03h_01 text,
    bool03h_02 text,
    bool04h_00 text,
    bool04h_01 text,
    bool04h_02 text,
    bool04h_03 text,
    bool06h_00 text,
    bool06h_01 text,
    bool06h_02 text,
    bool06h_03 text,
    bool06h_04 text,
    bool06h_05 text,
    bool08h_00 text,
    bool08h_01 text,
    bool08h_02 text,
    bool08h_03 text,
    bool08h_04 text,
    bool08h_05 text,
    bool08h_06 text,
    bool08h_07 text,
    bool12h_00 text,
    bool12h_01 text,
    bool12h_02 text,
    bool12h_03 text,
    bool12h_04 text,
    bool12h_05 text,
    bool12h_06 text,
    bool12h_07 text,
    bool12h_08 text,
    bool12h_09 text,
    bool12h_10 text,
    bool12h_11 text,
    bool24h_00 text,
    bool24h_01 text,
    bool24h_02 text,
    bool24h_03 text,
    bool24h_04 text,
    bool24h_05 text,
    bool24h_06 text,
    bool24h_07 text,
    bool24h_08 text,
    bool24h_09 text,
    bool24h_10 text,
    bool24h_11 text,
    bool24h_12 text,
    bool24h_13 text,
    bool24h_14 text,
    bool24h_15 text,
    bool24h_16 text,
    bool24h_17 text,
    bool24h_18 text,
    bool24h_19 text,
    bool24h_20 text,
    bool24h_21 text,
    bool24h_22 text,
    bool24h_23 text,
    bool24h_24 text
);


--
-- Name: TABLE joh_time_bins_bool; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON TABLE ws_fem.joh_time_bins_bool IS 'This table can be used to subset locations in the database with a certain time interval.';


--
-- Name: koberg; Type: VIEW; Schema: ws_fem; Owner: -
--

CREATE VIEW ws_fem.koberg AS
 SELECT gps_data_animals.gps_data_animals_id,
    gps_data_animals.animals_id,
    gps_data_animals.acquisition_time,
    gps_data_animals.geom
   FROM (main.gps_data_animals
     JOIN main.animals USING (animals_id))
  WHERE (animals.study_areas_id = 3);


--
-- Name: louis_analysis_dataset; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.louis_analysis_dataset (
    aniyr character varying,
    time_int integer,
    hr integer,
    study_areas_id integer,
    doy_start integer,
    doy_end integer,
    animals_id integer,
    acquisition_time timestamp with time zone,
    geom public.geometry,
    buffer integer,
    yr integer,
    unique_id integer,
    latitude double precision,
    longitude double precision
);


--
-- Name: louis_data_janfeb; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.louis_data_janfeb (
    study_areas_id integer,
    gps_data_animals_id integer,
    gps_sensors_id integer,
    animals_id integer,
    latitude double precision,
    longitude double precision,
    geom public.geometry(Point,4326),
    acquisition_time timestamp with time zone,
    gps_validity_code smallint,
    min_start date,
    max_end date,
    feeding_info_available boolean,
    aniyr character varying,
    loop_date date
);


--
-- Name: louis_feeding_sites; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.louis_feeding_sites (
    feeding_site_id integer,
    research_groups_id integer,
    study_areas_id integer,
    study_name character varying,
    project character varying,
    feeding_site_original_id character varying,
    fs_id character varying,
    year_start integer,
    year_end integer,
    feeding_site_code integer,
    moving_site boolean,
    feeding_management integer,
    feeding_frequency_code integer,
    food_items character varying,
    food_energy_code character varying,
    day_start_feeding integer,
    month_start_feeding integer,
    day_end_feeding integer,
    month_end_feeding integer,
    species_excluded character varying,
    other_feeders character varying,
    potential_competition boolean,
    predator_species character varying,
    potential_predation boolean,
    managed_by character varying,
    latitude double precision,
    longitude double precision,
    utm_y integer,
    utm_x integer,
    srid_code integer,
    notes character varying,
    geom public.geometry(Point,4326),
    corine_land_cover_2006_code integer,
    altitude_srtm integer,
    altitude_aster integer,
    slope_srtm double precision,
    aspect_srtm integer,
    slope_aster double precision,
    aspect_aster integer,
    corine_land_cover_2000_code integer,
    corine_land_cover_1990_code integer
);


--
-- Name: louis_regularize; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.louis_regularize (
    animals_id integer,
    acquisition_time timestamp with time zone,
    geom public.geometry,
    time_int integer,
    buffer integer,
    aniyr character varying,
    yr integer,
    hr integer,
    unique_id integer NOT NULL
);


--
-- Name: louis_regularize_summary; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.louis_regularize_summary (
    study_areas_id integer,
    aniyr character varying,
    loop_row integer,
    doy_start integer,
    doy_end integer,
    time_int integer,
    yr integer,
    hr integer,
    events_exp integer,
    events_obs integer,
    prop double precision
);


--
-- Name: louis_regularize_summary_extract; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.louis_regularize_summary_extract (
    aniyr character varying,
    study_areas_id integer,
    loop_row integer,
    doy_start integer,
    doy_end integer,
    time_int integer,
    yr integer,
    hr integer,
    events_exp integer,
    events_obs integer,
    prop double precision,
    max double precision,
    min integer,
    nrow bigint,
    feeding_info_available boolean
);


--
-- Name: louis_regularize_unique_id_seq; Type: SEQUENCE; Schema: ws_fem; Owner: -
--

CREATE SEQUENCE ws_fem.louis_regularize_unique_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: louis_regularize_unique_id_seq; Type: SEQUENCE OWNED BY; Schema: ws_fem; Owner: -
--

ALTER SEQUENCE ws_fem.louis_regularize_unique_id_seq OWNED BY ws_fem.louis_regularize.unique_id;


--
-- Name: ndvi_modis2; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.ndvi_modis2 (
    rid integer NOT NULL,
    rast public.raster,
    filename text,
    acquisition_date date,
    acquisition_range daterange
);


--
-- Name: ndvi_modis2_rid_seq; Type: SEQUENCE; Schema: ws_fem; Owner: -
--

CREATE SEQUENCE ws_fem.ndvi_modis2_rid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ndvi_modis2_rid_seq; Type: SEQUENCE OWNED BY; Schema: ws_fem; Owner: -
--

ALTER SEQUENCE ws_fem.ndvi_modis2_rid_seq OWNED BY ws_fem.ndvi_modis2.rid;


--
-- Name: ndvi_study_area_avg; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.ndvi_study_area_avg (
    acquisition_date date,
    count bigint,
    sum double precision,
    mean double precision,
    stddev double precision,
    min double precision,
    max double precision
);


--
-- Name: preliminary_stats; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.preliminary_stats (
    animal_id integer,
    winter_year integer,
    week integer,
    proportion_use_any_fs double precision,
    year_final integer
);


--
-- Name: rendena_view_trajectory; Type: VIEW; Schema: ws_fem; Owner: -
--

CREATE VIEW ws_fem.rendena_view_trajectory AS
 SELECT row_number() OVER () AS id,
    sel_subquery.animals_id,
    (public.st_makeline(sel_subquery.geom))::public.geometry(LineString,4326) AS geom
   FROM ( SELECT a.animals_id,
            a.geom,
            a.acquisition_time
           FROM ws_fem.joh_raw_data_val_rendena3 a
          WHERE ((a.geom IS NOT NULL) AND (a.gps_validity_code = 1))
          ORDER BY a.animals_id, a.acquisition_time) sel_subquery
  GROUP BY sel_subquery.animals_id;


--
-- Name: slope_trentino; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.slope_trentino (
    rid integer NOT NULL,
    rast public.raster,
    filename text,
    CONSTRAINT enforce_height_rast CHECK ((public.st_height(rast) = ANY (ARRAY[50, 16]))),
    CONSTRAINT enforce_nodata_values_rast CHECK ((public._raster_constraint_nodata_values(rast) = '{-9999.0000000000}'::numeric[])),
    CONSTRAINT enforce_num_bands_rast CHECK ((public.st_numbands(rast) = 1)),
    CONSTRAINT enforce_out_db_rast CHECK ((public._raster_constraint_out_db(rast) = '{t}'::boolean[])),
    CONSTRAINT enforce_pixel_types_rast CHECK ((public._raster_constraint_pixel_types(rast) = '{32BF}'::text[])),
    CONSTRAINT enforce_same_alignment_rast CHECK (public.st_samealignment(rast, '0100000000000000000000244000000000000024C05F158E51049922418B12525212AE534100000000000000000000000000000000787F000001000100'::public.raster)),
    CONSTRAINT enforce_scalex_rast CHECK ((round((public.st_scalex(rast))::numeric, 10) = round((10)::numeric, 10))),
    CONSTRAINT enforce_scaley_rast CHECK ((round((public.st_scaley(rast))::numeric, 10) = round((- (10)::numeric), 10))),
    CONSTRAINT enforce_srid_rast CHECK ((public.st_srid(rast) = 32632)),
    CONSTRAINT enforce_width_rast CHECK ((public.st_width(rast) = ANY (ARRAY[50, 20])))
);


--
-- Name: slope_trentino_rid_seq; Type: SEQUENCE; Schema: ws_fem; Owner: -
--

CREATE SEQUENCE ws_fem.slope_trentino_rid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: slope_trentino_rid_seq; Type: SEQUENCE OWNED BY; Schema: ws_fem; Owner: -
--

ALTER SEQUENCE ws_fem.slope_trentino_rid_seq OWNED BY ws_fem.slope_trentino.rid;


--
-- Name: temp_import_gpsdata_giudicarie_fede; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.temp_import_gpsdata_giudicarie_fede (
    id integer NOT NULL,
    collar_id integer,
    animal_id integer,
    utc_date date,
    utc_time time without time zone,
    latitude double precision,
    longitude double precision,
    height integer,
    dop double precision,
    nav character varying(20),
    validated character varying(3),
    sats integer,
    gps_validi smallint
);


--
-- Name: temp_import_gpsdata_giudicarie_fede_id_seq; Type: SEQUENCE; Schema: ws_fem; Owner: -
--

CREATE SEQUENCE ws_fem.temp_import_gpsdata_giudicarie_fede_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: temp_import_gpsdata_giudicarie_fede_id_seq; Type: SEQUENCE OWNED BY; Schema: ws_fem; Owner: -
--

ALTER SEQUENCE ws_fem.temp_import_gpsdata_giudicarie_fede_id_seq OWNED BY ws_fem.temp_import_gpsdata_giudicarie_fede.id;


--
-- Name: temp_import_gpsdata_guidicarie; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.temp_import_gpsdata_guidicarie (
    id integer NOT NULL,
    collar_id numeric(8,2),
    animal_id character varying(6),
    utc_date character varying(10),
    utc_time character varying(8),
    lmt_date character varying(10),
    lmt_time character varying(8),
    ecef_x numeric(10,2),
    ecef_y numeric(9,2),
    ecef_z numeric(10,2),
    latitude numeric(10,7),
    longitude numeric(10,7),
    height numeric(7,2),
    dop numeric(5,2),
    nav character varying(2),
    validated character varying(3),
    gps_validi numeric(4,2)
);


--
-- Name: temp_import_gpsdata_guidicarie_id_seq; Type: SEQUENCE; Schema: ws_fem; Owner: -
--

CREATE SEQUENCE ws_fem.temp_import_gpsdata_guidicarie_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: temp_import_gpsdata_guidicarie_id_seq; Type: SEQUENCE OWNED BY; Schema: ws_fem; Owner: -
--

ALTER SEQUENCE ws_fem.temp_import_gpsdata_guidicarie_id_seq OWNED BY ws_fem.temp_import_gpsdata_guidicarie.id;


--
-- Name: temp_valrendena_vhf_data; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.temp_valrendena_vhf_data (
    sensors_original_id character varying,
    datex date,
    dayx integer,
    monthx integer,
    yearx integer,
    utm_x double precision,
    utm_y double precision,
    animals_original_id character varying,
    animals_id integer,
    longitude double precision,
    latitude double precision,
    sex character varying,
    age_class character varying,
    gps_sensors_id integer
);


--
-- Name: temp_valrendena_vhf_data2; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.temp_valrendena_vhf_data2 (
    vhf_sensors_original_id character varying,
    animals_original_id character varying,
    acquisition_time timestamp with time zone,
    x_original_reference double precision,
    y_original_reference double precision,
    longitude double precision,
    latitude double precision,
    geom public.geometry,
    vhf_sensors_id integer,
    animals_id integer,
    vhf_validity_code integer
);


--
-- Name: temp_valrendena_vhf_sensors; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.temp_valrendena_vhf_sensors (
    vhf_sensors_id integer,
    vhf_sensors_original_id character varying,
    research_groups_id integer,
    vendor character varying,
    model character varying
);


--
-- Name: temp_valrendena_vhf_sensors_animals; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.temp_valrendena_vhf_sensors_animals (
    animals_id integer,
    animals_original_id character varying,
    vhf_sensors_id integer,
    vhf_sensors_original_id character varying,
    start_time timestamp with time zone,
    end_time timestamp with time zone,
    end_deployment_code integer,
    mortality_code integer,
    gps_sensors_id integer,
    start_time_gps timestamp with time zone,
    end_time_gps timestamp with time zone,
    start_time_f timestamp with time zone,
    end_time_f timestamp with time zone
);


--
-- Name: testcase; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.testcase (
    x double precision,
    y double precision,
    geom public.geometry,
    acquisition_time timestamp with time zone,
    acquisition_time_p timestamp with time zone,
    animals_id text,
    ndvi_modis_boku double precision,
    ndvi_modis_boku_p double precision,
    delta_boku double precision,
    ndvi_modis_smoothed double precision,
    ndvi_modis_smoothed_p double precision,
    delta_smoothed double precision
);


--
-- Name: vegetation_fecal_sampling_temp; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.vegetation_fecal_sampling_temp (
    vegetation_fecal_sampling_id integer NOT NULL,
    plot_id character varying,
    sample_number integer,
    distance integer
);


--
-- Name: vegetation_fecal_sampling_temp_vegetation_fecal_sampling_id_seq; Type: SEQUENCE; Schema: ws_fem; Owner: -
--

CREATE SEQUENCE ws_fem.vegetation_fecal_sampling_temp_vegetation_fecal_sampling_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: vegetation_fecal_sampling_temp_vegetation_fecal_sampling_id_seq; Type: SEQUENCE OWNED BY; Schema: ws_fem; Owner: -
--

ALTER SEQUENCE ws_fem.vegetation_fecal_sampling_temp_vegetation_fecal_sampling_id_seq OWNED BY ws_fem.vegetation_fecal_sampling_temp.vegetation_fecal_sampling_id;


--
-- Name: vegetation_intensive_sampling_temp; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.vegetation_intensive_sampling_temp (
    vegetation_intensive_sampling_id integer NOT NULL,
    plot_id character varying,
    quadrant character varying,
    quadrant_id character varying,
    species character varying,
    species_group character varying,
    phenology character varying,
    cover integer,
    species_id integer,
    phenology_id integer,
    species_group_id integer
);


--
-- Name: vegetation_intensive_sampling_vegetation_intensive_sampling_seq; Type: SEQUENCE; Schema: ws_fem; Owner: -
--

CREATE SEQUENCE ws_fem.vegetation_intensive_sampling_vegetation_intensive_sampling_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: vegetation_intensive_sampling_vegetation_intensive_sampling_seq; Type: SEQUENCE OWNED BY; Schema: ws_fem; Owner: -
--

ALTER SEQUENCE ws_fem.vegetation_intensive_sampling_vegetation_intensive_sampling_seq OWNED BY ws_fem.vegetation_intensive_sampling_temp.vegetation_intensive_sampling_id;


--
-- Name: vegetation_plot; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.vegetation_plot (
    vegetation_plot_id integer NOT NULL,
    plot_id character varying,
    sensor_original_id character varying,
    animals_id integer,
    plot_type character varying,
    personnel character varying,
    acquisition_date date,
    acquisition_time_start time without time zone,
    acquisition_time_end time without time zone,
    sensor_type character varying,
    habitat_class_species character varying,
    habitat_class_closure character varying,
    main_aspect integer,
    aspect_categorical_direction character varying,
    aspect_final character varying,
    slope integer,
    elevation integer,
    camera_type character varying,
    utm_x integer,
    utm_y integer,
    canopy_model character varying,
    canopy_north integer,
    canopy_east integer,
    canopy_south integer,
    canopy_west integer,
    hiding_angle integer,
    hiding_5m integer,
    hiding_20m integer,
    geom public.geometry(Point,4326),
    slope_dem integer,
    elevation_dem integer,
    aspect_dem integer,
    habitat_class_species_id integer,
    class_closure_id integer,
    canopy_model_id integer
);


--
-- Name: vegetation_plot_vegetation_plot_id_seq; Type: SEQUENCE; Schema: ws_fem; Owner: -
--

CREATE SEQUENCE ws_fem.vegetation_plot_vegetation_plot_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: vegetation_plot_vegetation_plot_id_seq; Type: SEQUENCE OWNED BY; Schema: ws_fem; Owner: -
--

ALTER SEQUENCE ws_fem.vegetation_plot_vegetation_plot_id_seq OWNED BY ws_fem.vegetation_plot.vegetation_plot_id;


--
-- Name: vegetation_quadrant_sampling_temp; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.vegetation_quadrant_sampling_temp (
    vegetation_quadrant_sampling_id integer NOT NULL,
    plot_id character varying,
    quadrant character varying,
    quadrant_id character varying,
    species_group character varying,
    phenology character varying,
    cover integer,
    phenology_id integer,
    species_group_id integer
);


--
-- Name: vegetation_quadrant_sampling__vegetation_quadrant_sampling__seq; Type: SEQUENCE; Schema: ws_fem; Owner: -
--

CREATE SEQUENCE ws_fem.vegetation_quadrant_sampling__vegetation_quadrant_sampling__seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: vegetation_quadrant_sampling__vegetation_quadrant_sampling__seq; Type: SEQUENCE OWNED BY; Schema: ws_fem; Owner: -
--

ALTER SEQUENCE ws_fem.vegetation_quadrant_sampling__vegetation_quadrant_sampling__seq OWNED BY ws_fem.vegetation_quadrant_sampling_temp.vegetation_quadrant_sampling_id;


--
-- Name: vegetation_shrub_sampling_temp; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.vegetation_shrub_sampling_temp (
    vegetation_shrub_sampling_id integer NOT NULL,
    plot_id character varying,
    species_group character varying,
    species character varying,
    phenology character varying,
    cover integer,
    species_id integer,
    phenology_id integer,
    species_group_id integer
);


--
-- Name: vegetation_shrub_sampling_temp_vegetation_shrub_sampling_id_seq; Type: SEQUENCE; Schema: ws_fem; Owner: -
--

CREATE SEQUENCE ws_fem.vegetation_shrub_sampling_temp_vegetation_shrub_sampling_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: vegetation_shrub_sampling_temp_vegetation_shrub_sampling_id_seq; Type: SEQUENCE OWNED BY; Schema: ws_fem; Owner: -
--

ALTER SEQUENCE ws_fem.vegetation_shrub_sampling_temp_vegetation_shrub_sampling_id_seq OWNED BY ws_fem.vegetation_shrub_sampling_temp.vegetation_shrub_sampling_id;


--
-- Name: view_gps_positions_fem; Type: VIEW; Schema: ws_fem; Owner: -
--

CREATE VIEW ws_fem.view_gps_positions_fem AS
 SELECT view_eurodeer_gps_positions.animals_id,
    view_eurodeer_gps_positions.study_areas_id,
    view_eurodeer_gps_positions.research_groups_id,
    view_eurodeer_gps_positions.animals_original_name,
    view_eurodeer_gps_positions.sex,
    view_eurodeer_gps_positions.age,
    view_eurodeer_gps_positions.gps_data_animals_id,
    view_eurodeer_gps_positions.gps_sensors_id,
    view_eurodeer_gps_positions.acquisition_time,
    view_eurodeer_gps_positions.x_original_reference,
    view_eurodeer_gps_positions.y_original_reference,
    view_eurodeer_gps_positions.srid_original_reference,
    view_eurodeer_gps_positions.latitude,
    view_eurodeer_gps_positions.longitude,
    view_eurodeer_gps_positions.altitude_gps,
    view_eurodeer_gps_positions.dop,
    view_eurodeer_gps_positions.sats,
    view_eurodeer_gps_positions.temperature_sensor,
    view_eurodeer_gps_positions.geom,
    view_eurodeer_gps_positions.gps_validity_code,
    view_eurodeer_gps_positions.corine_land_cover_2006_code,
    view_eurodeer_gps_positions.snow_modis,
    view_eurodeer_gps_positions.sun_angle,
    view_eurodeer_gps_positions.utm_srid,
    view_eurodeer_gps_positions.utm_x,
    view_eurodeer_gps_positions.utm_y,
    view_eurodeer_gps_positions.corine_land_cover_2000_code,
    view_eurodeer_gps_positions.corine_land_cover_1990_code,
    view_eurodeer_gps_positions.ndvi_modis_boku,
    view_eurodeer_gps_positions.ndvi_modis_smoothed,
    view_eurodeer_gps_positions.altitude_copernicus,
    view_eurodeer_gps_positions.slope_copernicus,
    view_eurodeer_gps_positions.aspect_copernicus,
    view_eurodeer_gps_positions.corine_land_cover_2012_code,
    view_eurodeer_gps_positions.corine_land_cover_2012_vector_code,
    view_eurodeer_gps_positions.forest_density
   FROM main.view_eurodeer_gps_positions
  WHERE (view_eurodeer_gps_positions.research_groups_id = 1)
  ORDER BY view_eurodeer_gps_positions.animals_id, view_eurodeer_gps_positions.acquisition_time;


--
-- Name: VIEW view_gps_positions_fem; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON VIEW ws_fem.view_gps_positions_fem IS 'Valid locations related to FEM-Bondone study area with information on study area, sex and age.';


--
-- Name: wibke_sweden_grim; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.wibke_sweden_grim (
    gps_data_animals_id integer,
    animals_id integer,
    acquisition_time timestamp with time zone,
    latitude double precision,
    longitude double precision,
    utm_srid integer,
    utm_x integer,
    altitude_srtm integer,
    utm_y integer,
    slope_srtm double precision,
    aspect_srtm integer,
    corine_land_cover_2000_code integer,
    corine_land_cover_1990_code integer,
    corine_land_cover_2006_code integer,
    fapar_vegetation real,
    ndvi_modis real,
    snow_modis integer,
    sun_angle double precision,
    gps_validity_code smallint,
    geom public.geometry(Point,4326),
    slope_aster double precision,
    aspect_aster integer,
    altitude_aster integer,
    study_areas_id integer,
    sex "char",
    first_capture_date date,
    age_class_code_capture integer,
    ndvi_vegetation_july real
);


--
-- Name: view_locations_4h_calculation_test; Type: VIEW; Schema: ws_fem; Owner: -
--

CREATE VIEW ws_fem.view_locations_4h_calculation_test AS
 SELECT gps_positions_animals.animals_id,
    (((((date_part('epoch'::text, gps_positions_animals.acquisition_time) + (240)::double precision) / (60)::double precision) / (60)::double precision) / (4)::double precision))::integer AS interval_id,
    min(gps_positions_animals.acquisition_time) AS min_acquisition_time
   FROM ws_fem.wibke_sweden_grim gps_positions_animals
  WHERE (gps_positions_animals.gps_validity_code = 1)
  GROUP BY ((((((date_part('epoch'::text, gps_positions_animals.acquisition_time) + (240)::double precision) / (60)::double precision) / (60)::double precision) / (4)::double precision))::integer), gps_positions_animals.animals_id
  ORDER BY gps_positions_animals.animals_id, ((((((date_part('epoch'::text, gps_positions_animals.acquisition_time) + (240)::double precision) / (60)::double precision) / (60)::double precision) / (4)::double precision))::integer);


--
-- Name: view_rendena_webgis; Type: VIEW; Schema: ws_fem; Owner: -
--

CREATE VIEW ws_fem.view_rendena_webgis AS
 SELECT gps_data_animals.animals_id,
    date(gps_data_animals.acquisition_time) AS date,
    date_part('doy'::text, gps_data_animals.acquisition_time) AS doyx,
    date_part('year'::text, gps_data_animals.acquisition_time) AS yearx,
    date_part('month'::text, gps_data_animals.acquisition_time) AS monthx,
    date_part('day'::text, gps_data_animals.acquisition_time) AS dayx,
    animals.sex,
    lu_age_class.age_class_description AS age_class,
    animals.animals_original_id,
    (public.st_x(public.st_centroid(public.st_collect(gps_data_animals.geom))))::numeric(8,5) AS longitude,
    (public.st_y(public.st_centroid(public.st_collect(gps_data_animals.geom))))::numeric(8,5) AS latitude
   FROM ((main.gps_data_animals
     JOIN main.animals ON ((animals.animals_id = gps_data_animals.animals_id)))
     JOIN lu_tables.lu_age_class ON ((tools.age_class(animals.animals_id, gps_data_animals.acquisition_time) = lu_age_class.age_class_code)))
  WHERE ((gps_data_animals.gps_validity_code = 1) AND (animals.study_areas_id = 24) AND (date_part('dow'::text, gps_data_animals.acquisition_time) = ANY (ARRAY[(2)::double precision, (4)::double precision, (6)::double precision])))
  GROUP BY gps_data_animals.animals_id, (date(gps_data_animals.acquisition_time)), (date_part('doy'::text, gps_data_animals.acquisition_time)), (date_part('year'::text, gps_data_animals.acquisition_time)), (date_part('month'::text, gps_data_animals.acquisition_time)), (date_part('day'::text, gps_data_animals.acquisition_time)), animals.sex, lu_age_class.age_class_description, animals.animals_original_id
  ORDER BY gps_data_animals.animals_id, (date(gps_data_animals.acquisition_time));


--
-- Name: view_rendena_webgis_geom; Type: VIEW; Schema: ws_fem; Owner: -
--

CREATE VIEW ws_fem.view_rendena_webgis_geom AS
 SELECT row_number() OVER (ORDER BY gps_data_animals.animals_id) AS id,
    gps_data_animals.animals_id,
    date(gps_data_animals.acquisition_time) AS date,
    date_part('doy'::text, gps_data_animals.acquisition_time) AS doyx,
    date_part('year'::text, gps_data_animals.acquisition_time) AS yearx,
    date_part('month'::text, gps_data_animals.acquisition_time) AS monthx,
    date_part('day'::text, gps_data_animals.acquisition_time) AS dayx,
    animals.sex,
    lu_age_class.age_class_description AS age_class,
    animals.animals_original_id,
    (public.st_x(public.st_centroid(public.st_collect(gps_data_animals.geom))))::numeric(8,5) AS longitude,
    (public.st_y(public.st_centroid(public.st_collect(gps_data_animals.geom))))::numeric(8,5) AS latitude,
    public.st_centroid(public.st_collect(gps_data_animals.geom)) AS geom
   FROM ((main.gps_data_animals
     JOIN main.animals ON ((animals.animals_id = gps_data_animals.animals_id)))
     JOIN lu_tables.lu_age_class ON ((tools.age_class(animals.animals_id, gps_data_animals.acquisition_time) = lu_age_class.age_class_code)))
  WHERE ((gps_data_animals.gps_validity_code = 1) AND (animals.study_areas_id = 24) AND (date_part('dow'::text, gps_data_animals.acquisition_time) = ANY (ARRAY[(2)::double precision, (4)::double precision, (6)::double precision])))
  GROUP BY gps_data_animals.animals_id, (date(gps_data_animals.acquisition_time)), (date_part('doy'::text, gps_data_animals.acquisition_time)), (date_part('year'::text, gps_data_animals.acquisition_time)), (date_part('month'::text, gps_data_animals.acquisition_time)), (date_part('day'::text, gps_data_animals.acquisition_time)), animals.sex, lu_age_class.age_class_description, animals.animals_original_id
  ORDER BY gps_data_animals.animals_id, (date(gps_data_animals.acquisition_time));


--
-- Name: view_rendena_webgis_vhf; Type: VIEW; Schema: ws_fem; Owner: -
--

CREATE VIEW ws_fem.view_rendena_webgis_vhf AS
 SELECT ((b.month_it || ' '::text) || b.yearx) AS mese,
    b.date,
    b.sex,
    b.age_class,
    b.animals_original_id,
    b.animals_id,
    b.longitude,
    b.latitude
   FROM ( SELECT a.animals_id,
                CASE
                    WHEN (a.monthx = 12) THEN 'Dicembre'::text
                    WHEN (a.monthx = 11) THEN 'Novembre'::text
                    WHEN (a.monthx = 10) THEN 'Ottobre'::text
                    WHEN (a.monthx = 9) THEN 'Settembre'::text
                    WHEN (a.monthx = 8) THEN 'Agosto'::text
                    WHEN (a.monthx = 7) THEN 'Luglio'::text
                    WHEN (a.monthx = 6) THEN 'Giugno'::text
                    WHEN (a.monthx = 5) THEN 'Maggio'::text
                    WHEN (a.monthx = 4) THEN 'Aprile'::text
                    WHEN (a.monthx = 3) THEN 'Marzo'::text
                    WHEN (a.monthx = 2) THEN 'Febbraio'::text
                    ELSE 'Gennaio'::text
                END AS month_it,
            a.yearx,
            a.monthx,
            a.dayx,
            a.date,
            a.sex,
            a.age_class,
            a.animals_original_id,
            a.longitude,
            a.latitude
           FROM ( SELECT temp_valrendena_vhf_data.animals_id,
                    temp_valrendena_vhf_data.datex AS date,
                    temp_valrendena_vhf_data.yearx,
                    temp_valrendena_vhf_data.monthx,
                    temp_valrendena_vhf_data.dayx,
                    temp_valrendena_vhf_data.sex,
                    temp_valrendena_vhf_data.age_class,
                    temp_valrendena_vhf_data.animals_original_id,
                    temp_valrendena_vhf_data.longitude,
                    temp_valrendena_vhf_data.latitude
                   FROM ws_fem.temp_valrendena_vhf_data) a) b
  ORDER BY b.animals_id, b.yearx, b.monthx;


--
-- Name: view_temporary_importgps; Type: VIEW; Schema: ws_fem; Owner: -
--

CREATE VIEW ws_fem.view_temporary_importgps AS
 SELECT animals.animals_id,
    gps_sensors.gps_sensors_id,
    (((((temp_import_gpsdata_guidicarie.utc_date)::text || ' '::text) || (temp_import_gpsdata_guidicarie.utc_time)::text) || '+00'::text))::timestamp with time zone AS acquisition_time,
        CASE
            WHEN (temp_import_gpsdata_guidicarie.latitude = (0)::numeric) THEN NULL::numeric
            ELSE temp_import_gpsdata_guidicarie.latitude
        END AS latitude,
        CASE
            WHEN (temp_import_gpsdata_guidicarie.longitude = (0)::numeric) THEN NULL::numeric
            ELSE temp_import_gpsdata_guidicarie.longitude
        END AS longitude,
        CASE
            WHEN ((temp_import_gpsdata_guidicarie.gps_validi)::integer <> 1) THEN NULL::integer
            ELSE (temp_import_gpsdata_guidicarie.height)::integer
        END AS gps_altitude,
        CASE
            WHEN ((temp_import_gpsdata_guidicarie.gps_validi)::integer <> 1) THEN NULL::public.geometry
            ELSE public.st_setsrid(public.st_makepoint((temp_import_gpsdata_guidicarie.longitude)::double precision, (temp_import_gpsdata_guidicarie.latitude)::double precision), 4326)
        END AS geom,
    temp_import_gpsdata_guidicarie.dop,
        CASE
            WHEN (((temp_import_gpsdata_guidicarie.nav)::text = '3D'::text) AND ((temp_import_gpsdata_guidicarie.validated)::text = 'Yes'::text)) THEN 5
            WHEN (((temp_import_gpsdata_guidicarie.nav)::text = '3D'::text) AND ((temp_import_gpsdata_guidicarie.validated)::text = 'No'::text)) THEN 4
            WHEN (((temp_import_gpsdata_guidicarie.nav)::text = '2D'::text) AND ((temp_import_gpsdata_guidicarie.validated)::text = 'No'::text)) THEN 3
            ELSE NULL::integer
        END AS num_satellite,
        CASE
            WHEN ((temp_import_gpsdata_guidicarie.gps_validi)::integer = 2) THEN 14
            ELSE (temp_import_gpsdata_guidicarie.gps_validi)::integer
        END AS gps_validity_code
   FROM ws_fem.temp_import_gpsdata_guidicarie,
    main.animals,
    main.gps_sensors
  WHERE (((animals.animals_original_id)::text = (temp_import_gpsdata_guidicarie.animal_id)::text) AND ((gps_sensors.gps_sensors_code)::text = (((temp_import_gpsdata_guidicarie.collar_id)::integer)::character varying)::text));


--
-- Name: whit_cembra_traj; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.whit_cembra_traj (
    "row.names" text,
    animals_id text,
    acquisition_time text,
    x double precision,
    y double precision,
    step_length double precision,
    turning_angle double precision,
    prev_x double precision,
    prev_y double precision
);


--
-- Name: whit_cembra_traj_new; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.whit_cembra_traj_new (
    animals_id text,
    acquisition_time text,
    x double precision,
    y double precision,
    step_length double precision,
    turning_angle double precision,
    prev_x double precision,
    prev_y double precision,
    geom public.geometry,
    ndvi double precision
);


--
-- Name: whit_photovege; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.whit_photovege (
    "row.names" text,
    acqui_date text,
    "GCC90" double precision,
    "DIR" text,
    "ExG" double precision,
    "VIgreen" double precision,
    "twoGRBi" double precision,
    "UTM_E" integer,
    "UTM_N" integer,
    "Location" text,
    "Date" text,
    "End.Date" text
);


--
-- Name: whit_photovege_w_ndvi; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.whit_photovege_w_ndvi (
    "row.names" text,
    acquisition_time timestamp with time zone,
    "GCC90" double precision,
    "DIR" text,
    "ExG" double precision,
    "VIgreen" double precision,
    "twoGRBi" double precision,
    "UTM_E" integer,
    "UTM_N" integer,
    "Location" text,
    "Date" text,
    "End.Date" text,
    geom_locs public.geometry,
    ndvi_modis_boku double precision
);


--
-- Name: whit_used_available_ndvi; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.whit_used_available_ndvi (
    "row.names" text,
    rownames double precision,
    animals_id integer,
    acquisition_time timestamp with time zone,
    x integer,
    y integer,
    step_length double precision,
    prev_x integer,
    prev_y integer,
    angle_degree double precision,
    distance_m double precision,
    angle_radians double precision,
    available_x double precision,
    available_y double precision,
    "match_ID" integer,
    available_id integer,
    used_id integer,
    geom_available public.geometry,
    geom_used public.geometry,
    ndvi_modis_boku_used double precision,
    ndvi_modis_boku_available double precision
);


--
-- Name: whit_wp_vege; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.whit_wp_vege (
    geom public.geometry,
    acquisition_date date,
    ndvi double precision
);


--
-- Name: whit_wp_vege1; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.whit_wp_vege1 (
    geom public.geometry,
    utm_x numeric,
    utm_y numeric,
    acquisition_time date,
    ndvi double precision
);


--
-- Name: wibke_filter_table; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.wibke_filter_table (
    spp character varying,
    animals_id integer,
    sa integer,
    fin_class integer,
    year integer,
    sex character varying
);


--
-- Name: wibke_fix_rates; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.wibke_fix_rates (
    spp character varying,
    sa integer,
    animals_id integer,
    gps_sensors_id integer,
    yearx integer,
    vendor character varying,
    model character varying,
    age_class_code_capture integer,
    first_capture_date date,
    sex character varying,
    total bigint,
    fix_rate_total numeric(4,3),
    interval_hours numeric(5,1),
    num_fix bigint,
    ranking bigint,
    perc_tot integer,
    fix_rate numeric(4,3),
    rank bigint
);


--
-- Name: TABLE wibke_fix_rates; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON TABLE ws_fem.wibke_fix_rates IS 'This table gives the fix rates per animal/sensor/year.';


--
-- Name: COLUMN wibke_fix_rates.total; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.wibke_fix_rates.total IS 'Total number of fixes per animal/sensors/year (gps_validity_code 1 or 0).';


--
-- Name: COLUMN wibke_fix_rates.fix_rate_total; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.wibke_fix_rates.fix_rate_total IS ' the fix rate per animal/sensor/year (how many missing acquisitions (gps validity code 0) there are for all fixes).';


--
-- Name: COLUMN wibke_fix_rates.interval_hours; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.wibke_fix_rates.interval_hours IS 'Interval_hours (based on ferdi''s criteria i.e. ranking < 4 and perc_tot > 15: Only preserves the three most common intervals and only when at least 15% of the fixes has the corresponding interval.';


--
-- Name: COLUMN wibke_fix_rates.num_fix; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.wibke_fix_rates.num_fix IS 'The number of fixes with the specific interval_hours per animal/sensors/year.';


--
-- Name: COLUMN wibke_fix_rates.ranking; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.wibke_fix_rates.ranking IS '1,2,3 ordered by most common fix interval (interval_hours) per animal/sensor/year.';


--
-- Name: COLUMN wibke_fix_rates.perc_tot; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.wibke_fix_rates.perc_tot IS 'The percentage of fixes that has the specific interval_hours per animal/sensors/year.';


--
-- Name: COLUMN wibke_fix_rates.fix_rate; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.wibke_fix_rates.fix_rate IS 'The fix rate of the specific interval per animal/sensor/year (how many missing acquisitions (gps validity code 0) there are for the specific interval_hours).';


--
-- Name: COLUMN wibke_fix_rates.rank; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON COLUMN ws_fem.wibke_fix_rates.rank IS '1 corresponds to the sensor which has the largest number of acquisitions per animal/year. So if you write the query 
"SELECT * FROM ws_fem.wibke_fix_rates WHERE rank = 1"  you preserve the collars with the largest number of acquisitions.';


--
-- Name: wibke_red_t2e; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.wibke_red_t2e (
    gps_data_animals_id integer,
    animals_id integer,
    acquisition_time timestamp with time zone,
    latitude double precision,
    longitude double precision,
    utm_srid integer,
    utm_x integer,
    utm_y integer,
    altitude_srtm integer,
    slope_srtm double precision,
    aspect_srtm integer,
    corine_land_cover_2000_code integer,
    corine_land_cover_1990_code integer,
    corine_land_cover_2006_code integer,
    temperature_sensor double precision,
    fapar_vegetation real,
    ndvi_modis_boku double precision,
    ndvi_modis_smoothed double precision,
    snow_modis integer,
    sun_angle double precision,
    gps_validity_code smallint,
    geom public.geometry(Point,4326),
    slope_aster double precision,
    aspect_aster integer,
    altitude_aster integer,
    study_areas_id integer,
    sex "char",
    first_capture_date date,
    age_class_code_capture integer,
    temperature_max double precision,
    temperature_min double precision,
    temperature_avg double precision,
    snowdepth double precision,
    precipitation double precision,
    grid_code integer,
    date_prev timestamp with time zone,
    ndvi_delta_boku double precision,
    ndvi_delta_smoothed double precision,
    date_neg14 date
);


--
-- Name: wibke_roe_t2e; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.wibke_roe_t2e (
    gps_data_animals_id integer,
    animals_id integer,
    acquisition_time timestamp with time zone,
    latitude double precision,
    longitude double precision,
    utm_srid integer,
    utm_x integer,
    utm_y integer,
    altitude_srtm integer,
    slope_srtm double precision,
    aspect_srtm integer,
    corine_land_cover_2000_code integer,
    corine_land_cover_1990_code integer,
    corine_land_cover_2006_code integer,
    temperature_sensor double precision,
    fapar_vegetation real,
    ndvi_modis_boku double precision,
    ndvi_modis_smoothed double precision,
    snow_modis integer,
    sun_angle double precision,
    gps_validity_code smallint,
    geom public.geometry(Point,4326),
    slope_aster double precision,
    aspect_aster integer,
    altitude_aster integer,
    study_areas_id integer,
    sex "char",
    first_capture_date date,
    age_class_code_capture integer,
    temperature_max double precision,
    temperature_min double precision,
    temperature_avg double precision,
    snowdepth double precision,
    precipitation double precision,
    grid_code integer,
    date_prev timestamp with time zone,
    ndvi_delta_boku double precision,
    ndvi_delta_smoothed double precision,
    date_neg14 date,
    ndvi__smooth double precision
);


--
-- Name: wibke_update; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.wibke_update (
    gps_data_animals_id integer NOT NULL,
    animals_id integer,
    acquisition_time timestamp with time zone,
    latitude double precision,
    longitude double precision,
    utm_srid integer,
    utm_x integer,
    altitude_srtm integer,
    utm_y integer,
    slope_srtm double precision,
    aspect_srtm integer,
    corine_land_cover_2000_code integer,
    corine_land_cover_1990_code integer,
    corine_land_cover_2006_code integer,
    gps_validity_code smallint,
    geom public.geometry(Point,4326),
    study_areas_id integer,
    sex "char",
    first_capture_date date,
    age_class_code_capture integer,
    ndvi_modis real,
    ndvi_vegetation real,
    snow_modis integer,
    sun_angle double precision,
    ndvi_vegetation_july real,
    ndvi_vegetation_su real
);


--
-- Name: wp_final_vegetation_fecal_sampling; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.wp_final_vegetation_fecal_sampling (
    vegetation_fecal_sampling_id numeric,
    plot_id character varying,
    sample_number numeric,
    distance numeric,
    year numeric
);


--
-- Name: TABLE wp_final_vegetation_fecal_sampling; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON TABLE ws_fem.wp_final_vegetation_fecal_sampling IS 'Vegetation sampling data. This table lists the sampling locations, the number of fecal samples collected at each site and their distance from the sampling plot. Do not delete.';


--
-- Name: wp_final_vegetation_intensive_sampling; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.wp_final_vegetation_intensive_sampling (
    plot_id character varying,
    quadrant character varying,
    quadrant_id character varying,
    species character varying,
    phenology character varying,
    cover numeric,
    species_group character varying,
    year numeric
);


--
-- Name: TABLE wp_final_vegetation_intensive_sampling; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON TABLE ws_fem.wp_final_vegetation_intensive_sampling IS 'Vegetation sampling data collected in 2013 and 2014 in Val Rendena. This table contains the intensive sampling data only. The plot id serves as identifier. Do not delete.';


--
-- Name: wp_final_vegetation_plot; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.wp_final_vegetation_plot (
    vegetation_plot_id numeric,
    plot_id character varying,
    sensor_original_id numeric,
    animals_id numeric,
    plot_type character varying,
    personnel character varying,
    acquisition_date character varying,
    acquisition_time_start character varying,
    acquisition_time_end character varying,
    sensor_type character varying,
    habitat_class_species character varying,
    habitat_class_closure character varying,
    main_aspect numeric,
    aspect_categorical_direction character varying,
    aspect_final character varying,
    slope numeric,
    elevation numeric,
    camera_type character varying,
    utm_x numeric,
    utm_y numeric,
    canopy_model character varying,
    canopy_north numeric,
    canopy_east numeric,
    canopy_south numeric,
    canopy_west numeric,
    hiding_angle numeric,
    hiding_5m numeric,
    hiding_20m numeric,
    geom character varying,
    slope_dem numeric,
    elevation_dem numeric,
    aspect_dem numeric,
    habitat_class_species_id numeric,
    class_closure_id numeric,
    canopy_model_id numeric,
    year numeric,
    "VHF_Certainty (1=h, 2=m, 3=l)" character varying,
    "Comments" character varying,
    sp1_final character varying,
    sp2_final character varying,
    sp3_final character varying,
    sp4_final character varying,
    sp5_final character varying,
    sp6_final character varying
);


--
-- Name: TABLE wp_final_vegetation_plot; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON TABLE ws_fem.wp_final_vegetation_plot IS 'Vegetation sampling data collected in 2013 and 2014 in Val Rendena. This table contains the the general data collected at each vegetation sampling plot. The plot id serves as identifier. Do not delete.';


--
-- Name: wp_final_vegetation_quadrant_sampling; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.wp_final_vegetation_quadrant_sampling (
    vegetation_quadrant_sampling_id numeric,
    plot_id character varying,
    quadrant character varying,
    quadrant_id character varying,
    species_group character varying,
    phenology character varying,
    cover numeric,
    phenology_id character varying,
    species_group_id character varying,
    year numeric,
    key numeric
);


--
-- Name: TABLE wp_final_vegetation_quadrant_sampling; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON TABLE ws_fem.wp_final_vegetation_quadrant_sampling IS 'Vegetation sampling data collected in 2013 and 2014 in Val Rendena. This table contains the the GENERAL plant phenology data data (i.e. general sampling data) collected at each vegetation sampling plot. The plot id serves as identifier. Do not delete.';


--
-- Name: wp_final_vegetation_shrub_sampling; Type: TABLE; Schema: ws_fem; Owner: -
--

CREATE TABLE ws_fem.wp_final_vegetation_shrub_sampling (
    vegetation_shrub_sampling_id numeric,
    plot_id character varying,
    species_group character varying,
    species character varying,
    phenology character varying,
    cover numeric,
    species_id character varying,
    phenology_id character varying,
    species_group_id character varying,
    year numeric,
    key numeric
);


--
-- Name: TABLE wp_final_vegetation_shrub_sampling; Type: COMMENT; Schema: ws_fem; Owner: -
--

COMMENT ON TABLE ws_fem.wp_final_vegetation_shrub_sampling IS 'Vegetation sampling data collected in 2013 and 2014 in Val Rendena. This table contains the the shrub phenology by species collected at each vegetation sampling plot. The plot id serves as identifier. Do not delete.';


--
-- Name: reddeer_activity_data; Type: TABLE; Schema: ws_freiburg; Owner: -
--

CREATE TABLE ws_freiburg.reddeer_activity_data (
    activity_sensors_code text,
    animals_original_name text,
    act_1 integer,
    act_2 integer,
    act_3 text,
    acquisition_time timestamp with time zone,
    temperature_activity double precision
);


--
-- Name: reddeer_animals; Type: TABLE; Schema: ws_freiburg; Owner: -
--

CREATE TABLE ws_freiburg.reddeer_animals (
    study_name text,
    research_groups_id integer,
    animals_original_name text,
    sex text,
    death_date date,
    mortality_code text
);


--
-- Name: reddeer_gps_data; Type: TABLE; Schema: ws_freiburg; Owner: -
--

CREATE TABLE ws_freiburg.reddeer_gps_data (
    gps_sensors_code text,
    animals_original_name text,
    acquisition_time timestamp with time zone,
    latitude double precision,
    longitude double precision,
    altitude_gps double precision,
    dop double precision,
    temperature_sensor double precision
);


--
-- Name: reddeer_gps_sensors; Type: TABLE; Schema: ws_freiburg; Owner: -
--

CREATE TABLE ws_freiburg.reddeer_gps_sensors (
    research_groups_id integer,
    gps_sensors_code text,
    vendor text,
    model text
);


--
-- Name: reddeer_gps_sensors_animals; Type: TABLE; Schema: ws_freiburg; Owner: -
--

CREATE TABLE ws_freiburg.reddeer_gps_sensors_animals (
    gps_sensors_code text,
    animals_original_name text,
    start_time timestamp with time zone,
    end_time timestamp with time zone,
    end_deployment_code integer
);


--
-- Name: prova; Type: VIEW; Schema: ws_isc; Owner: -
--

CREATE VIEW ws_isc.prova AS
 SELECT vhf_data_animals.vhf_data_animals_id,
    vhf_data_animals.x_original_reference,
    vhf_data_animals.y_original_reference,
    vhf_data_animals.animals_id,
    vhf_data_animals.acquisition_time,
    vhf_data_animals.geom
   FROM main.vhf_data_animals
  WHERE (vhf_data_animals.animals_id = 1564);


--
-- Name: subset_1h; Type: TABLE; Schema: ws_isc; Owner: -
--

CREATE TABLE ws_isc.subset_1h (
    id integer NOT NULL,
    animals_id integer
);


--
-- Name: subset_1h_export; Type: TABLE; Schema: ws_isc; Owner: -
--

CREATE TABLE ws_isc.subset_1h_export (
    animals_id integer,
    gps_data_animals_id integer,
    acquisition_time timestamp with time zone,
    utm_srid integer,
    utm_x integer,
    utm_y integer,
    corine_land_cover_2006_code integer,
    ndvi_modis real,
    aspect_srtm integer,
    slope_srtm double precision,
    altitude_srtm integer,
    study_areas_id integer,
    sex "char",
    animals_original_id character varying,
    age_class_code_capture integer,
    age_class integer
);


--
-- Name: test1; Type: VIEW; Schema: ws_isc; Owner: -
--

CREATE VIEW ws_isc.test1 AS
 SELECT gps_data_animals.animals_id,
    public.st_makeline(gps_data_animals.geom) AS st_makeline
   FROM main.gps_data_animals
  WHERE ((gps_data_animals.animals_id = 1) AND (gps_data_animals.gps_validity_code = 1))
  GROUP BY gps_data_animals.animals_id;


--
-- Name: test11; Type: VIEW; Schema: ws_isc; Owner: -
--

CREATE VIEW ws_isc.test11 AS
 SELECT table_temp.animals_id,
    public.st_makeline(table_temp.geom) AS st_makeline
   FROM ( SELECT gps_data_animals.animals_id,
            gps_data_animals.acquisition_time,
            gps_data_animals.geom
           FROM main.gps_data_animals
          WHERE ((gps_data_animals.animals_id = 1) AND (gps_data_animals.gps_validity_code = 1))
          ORDER BY gps_data_animals.acquisition_time) table_temp
  GROUP BY table_temp.animals_id;


--
-- Name: view_locations_3h_calculation; Type: VIEW; Schema: ws_isc; Owner: -
--

CREATE VIEW ws_isc.view_locations_3h_calculation AS
 SELECT gps_positions_animals.animals_id,
    (((((date_part('epoch'::text, gps_positions_animals.acquisition_time) + (240)::double precision) / (60)::double precision) / (60)::double precision) / (3)::double precision))::integer AS interval_id,
    min(gps_positions_animals.acquisition_time) AS min_acquisition_time
   FROM main.gps_data_animals gps_positions_animals
  WHERE ((gps_positions_animals.gps_validity_code = 1) AND (gps_positions_animals.animals_id IN ( SELECT animals.animals_id
           FROM main.animals,
            main.animals_captures
          WHERE ((animals.study_areas_id = ANY (ARRAY[1, 2, 3, 5, 7, 8, 13, 14, 15, 16, 17, 19, 20])) AND (animals_captures.age_class_code = 1) AND (animals.animals_id = animals_captures.animals_id) AND animals_captures.first_capture))))
  GROUP BY ((((((date_part('epoch'::text, gps_positions_animals.acquisition_time) + (240)::double precision) / (60)::double precision) / (60)::double precision) / (3)::double precision))::integer), gps_positions_animals.animals_id
  ORDER BY gps_positions_animals.animals_id, ((((((date_part('epoch'::text, gps_positions_animals.acquisition_time) + (240)::double precision) / (60)::double precision) / (60)::double precision) / (3)::double precision))::integer);


--
-- Name: VIEW view_locations_3h_calculation; Type: COMMENT; Schema: ws_isc; Owner: -
--

COMMENT ON VIEW ws_isc.view_locations_3h_calculation IS 'Selection of valid locations (no more than 1 every 3 hours) excluding sites with animals reintroduced.';


--
-- Name: view_locations_3h; Type: VIEW; Schema: ws_isc; Owner: -
--

CREATE VIEW ws_isc.view_locations_3h AS
 SELECT gps_data_animals.gps_data_animals_id,
    animals.study_areas_id,
    animals.animals_id,
    animals.animals_original_name,
    animals.sex,
    animals.year_birth,
    (gps_data_animals.acquisition_time)::timestamp without time zone AS acquisition_time,
    gps_data_animals.latitude,
    gps_data_animals.longitude,
    tools.age_class(animals.animals_id, gps_data_animals.acquisition_time) AS dynamic_age,
    gps_data_animals.utm_x,
    gps_data_animals.utm_y,
    gps_data_animals.utm_srid,
    gps_data_animals.gps_sensors_id
   FROM main.animals,
    ws_isc.view_locations_3h_calculation view_locations_3h,
    main.gps_data_animals
  WHERE ((gps_data_animals.acquisition_time = view_locations_3h.min_acquisition_time) AND (gps_data_animals.animals_id = animals.animals_id) AND (animals.animals_id = view_locations_3h.animals_id))
  ORDER BY gps_data_animals.animals_id, gps_data_animals.acquisition_time;


--
-- Name: VIEW view_locations_3h; Type: COMMENT; Schema: ws_isc; Owner: -
--

COMMENT ON VIEW ws_isc.view_locations_3h IS 'View with a fix sequence at intervals of not less than 3 hrs, i.e. all locations at higher frequency are excluded (it uses the view view_locations_3h_calculation). This exclude reintroduced animals. View created for S. Focardi.';


--
-- Name: activity_sensors; Type: TABLE; Schema: ws_nedo; Owner: -
--

CREATE TABLE ws_nedo.activity_sensors (
    study_area text,
    animals_original_id text,
    animals_original_name text,
    sensors_original_id double precision,
    start_time timestamp with time zone,
    end_time timestamp with time zone,
    end_deployment_code text,
    notes text,
    vhf_sensors_animals_id boolean,
    gps_sensors_animals_id boolean,
    vhf_sensors_id boolean,
    gps_sensors_id boolean,
    study_areas_id boolean,
    animals_id boolean,
    p_key integer NOT NULL
);


--
-- Name: activity_sensors_p_key_seq; Type: SEQUENCE; Schema: ws_nedo; Owner: -
--

CREATE SEQUENCE ws_nedo.activity_sensors_p_key_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: activity_sensors_p_key_seq; Type: SEQUENCE OWNED BY; Schema: ws_nedo; Owner: -
--

ALTER SEQUENCE ws_nedo.activity_sensors_p_key_seq OWNED BY ws_nedo.activity_sensors.p_key;


--
-- Name: animals; Type: TABLE; Schema: ws_nedo; Owner: -
--

CREATE TABLE ws_nedo.animals (
    study_area text,
    species text,
    animals_original_id text,
    animals_original_name text,
    sex text,
    reintroduction text,
    year_birth integer,
    year_birth_exact boolean,
    number_of_captures double precision,
    "Mortality_code" double precision,
    "date mortality" text,
    "time mortality" boolean,
    notes boolean,
    "p.Key" bigint NOT NULL,
    study_areas_id integer
);


--
-- Name: animals_p.Key_seq; Type: SEQUENCE; Schema: ws_nedo; Owner: -
--

CREATE SEQUENCE ws_nedo."animals_p.Key_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: animals_p.Key_seq; Type: SEQUENCE OWNED BY; Schema: ws_nedo; Owner: -
--

ALTER SEQUENCE ws_nedo."animals_p.Key_seq" OWNED BY ws_nedo.animals."p.Key";


--
-- Name: captures; Type: TABLE; Schema: ws_nedo; Owner: -
--

CREATE TABLE ws_nedo.captures (
    study_area text,
    animals_original_id double precision,
    animals_original_name text,
    capture_timestamp text,
    "age_exact (in years)" double precision,
    species text,
    age_class_code double precision,
    capture_methods_code double precision,
    capture_result_code double precision,
    first_capture boolean,
    longitude_captures double precision,
    latitude_captures double precision,
    gps_sensor_original_id double precision,
    vhf_sensors_original_id double precision,
    activity_sensors_original_id double precision,
    handling_start text,
    sedation boolean,
    sampling_faeces text,
    sampling_biopsy text,
    sampling_blood text,
    sampling_hair text,
    sampling_notes boolean,
    injury text,
    injury_description boolean,
    death text,
    death_description boolean,
    behavior_handling_code double precision,
    behavior_release_code double precision,
    heart_rate_start boolean,
    heart_rate_start_timestamp boolean,
    heart_rate_end boolean,
    heart_rate_end_timestamp boolean,
    hindfoot_length_cm double precision,
    body_mass_kg boolean,
    rectal_temperature_c boolean,
    relocated text,
    release_type_code double precision,
    handling_end boolean,
    release_timestamp text,
    longitude_release double precision,
    latitude_release double precision,
    notes boolean,
    p_key integer NOT NULL
);


--
-- Name: captures_p_key_seq; Type: SEQUENCE; Schema: ws_nedo; Owner: -
--

CREATE SEQUENCE ws_nedo.captures_p_key_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: captures_p_key_seq; Type: SEQUENCE OWNED BY; Schema: ws_nedo; Owner: -
--

ALTER SEQUENCE ws_nedo.captures_p_key_seq OWNED BY ws_nedo.captures.p_key;


--
-- Name: gps_sensor; Type: TABLE; Schema: ws_nedo; Owner: -
--

CREATE TABLE ws_nedo.gps_sensor (
    study_area text,
    animals_original_id text,
    animals_original_name text,
    sensors_original_id double precision,
    start_time timestamp with time zone,
    end_time timestamp with time zone,
    end_deployment_code text,
    notes text,
    p_key integer NOT NULL
);


--
-- Name: gps_sensor_p_key_seq; Type: SEQUENCE; Schema: ws_nedo; Owner: -
--

CREATE SEQUENCE ws_nedo.gps_sensor_p_key_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: gps_sensor_p_key_seq; Type: SEQUENCE OWNED BY; Schema: ws_nedo; Owner: -
--

ALTER SEQUENCE ws_nedo.gps_sensor_p_key_seq OWNED BY ws_nedo.gps_sensor.p_key;


--
-- Name: sensor; Type: TABLE; Schema: ws_nedo; Owner: -
--

CREATE TABLE ws_nedo.sensor (
    research_groups_name text,
    sensors_original_id double precision,
    vendor text,
    model text,
    notes boolean,
    p_key integer NOT NULL
);


--
-- Name: sensor_p_key_seq; Type: SEQUENCE; Schema: ws_nedo; Owner: -
--

CREATE SEQUENCE ws_nedo.sensor_p_key_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sensor_p_key_seq; Type: SEQUENCE OWNED BY; Schema: ws_nedo; Owner: -
--

ALTER SEQUENCE ws_nedo.sensor_p_key_seq OWNED BY ws_nedo.sensor.p_key;


--
-- Name: animals; Type: TABLE; Schema: ws_nicole; Owner: -
--

CREATE TABLE ws_nicole.animals (
    id integer NOT NULL,
    study_areas_name character varying,
    species character varying,
    animals_original_id integer,
    animals_original_name character varying,
    sex boolean,
    reintroduction character varying,
    year_birth character varying,
    year_birth_exact boolean,
    notes character varying,
    "Spalte1" character varying
);


--
-- Name: animals_id_seq; Type: SEQUENCE; Schema: ws_nicole; Owner: -
--

CREATE SEQUENCE ws_nicole.animals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: animals_id_seq; Type: SEQUENCE OWNED BY; Schema: ws_nicole; Owner: -
--

ALTER SEQUENCE ws_nicole.animals_id_seq OWNED BY ws_nicole.animals.id;


--
-- Name: chize; Type: VIEW; Schema: ws_oncfs_tf; Owner: -
--

CREATE VIEW ws_oncfs_tf.chize AS
 SELECT gps_data_animals.gps_data_animals_id,
    gps_data_animals.animals_id,
    gps_data_animals.gps_sensors_id,
    gps_data_animals.acquisition_time,
    gps_data_animals.x_original_reference,
    gps_data_animals.y_original_reference,
    gps_data_animals.srid_original_reference,
    gps_data_animals.latitude,
    gps_data_animals.longitude,
    gps_data_animals.altitude_gps,
    gps_data_animals.dop,
    gps_data_animals.sats,
    gps_data_animals.temperature_sensor,
    gps_data_animals.geom,
    gps_data_animals.gps_validity_code,
    gps_data_animals.corine_land_cover_2006_code,
    gps_data_animals.snow_modis,
    gps_data_animals.sun_angle,
    gps_data_animals.utm_srid,
    gps_data_animals.utm_x,
    gps_data_animals.utm_y,
    gps_data_animals.insert_timestamp,
    gps_data_animals.update_timestamp,
    gps_data_animals.corine_land_cover_2000_code,
    gps_data_animals.corine_land_cover_1990_code,
    gps_data_animals.ndvi_modis_boku,
    gps_data_animals.ndvi_modis_smoothed,
    gps_data_animals.update_core_user,
    gps_data_animals.update_user,
    gps_data_animals.insert_user,
    gps_data_animals.update_core_timestamp,
    gps_data_animals.altitude_copernicus,
    gps_data_animals.slope_copernicus,
    gps_data_animals.aspect_copernicus,
    gps_data_animals.corine_land_cover_2012_code,
    gps_data_animals.corine_land_cover_2012_vector_code,
    gps_data_animals.forest_density,
    animals.animals_id AS x,
    study_areas.study_name
   FROM main.animals,
    main.study_areas,
    main.gps_data_animals
  WHERE ((animals.animals_id = gps_data_animals.animals_id) AND (study_areas.study_areas_id = animals.study_areas_id) AND ((study_areas.study_name)::text = 'Chize - France'::text) AND (gps_data_animals.gps_validity_code = 1));


--
-- Name: chize_convexhull; Type: VIEW; Schema: ws_oncfs_tf; Owner: -
--

CREATE VIEW ws_oncfs_tf.chize_convexhull AS
 SELECT gps_positions_animals.animals_id,
    date_part('month'::text, gps_positions_animals.acquisition_time) AS month,
    (public.st_area((public.st_convexhull(public.st_collect(gps_positions_animals.geom)))::public.geography) / (1000000)::double precision) AS "?column?"
   FROM main.gps_data_animals gps_positions_animals
  WHERE ((gps_positions_animals.gps_validity_code = 1) AND (gps_positions_animals.animals_id = 1))
  GROUP BY gps_positions_animals.animals_id, (date_part('month'::text, gps_positions_animals.acquisition_time))
  ORDER BY (date_part('month'::text, gps_positions_animals.acquisition_time));


--
-- Name: chize_convexhull2; Type: VIEW; Schema: ws_oncfs_tf; Owner: -
--

CREATE VIEW ws_oncfs_tf.chize_convexhull2 AS
 SELECT gps_positions_animals.animals_id,
    date_part('month'::text, gps_positions_animals.acquisition_time) AS month,
    (public.st_area((public.st_convexhull(public.st_collect(gps_positions_animals.geom)))::public.geography) / (1000000)::double precision) AS "?column?"
   FROM main.gps_data_animals gps_positions_animals
  WHERE ((gps_positions_animals.gps_validity_code = 1) AND (gps_positions_animals.animals_id = 856))
  GROUP BY gps_positions_animals.animals_id, (date_part('month'::text, gps_positions_animals.acquisition_time))
  ORDER BY (date_part('month'::text, gps_positions_animals.acquisition_time));


--
-- Name: chize_convexhull3; Type: VIEW; Schema: ws_oncfs_tf; Owner: -
--

CREATE VIEW ws_oncfs_tf.chize_convexhull3 AS
 SELECT gps_positions_animals.animals_id,
    date_part('month'::text, gps_positions_animals.acquisition_time) AS month,
    public.st_convexhull(public.st_collect(gps_positions_animals.geom)) AS st_convexhull
   FROM main.gps_data_animals gps_positions_animals
  WHERE ((gps_positions_animals.gps_validity_code = 1) AND (gps_positions_animals.animals_id = 856))
  GROUP BY gps_positions_animals.animals_id, (date_part('month'::text, gps_positions_animals.acquisition_time))
  ORDER BY (date_part('month'::text, gps_positions_animals.acquisition_time));


--
-- Name: chize_convexhull4; Type: VIEW; Schema: ws_oncfs_tf; Owner: -
--

CREATE VIEW ws_oncfs_tf.chize_convexhull4 AS
 SELECT gps_positions_animals.animals_id,
    date_part('month'::text, gps_positions_animals.acquisition_time) AS month,
    public.st_convexhull(public.st_collect(gps_positions_animals.geom)) AS st_convexhull
   FROM main.gps_data_animals gps_positions_animals
  WHERE ((gps_positions_animals.gps_validity_code = 1) AND (gps_positions_animals.animals_id = 856))
  GROUP BY gps_positions_animals.animals_id, (date_part('month'::text, gps_positions_animals.acquisition_time))
  ORDER BY (date_part('month'::text, gps_positions_animals.acquisition_time));


--
-- Name: chize_convexhull6; Type: VIEW; Schema: ws_oncfs_tf; Owner: -
--

CREATE VIEW ws_oncfs_tf.chize_convexhull6 AS
 SELECT gps_positions_animals.animals_id,
    (date_part('month'::text, gps_positions_animals.acquisition_time))::integer AS month,
    public.st_convexhull(public.st_collect(gps_positions_animals.geom)) AS st_convexhull
   FROM main.gps_data_animals gps_positions_animals
  WHERE ((gps_positions_animals.gps_validity_code = 1) AND (gps_positions_animals.animals_id = 856))
  GROUP BY gps_positions_animals.animals_id, ((date_part('month'::text, gps_positions_animals.acquisition_time))::integer)
  ORDER BY ((date_part('month'::text, gps_positions_animals.acquisition_time))::integer);


--
-- Name: chize_traj856; Type: VIEW; Schema: ws_oncfs_tf; Owner: -
--

CREATE VIEW ws_oncfs_tf.chize_traj856 AS
 SELECT gps_data_animals.animals_id,
    public.st_makeline(gps_data_animals.geom) AS st_makeline
   FROM main.gps_data_animals
  WHERE ((gps_data_animals.animals_id = 1) AND (gps_data_animals.gps_validity_code = 856))
  GROUP BY gps_data_animals.animals_id;


--
-- Name: chize_traj856_b; Type: VIEW; Schema: ws_oncfs_tf; Owner: -
--

CREATE VIEW ws_oncfs_tf.chize_traj856_b AS
 SELECT gps_data_animals.animals_id,
    public.st_makeline(gps_data_animals.geom) AS st_makeline
   FROM main.gps_data_animals
  WHERE ((gps_data_animals.animals_id = 856) AND (gps_data_animals.gps_validity_code = 1))
  GROUP BY gps_data_animals.animals_id;


--
-- Name: chize_traj856_d; Type: VIEW; Schema: ws_oncfs_tf; Owner: -
--

CREATE VIEW ws_oncfs_tf.chize_traj856_d AS
 SELECT (date_part('month'::text, table_temp.acquisition_time))::integer AS date_part,
    (public.st_makeline(table_temp.geom))::public.geometry(LineString,4326) AS st_makeline
   FROM ( SELECT gps_data_animals.animals_id,
            gps_data_animals.acquisition_time,
            gps_data_animals.geom
           FROM main.gps_data_animals
          WHERE ((gps_data_animals.animals_id = 856) AND (gps_data_animals.gps_validity_code = 1) AND (gps_data_animals.acquisition_time < (now() - '24 days 14:00:00'::interval)))
          ORDER BY gps_data_animals.acquisition_time) table_temp
  GROUP BY table_temp.animals_id, ((date_part('month'::text, table_temp.acquisition_time))::integer);


--
-- Name: examplexxxxx; Type: VIEW; Schema: ws_oncfs_tf; Owner: -
--

CREATE VIEW ws_oncfs_tf.examplexxxxx AS
 SELECT gps_data_animals.gps_data_animals_id,
    gps_data_animals.animals_id,
    gps_data_animals.gps_sensors_id,
    gps_data_animals.acquisition_time,
    gps_data_animals.x_original_reference,
    gps_data_animals.y_original_reference,
    gps_data_animals.srid_original_reference,
    gps_data_animals.latitude,
    gps_data_animals.longitude,
    gps_data_animals.altitude_gps,
    gps_data_animals.dop,
    gps_data_animals.sats,
    gps_data_animals.temperature_sensor,
    gps_data_animals.geom,
    gps_data_animals.gps_validity_code,
    gps_data_animals.corine_land_cover_2006_code,
    gps_data_animals.snow_modis,
    gps_data_animals.sun_angle,
    gps_data_animals.utm_srid,
    gps_data_animals.utm_x,
    gps_data_animals.utm_y,
    gps_data_animals.insert_timestamp,
    gps_data_animals.update_timestamp,
    gps_data_animals.corine_land_cover_2000_code,
    gps_data_animals.corine_land_cover_1990_code,
    gps_data_animals.ndvi_modis_boku,
    gps_data_animals.ndvi_modis_smoothed,
    gps_data_animals.update_core_user,
    gps_data_animals.update_user,
    gps_data_animals.insert_user,
    gps_data_animals.update_core_timestamp,
    gps_data_animals.altitude_copernicus,
    gps_data_animals.slope_copernicus,
    gps_data_animals.aspect_copernicus,
    gps_data_animals.corine_land_cover_2012_code,
    gps_data_animals.corine_land_cover_2012_vector_code,
    gps_data_animals.forest_density
   FROM main.gps_data_animals
  WHERE ((gps_data_animals.animals_id = 856) AND (gps_data_animals.gps_validity_code = 1));


--
-- Name: view_gps_positions_slu; Type: VIEW; Schema: ws_slu; Owner: -
--

CREATE VIEW ws_slu.view_gps_positions_slu AS
 SELECT view_eurodeer_gps_positions.animals_id,
    view_eurodeer_gps_positions.study_areas_id,
    view_eurodeer_gps_positions.research_groups_id,
    view_eurodeer_gps_positions.animals_original_name,
    view_eurodeer_gps_positions.sex,
    view_eurodeer_gps_positions.age,
    view_eurodeer_gps_positions.gps_data_animals_id,
    view_eurodeer_gps_positions.gps_sensors_id,
    view_eurodeer_gps_positions.acquisition_time,
    view_eurodeer_gps_positions.x_original_reference,
    view_eurodeer_gps_positions.y_original_reference,
    view_eurodeer_gps_positions.srid_original_reference,
    view_eurodeer_gps_positions.latitude,
    view_eurodeer_gps_positions.longitude,
    view_eurodeer_gps_positions.altitude_gps,
    view_eurodeer_gps_positions.dop,
    view_eurodeer_gps_positions.sats,
    view_eurodeer_gps_positions.temperature_sensor,
    view_eurodeer_gps_positions.geom,
    view_eurodeer_gps_positions.gps_validity_code,
    view_eurodeer_gps_positions.corine_land_cover_2006_code,
    view_eurodeer_gps_positions.snow_modis,
    view_eurodeer_gps_positions.sun_angle,
    view_eurodeer_gps_positions.utm_srid,
    view_eurodeer_gps_positions.utm_x,
    view_eurodeer_gps_positions.utm_y,
    view_eurodeer_gps_positions.corine_land_cover_2000_code,
    view_eurodeer_gps_positions.corine_land_cover_1990_code,
    view_eurodeer_gps_positions.ndvi_modis_boku,
    view_eurodeer_gps_positions.ndvi_modis_smoothed,
    view_eurodeer_gps_positions.altitude_copernicus,
    view_eurodeer_gps_positions.slope_copernicus,
    view_eurodeer_gps_positions.aspect_copernicus,
    view_eurodeer_gps_positions.corine_land_cover_2012_code,
    view_eurodeer_gps_positions.corine_land_cover_2012_vector_code,
    view_eurodeer_gps_positions.forest_density
   FROM main.view_eurodeer_gps_positions
  WHERE (view_eurodeer_gps_positions.research_groups_id = 3)
  ORDER BY view_eurodeer_gps_positions.animals_id, view_eurodeer_gps_positions.acquisition_time;


--
-- Name: VIEW view_gps_positions_slu; Type: COMMENT; Schema: ws_slu; Owner: -
--

COMMENT ON VIEW ws_slu.view_gps_positions_slu IS 'Valid locations related to SLU study areas with information on study area, sex and age.';


--
-- Name: ct_pst_2022; Type: TABLE; Schema: ws_ungulalps; Owner: -
--

CREATE TABLE ws_ungulalps.ct_pst_2022 (
    id numeric NOT NULL,
    geom public.geometry(Point),
    sito_code character varying(254),
    x numeric,
    y numeric,
    status character varying(25),
    rvalue_1 numeric,
    grid_code character varying(5),
    exposure character varying(5),
    elevation numeric,
    canopy_cov numeric,
    cv_0_0 numeric,
    cv_0_sx numeric,
    cv_0_dx numeric,
    cv_130_0 numeric,
    cv_130_sx numeric,
    cv_130_dx numeric,
    area numeric,
    note character varying(50),
    id_key bigint,
    coordn bigint,
    coorde bigint
);


--
-- Name: fecal_samples; Type: TABLE; Schema: ws_ungulalps; Owner: -
--

CREATE TABLE ws_ungulalps.fecal_samples (
    id integer NOT NULL,
    sample_id text,
    swab_id double precision,
    type text,
    "timestamp" timestamp with time zone,
    period text,
    area text,
    grid double precision,
    personnel text,
    coord_e double precision,
    coord_n double precision,
    species text,
    weather text,
    description text,
    mucus boolean,
    wet boolean,
    aggregated boolean,
    soft boolean,
    touched_ground boolean,
    storage_location boolean,
    geom public.geometry(Point,32632)
);


--
-- Name: grid_avn; Type: TABLE; Schema: ws_ungulalps; Owner: -
--

CREATE TABLE ws_ungulalps.grid_avn (
    gridcell bigint NOT NULL,
    geom public.geometry(MultiPolygon,32632),
    "left" numeric,
    top numeric,
    "right" numeric,
    bottom numeric
);


--
-- Name: grid_pst; Type: TABLE; Schema: ws_ungulalps; Owner: -
--

CREATE TABLE ws_ungulalps.grid_pst (
    gridcell integer NOT NULL,
    geom public.geometry(MultiPolygon,32632),
    "left" numeric,
    top numeric,
    "right" numeric,
    bottom numeric
);


--
-- Name: test; Type: TABLE; Schema: ws_ungulalps; Owner: -
--

CREATE TABLE ws_ungulalps.test (
    id integer,
    name text
);


--
-- Name: ndvi_2010_09_13; Type: TABLE; Schema: ws_unipd; Owner: -
--

CREATE TABLE ws_unipd.ndvi_2010_09_13 (
    rast public.raster,
    acquisition_date date
);


--
-- Name: ndvi_2010_09_20; Type: TABLE; Schema: ws_unipd; Owner: -
--

CREATE TABLE ws_unipd.ndvi_2010_09_20 (
    rast public.raster,
    acquisition_date date
);


--
-- Name: ndvi_2010_09_27; Type: TABLE; Schema: ws_unipd; Owner: -
--

CREATE TABLE ws_unipd.ndvi_2010_09_27 (
    rast public.raster,
    acquisition_date date
);


--
-- Name: ndvi_2010_10_04; Type: TABLE; Schema: ws_unipd; Owner: -
--

CREATE TABLE ws_unipd.ndvi_2010_10_04 (
    rast public.raster,
    acquisition_date date
);


--
-- Name: ndvi_modis2; Type: TABLE; Schema: ws_unipd; Owner: -
--

CREATE TABLE ws_unipd.ndvi_modis2 (
    rast public.raster,
    acquisition_date date,
    p_key bigint NOT NULL
);


--
-- Name: ndvi_modis2_p_key_seq; Type: SEQUENCE; Schema: ws_unipd; Owner: -
--

CREATE SEQUENCE ws_unipd.ndvi_modis2_p_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ndvi_modis2_p_key_seq; Type: SEQUENCE OWNED BY; Schema: ws_unipd; Owner: -
--

ALTER SEQUENCE ws_unipd.ndvi_modis2_p_key_seq OWNED BY ws_unipd.ndvi_modis2.p_key;


--
-- Name: evl_gpsdata_all unique_id; Type: DEFAULT; Schema: ws_amsterdam; Owner: -
--

ALTER TABLE ONLY ws_amsterdam.evl_gpsdata_all ALTER COLUMN unique_id SET DEFAULT nextval('ws_amsterdam.evl_gpsdata_all_unique_id_seq'::regclass);


--
-- Name: evl_nightlight_2003_500m rid; Type: DEFAULT; Schema: ws_amsterdam; Owner: -
--

ALTER TABLE ONLY ws_amsterdam.evl_nightlight_2003_500m ALTER COLUMN rid SET DEFAULT nextval('ws_amsterdam.evl_nightlight_2003_500m_rid_seq'::regclass);


--
-- Name: wolf_arada_ano_i rid; Type: DEFAULT; Schema: ws_aveiro; Owner: -
--

ALTER TABLE ONLY ws_aveiro.wolf_arada_ano_i ALTER COLUMN rid SET DEFAULT nextval('ws_aveiro."Wolf_Arada_AnoI_rid_seq"'::regclass);


--
-- Name: wolf_arada_ano_ii rid; Type: DEFAULT; Schema: ws_aveiro; Owner: -
--

ALTER TABLE ONLY ws_aveiro.wolf_arada_ano_ii ALTER COLUMN rid SET DEFAULT nextval('ws_aveiro."Wolf_Arada_AnoII_rid_seq"'::regclass);


--
-- Name: wolf_arada_ano_iii rid; Type: DEFAULT; Schema: ws_aveiro; Owner: -
--

ALTER TABLE ONLY ws_aveiro.wolf_arada_ano_iii ALTER COLUMN rid SET DEFAULT nextval('ws_aveiro."Wolf_Arada_AnoIII_rid_seq"'::regclass);


--
-- Name: wolf_arada_ano_iv rid; Type: DEFAULT; Schema: ws_aveiro; Owner: -
--

ALTER TABLE ONLY ws_aveiro.wolf_arada_ano_iv ALTER COLUMN rid SET DEFAULT nextval('ws_aveiro."Wolf_Arada_AnoIV_rid_seq"'::regclass);


--
-- Name: wolf_arada_ano_v rid; Type: DEFAULT; Schema: ws_aveiro; Owner: -
--

ALTER TABLE ONLY ws_aveiro.wolf_arada_ano_v ALTER COLUMN rid SET DEFAULT nextval('ws_aveiro."Wolf_Arada_AnoV_rid_seq"'::regclass);


--
-- Name: wolf_montemuro_ano_i rid; Type: DEFAULT; Schema: ws_aveiro; Owner: -
--

ALTER TABLE ONLY ws_aveiro.wolf_montemuro_ano_i ALTER COLUMN rid SET DEFAULT nextval('ws_aveiro."Wolf_Montemuro_AnoI_rid_seq"'::regclass);


--
-- Name: wolf_montemuro_ano_ii rid; Type: DEFAULT; Schema: ws_aveiro; Owner: -
--

ALTER TABLE ONLY ws_aveiro.wolf_montemuro_ano_ii ALTER COLUMN rid SET DEFAULT nextval('ws_aveiro."Wolf_Montemuro_AnoII_rid_seq"'::regclass);


--
-- Name: wolf_montemuro_ano_iii rid; Type: DEFAULT; Schema: ws_aveiro; Owner: -
--

ALTER TABLE ONLY ws_aveiro.wolf_montemuro_ano_iii ALTER COLUMN rid SET DEFAULT nextval('ws_aveiro."Wolf_Montemuro_AnoIII_rid_seq"'::regclass);


--
-- Name: wolf_montemuro_ano_iv rid; Type: DEFAULT; Schema: ws_aveiro; Owner: -
--

ALTER TABLE ONLY ws_aveiro.wolf_montemuro_ano_iv ALTER COLUMN rid SET DEFAULT nextval('ws_aveiro."Wolf_Montemuro_AnoIV_rid_seq"'::regclass);


--
-- Name: wolf_montemuro_ano_v rid; Type: DEFAULT; Schema: ws_aveiro; Owner: -
--

ALTER TABLE ONLY ws_aveiro.wolf_montemuro_ano_v ALTER COLUMN rid SET DEFAULT nextval('ws_aveiro."Wolf_Montemuro_AnoV_rid_seq"'::regclass);


--
-- Name: barycenters barycenters_id; Type: DEFAULT; Schema: ws_cefs; Owner: -
--

ALTER TABLE ONLY ws_cefs.barycenters ALTER COLUMN barycenters_id SET DEFAULT nextval('ws_cefs.barycenters_barycenters_id_seq'::regclass);


--
-- Name: t_hfp_2009_subareas_wgs84 id; Type: DEFAULT; Schema: ws_cefs; Owner: -
--

ALTER TABLE ONLY ws_cefs.t_hfp_2009_subareas_wgs84 ALTER COLUMN id SET DEFAULT nextval('ws_cefs.t_hfp_2009_subareas_wgs84_id_seq'::regclass);


--
-- Name: aspromonte_contour_25k gid; Type: DEFAULT; Schema: ws_dream; Owner: -
--

ALTER TABLE ONLY ws_dream.aspromonte_contour_25k ALTER COLUMN gid SET DEFAULT nextval('ws_dream." aspromonte_contour_25k_gid_seq"'::regclass);


--
-- Name: aspromonte_land_cover_parco gid; Type: DEFAULT; Schema: ws_dream; Owner: -
--

ALTER TABLE ONLY ws_dream.aspromonte_land_cover_parco ALTER COLUMN gid SET DEFAULT nextval('ws_dream.aspromonte_land_cover_parco_gid_seq'::regclass);


--
-- Name: aspromonte_roads gid; Type: DEFAULT; Schema: ws_dream; Owner: -
--

ALTER TABLE ONLY ws_dream.aspromonte_roads ALTER COLUMN gid SET DEFAULT nextval('ws_dream.aspromonte_roads_gid_seq'::regclass);


--
-- Name: comuni_calabria gid; Type: DEFAULT; Schema: ws_dream; Owner: -
--

ALTER TABLE ONLY ws_dream.comuni_calabria ALTER COLUMN gid SET DEFAULT nextval('ws_dream.comuni_calabria_gid_seq'::regclass);


--
-- Name: corine_land_cover_aspromonte gid; Type: DEFAULT; Schema: ws_dream; Owner: -
--

ALTER TABLE ONLY ws_dream.corine_land_cover_aspromonte ALTER COLUMN gid SET DEFAULT nextval('ws_dream.aspromonte_corine_gid_seq'::regclass);


--
-- Name: gps_available gps_available_id; Type: DEFAULT; Schema: ws_dream; Owner: -
--

ALTER TABLE ONLY ws_dream.gps_available ALTER COLUMN gps_available_id SET DEFAULT nextval('ws_dream.gps_available_gps_available_id_seq'::regclass);


--
-- Name: gps_available_ssf_individual_overall key; Type: DEFAULT; Schema: ws_dream; Owner: -
--

ALTER TABLE ONLY ws_dream.gps_available_ssf_individual_overall ALTER COLUMN key SET DEFAULT nextval('ws_dream.gps_available_ssf_individual_overall_key_seq'::regclass);


--
-- Name: gps_available_ssf_individual_overall_10m key; Type: DEFAULT; Schema: ws_dream; Owner: -
--

ALTER TABLE ONLY ws_dream.gps_available_ssf_individual_overall_10m ALTER COLUMN key SET DEFAULT nextval('ws_dream.gps_available_ssf_individual_overall_10m_key_seq'::regclass);


--
-- Name: gps_available_ssf_individual_overall_50m key; Type: DEFAULT; Schema: ws_dream; Owner: -
--

ALTER TABLE ONLY ws_dream.gps_available_ssf_individual_overall_50m ALTER COLUMN key SET DEFAULT nextval('ws_dream.gps_available_ssf_individual_overall_50m_key_seq'::regclass);


--
-- Name: gps_available_ssf_individual_overall_truncated_10m key; Type: DEFAULT; Schema: ws_dream; Owner: -
--

ALTER TABLE ONLY ws_dream.gps_available_ssf_individual_overall_truncated_10m ALTER COLUMN key SET DEFAULT nextval('ws_dream.gps_available_ssf_individual_overall_truncated_10m_key_seq'::regclass);


--
-- Name: gps_available_ssf_individual_window key; Type: DEFAULT; Schema: ws_dream; Owner: -
--

ALTER TABLE ONLY ws_dream.gps_available_ssf_individual_window ALTER COLUMN key SET DEFAULT nextval('ws_dream.gps_available_ssf_individual_window_key_seq'::regclass);


--
-- Name: gps_available_ssf_individual_window_10m key; Type: DEFAULT; Schema: ws_dream; Owner: -
--

ALTER TABLE ONLY ws_dream.gps_available_ssf_individual_window_10m ALTER COLUMN key SET DEFAULT nextval('ws_dream.gps_available_ssf_individual_window_10m_key_seq'::regclass);


--
-- Name: gps_available_ssf_individual_window_50m key; Type: DEFAULT; Schema: ws_dream; Owner: -
--

ALTER TABLE ONLY ws_dream.gps_available_ssf_individual_window_50m ALTER COLUMN key SET DEFAULT nextval('ws_dream.gps_available_ssf_individual_window_50m_key_seq'::regclass);


--
-- Name: gps_available_ssf_individual_window_real_truncated_10m key; Type: DEFAULT; Schema: ws_dream; Owner: -
--

ALTER TABLE ONLY ws_dream.gps_available_ssf_individual_window_real_truncated_10m ALTER COLUMN key SET DEFAULT nextval('ws_dream.gps_available_ssf_individual_window_real_truncated_10m_key_seq'::regclass);


--
-- Name: gps_available_ssf_overall_all_animals key; Type: DEFAULT; Schema: ws_dream; Owner: -
--

ALTER TABLE ONLY ws_dream.gps_available_ssf_overall_all_animals ALTER COLUMN key SET DEFAULT nextval('ws_dream.gps_available_ssf_overall_all_animals_key_seq'::regclass);


--
-- Name: gps_available_ssf_window key; Type: DEFAULT; Schema: ws_dream; Owner: -
--

ALTER TABLE ONLY ws_dream.gps_available_ssf_window ALTER COLUMN key SET DEFAULT nextval('ws_dream.gps_available_ssf_window_key_seq'::regclass);


--
-- Name: gps_available_ssf_window_all_animals key; Type: DEFAULT; Schema: ws_dream; Owner: -
--

ALTER TABLE ONLY ws_dream.gps_available_ssf_window_all_animals ALTER COLUMN key SET DEFAULT nextval('ws_dream.gps_available_ssf_window_all_animals_key_seq'::regclass);


--
-- Name: gps_available_ssf_window_all_animals_10m key; Type: DEFAULT; Schema: ws_dream; Owner: -
--

ALTER TABLE ONLY ws_dream.gps_available_ssf_window_all_animals_10m ALTER COLUMN key SET DEFAULT nextval('ws_dream.gps_available_ssf_window_all_animals_10m_key_seq'::regclass);


--
-- Name: gps_available_ssf_window_all_animals_50m key; Type: DEFAULT; Schema: ws_dream; Owner: -
--

ALTER TABLE ONLY ws_dream.gps_available_ssf_window_all_animals_50m ALTER COLUMN key SET DEFAULT nextval('ws_dream.gps_available_ssf_window_all_animals_50m_key_seq'::regclass);


--
-- Name: hydro gid; Type: DEFAULT; Schema: ws_dream; Owner: -
--

ALTER TABLE ONLY ws_dream.hydro ALTER COLUMN gid SET DEFAULT nextval('ws_dream.hydro_gid_seq'::regclass);


--
-- Name: test_query1_complete key; Type: DEFAULT; Schema: ws_dream; Owner: -
--

ALTER TABLE ONLY ws_dream.test_query1_complete ALTER COLUMN key SET DEFAULT nextval('ws_dream.test_query1_complete_key_seq'::regclass);


--
-- Name: activity_data_animals_hjoellund_denmark p_key; Type: DEFAULT; Schema: ws_fabio; Owner: -
--

ALTER TABLE ONLY ws_fabio.activity_data_animals_hjoellund_denmark ALTER COLUMN p_key SET DEFAULT nextval('ws_fabio.activity_data_animals_hjoellund_denmark_p_key_seq'::regclass);


--
-- Name: activity_data_animals_kaloe_denmark p_key; Type: DEFAULT; Schema: ws_fabio; Owner: -
--

ALTER TABLE ONLY ws_fabio.activity_data_animals_kaloe_denmark ALTER COLUMN p_key SET DEFAULT nextval('ws_fabio.activity_data_animals_kaloe_denmark_p_key_seq'::regclass);


--
-- Name: activity_data_animals_rendena p_key; Type: DEFAULT; Schema: ws_fabio; Owner: -
--

ALTER TABLE ONLY ws_fabio.activity_data_animals_rendena ALTER COLUMN p_key SET DEFAULT nextval('ws_fabio.activity_data_animals_rendena_p_key_seq'::regclass);


--
-- Name: gps_data_animals_cz p_key; Type: DEFAULT; Schema: ws_fabio; Owner: -
--

ALTER TABLE ONLY ws_fabio.gps_data_animals_cz ALTER COLUMN p_key SET DEFAULT nextval('ws_fabio.gps_data_animals_cz_p_key_seq'::regclass);


--
-- Name: Fires_2013_2018_24h id; Type: DEFAULT; Schema: ws_fem; Owner: -
--

ALTER TABLE ONLY ws_fem."Fires_2013_2018_24h" ALTER COLUMN id SET DEFAULT nextval('ws_fem."Fires_2013_2018_24h_id_seq"'::regclass);


--
-- Name: VegeSampling_Locs_Aug2015_NEW_intersect id; Type: DEFAULT; Schema: ws_fem; Owner: -
--

ALTER TABLE ONLY ws_fem."VegeSampling_Locs_Aug2015_NEW_intersect" ALTER COLUMN id SET DEFAULT nextval('ws_fem."VegeSampling_Locs_Aug2015_NEW_intersect_id_seq"'::regclass);


--
-- Name: agri4cast_data id_key; Type: DEFAULT; Schema: ws_fem; Owner: -
--

ALTER TABLE ONLY ws_fem.agri4cast_data ALTER COLUMN id_key SET DEFAULT nextval('ws_fem.agri4cast_data_id_key_seq'::regclass);


--
-- Name: aspect_trentino rid; Type: DEFAULT; Schema: ws_fem; Owner: -
--

ALTER TABLE ONLY ws_fem.aspect_trentino ALTER COLUMN rid SET DEFAULT nextval('ws_fem.aspect_trentino_rid_seq'::regclass);


--
-- Name: combination_animal_year id; Type: DEFAULT; Schema: ws_fem; Owner: -
--

ALTER TABLE ONLY ws_fem.combination_animal_year ALTER COLUMN id SET DEFAULT nextval('ws_fem.combination_animal_year_id_seq'::regclass);


--
-- Name: dem_trentino rid; Type: DEFAULT; Schema: ws_fem; Owner: -
--

ALTER TABLE ONLY ws_fem.dem_trentino ALTER COLUMN rid SET DEFAULT nextval('ws_fem.dem_trentino_rid_seq'::regclass);


--
-- Name: env_data_hunting_reserves_WGS84 id; Type: DEFAULT; Schema: ws_fem; Owner: -
--

ALTER TABLE ONLY ws_fem."env_data_hunting_reserves_WGS84" ALTER COLUMN id SET DEFAULT nextval('ws_fem."env_data_hunting_reserves_WGS84_id_seq"'::regclass);


--
-- Name: env_data_landuse id; Type: DEFAULT; Schema: ws_fem; Owner: -
--

ALTER TABLE ONLY ws_fem.env_data_landuse ALTER COLUMN id SET DEFAULT nextval('ws_fem.env_data_usosuolo_cea_id_seq'::regclass);


--
-- Name: fede_data_final_analysis_feeding id_key; Type: DEFAULT; Schema: ws_fem; Owner: -
--

ALTER TABLE ONLY ws_fem.fede_data_final_analysis_feeding ALTER COLUMN id_key SET DEFAULT nextval('ws_fem.data_id_key_seq'::regclass);


--
-- Name: fede_feeding_stations_management_data study_areas_id; Type: DEFAULT; Schema: ws_fem; Owner: -
--

ALTER TABLE ONLY ws_fem.fede_feeding_stations_management_data ALTER COLUMN study_areas_id SET DEFAULT nextval('ws_fem.feeding_management_new_study_areas_id_seq'::regclass);


--
-- Name: fede_feeding_stations_merge_management_timeseries id_key; Type: DEFAULT; Schema: ws_fem; Owner: -
--

ALTER TABLE ONLY ws_fem.fede_feeding_stations_merge_management_timeseries ALTER COLUMN id_key SET DEFAULT nextval('ws_fem.feeding_sites_alldata_id_key_seq'::regclass);


--
-- Name: fede_raw_gpsdata_feeding_analysis key; Type: DEFAULT; Schema: ws_fem; Owner: -
--

ALTER TABLE ONLY ws_fem.fede_raw_gpsdata_feeding_analysis ALTER COLUMN key SET DEFAULT nextval('ws_fem.data_gps_start_key_seq'::regclass);


--
-- Name: fede_raw_gpsdata_feeding_analysis key2; Type: DEFAULT; Schema: ws_fem; Owner: -
--

ALTER TABLE ONLY ws_fem.fede_raw_gpsdata_feeding_analysis ALTER COLUMN key2 SET DEFAULT nextval('ws_fem.data_gps_start_key2_seq'::regclass);


--
-- Name: gps_classified gps_classified_id; Type: DEFAULT; Schema: ws_fem; Owner: -
--

ALTER TABLE ONLY ws_fem.gps_classified ALTER COLUMN gps_classified_id SET DEFAULT nextval('ws_fem.gps_classified_gps_classified_id_seq'::regclass);


--
-- Name: joh_HRBI_OCHL gid; Type: DEFAULT; Schema: ws_fem; Owner: -
--

ALTER TABLE ONLY ws_fem."joh_HRBI_OCHL" ALTER COLUMN gid SET DEFAULT nextval('ws_fem."HRBI_OCHL_gid_seq"'::regclass);


--
-- Name: joh_regularized_4h_all_data3 unique_id; Type: DEFAULT; Schema: ws_fem; Owner: -
--

ALTER TABLE ONLY ws_fem.joh_regularized_4h_all_data3 ALTER COLUMN unique_id SET DEFAULT nextval('ws_fem.joh_regularized_4h_all_data3_unique_id_seq'::regclass);


--
-- Name: louis_regularize unique_id; Type: DEFAULT; Schema: ws_fem; Owner: -
--

ALTER TABLE ONLY ws_fem.louis_regularize ALTER COLUMN unique_id SET DEFAULT nextval('ws_fem.louis_regularize_unique_id_seq'::regclass);


--
-- Name: ndvi_modis2 rid; Type: DEFAULT; Schema: ws_fem; Owner: -
--

ALTER TABLE ONLY ws_fem.ndvi_modis2 ALTER COLUMN rid SET DEFAULT nextval('ws_fem.ndvi_modis2_rid_seq'::regclass);


--
-- Name: slope_trentino rid; Type: DEFAULT; Schema: ws_fem; Owner: -
--

ALTER TABLE ONLY ws_fem.slope_trentino ALTER COLUMN rid SET DEFAULT nextval('ws_fem.slope_trentino_rid_seq'::regclass);


--
-- Name: temp_import_gpsdata_giudicarie_fede id; Type: DEFAULT; Schema: ws_fem; Owner: -
--

ALTER TABLE ONLY ws_fem.temp_import_gpsdata_giudicarie_fede ALTER COLUMN id SET DEFAULT nextval('ws_fem.temp_import_gpsdata_giudicarie_fede_id_seq'::regclass);


--
-- Name: temp_import_gpsdata_guidicarie id; Type: DEFAULT; Schema: ws_fem; Owner: -
--

ALTER TABLE ONLY ws_fem.temp_import_gpsdata_guidicarie ALTER COLUMN id SET DEFAULT nextval('ws_fem.temp_import_gpsdata_guidicarie_id_seq'::regclass);


--
-- Name: vegetation_fecal_sampling_temp vegetation_fecal_sampling_id; Type: DEFAULT; Schema: ws_fem; Owner: -
--

ALTER TABLE ONLY ws_fem.vegetation_fecal_sampling_temp ALTER COLUMN vegetation_fecal_sampling_id SET DEFAULT nextval('ws_fem.vegetation_fecal_sampling_temp_vegetation_fecal_sampling_id_seq'::regclass);


--
-- Name: vegetation_intensive_sampling_temp vegetation_intensive_sampling_id; Type: DEFAULT; Schema: ws_fem; Owner: -
--

ALTER TABLE ONLY ws_fem.vegetation_intensive_sampling_temp ALTER COLUMN vegetation_intensive_sampling_id SET DEFAULT nextval('ws_fem.vegetation_intensive_sampling_vegetation_intensive_sampling_seq'::regclass);


--
-- Name: vegetation_plot vegetation_plot_id; Type: DEFAULT; Schema: ws_fem; Owner: -
--

ALTER TABLE ONLY ws_fem.vegetation_plot ALTER COLUMN vegetation_plot_id SET DEFAULT nextval('ws_fem.vegetation_plot_vegetation_plot_id_seq'::regclass);


--
-- Name: vegetation_quadrant_sampling_temp vegetation_quadrant_sampling_id; Type: DEFAULT; Schema: ws_fem; Owner: -
--

ALTER TABLE ONLY ws_fem.vegetation_quadrant_sampling_temp ALTER COLUMN vegetation_quadrant_sampling_id SET DEFAULT nextval('ws_fem.vegetation_quadrant_sampling__vegetation_quadrant_sampling__seq'::regclass);


--
-- Name: vegetation_shrub_sampling_temp vegetation_shrub_sampling_id; Type: DEFAULT; Schema: ws_fem; Owner: -
--

ALTER TABLE ONLY ws_fem.vegetation_shrub_sampling_temp ALTER COLUMN vegetation_shrub_sampling_id SET DEFAULT nextval('ws_fem.vegetation_shrub_sampling_temp_vegetation_shrub_sampling_id_seq'::regclass);


--
-- Name: whit_mcp_cembra study_areas_id; Type: DEFAULT; Schema: ws_fem; Owner: -
--

ALTER TABLE ONLY ws_fem.whit_mcp_cembra ALTER COLUMN study_areas_id SET DEFAULT nextval('ws_fem."Bounding geometry_id_0_seq"'::regclass);


--
-- Name: activity_sensors p_key; Type: DEFAULT; Schema: ws_nedo; Owner: -
--

ALTER TABLE ONLY ws_nedo.activity_sensors ALTER COLUMN p_key SET DEFAULT nextval('ws_nedo.activity_sensors_p_key_seq'::regclass);


--
-- Name: animals p.Key; Type: DEFAULT; Schema: ws_nedo; Owner: -
--

ALTER TABLE ONLY ws_nedo.animals ALTER COLUMN "p.Key" SET DEFAULT nextval('ws_nedo."animals_p.Key_seq"'::regclass);


--
-- Name: captures p_key; Type: DEFAULT; Schema: ws_nedo; Owner: -
--

ALTER TABLE ONLY ws_nedo.captures ALTER COLUMN p_key SET DEFAULT nextval('ws_nedo.captures_p_key_seq'::regclass);


--
-- Name: gps_sensor p_key; Type: DEFAULT; Schema: ws_nedo; Owner: -
--

ALTER TABLE ONLY ws_nedo.gps_sensor ALTER COLUMN p_key SET DEFAULT nextval('ws_nedo.gps_sensor_p_key_seq'::regclass);


--
-- Name: sensor p_key; Type: DEFAULT; Schema: ws_nedo; Owner: -
--

ALTER TABLE ONLY ws_nedo.sensor ALTER COLUMN p_key SET DEFAULT nextval('ws_nedo.sensor_p_key_seq'::regclass);


--
-- Name: animals id; Type: DEFAULT; Schema: ws_nicole; Owner: -
--

ALTER TABLE ONLY ws_nicole.animals ALTER COLUMN id SET DEFAULT nextval('ws_nicole.animals_id_seq'::regclass);


--
-- Name: ndvi_modis2 p_key; Type: DEFAULT; Schema: ws_unipd; Owner: -
--

ALTER TABLE ONLY ws_unipd.ndvi_modis2 ALTER COLUMN p_key SET DEFAULT nextval('ws_unipd.ndvi_modis2_p_key_seq'::regclass);


--
-- Name: evl_nightlight_2003_500m evl_nightlight_2003_500m_pkey; Type: CONSTRAINT; Schema: ws_amsterdam; Owner: -
--

ALTER TABLE ONLY ws_amsterdam.evl_nightlight_2003_500m
    ADD CONSTRAINT evl_nightlight_2003_500m_pkey PRIMARY KEY (rid);


--
-- Name: evl_gpsdata_all unique_id_pk; Type: CONSTRAINT; Schema: ws_amsterdam; Owner: -
--

ALTER TABLE ONLY ws_amsterdam.evl_gpsdata_all
    ADD CONSTRAINT unique_id_pk PRIMARY KEY (unique_id);


--
-- Name: aveiro_fire_polygons_new P_Key; Type: CONSTRAINT; Schema: ws_aveiro; Owner: -
--

ALTER TABLE ONLY ws_aveiro.aveiro_fire_polygons_new
    ADD CONSTRAINT "P_Key" PRIMARY KEY (id_val);


--
-- Name: wolf_arada_ano_iii Wolf_Arada_AnoIII_pkey; Type: CONSTRAINT; Schema: ws_aveiro; Owner: -
--

ALTER TABLE ONLY ws_aveiro.wolf_arada_ano_iii
    ADD CONSTRAINT "Wolf_Arada_AnoIII_pkey" PRIMARY KEY (rid);


--
-- Name: wolf_arada_ano_ii Wolf_Arada_AnoII_pkey; Type: CONSTRAINT; Schema: ws_aveiro; Owner: -
--

ALTER TABLE ONLY ws_aveiro.wolf_arada_ano_ii
    ADD CONSTRAINT "Wolf_Arada_AnoII_pkey" PRIMARY KEY (rid);


--
-- Name: wolf_arada_ano_iv Wolf_Arada_AnoIV_pkey; Type: CONSTRAINT; Schema: ws_aveiro; Owner: -
--

ALTER TABLE ONLY ws_aveiro.wolf_arada_ano_iv
    ADD CONSTRAINT "Wolf_Arada_AnoIV_pkey" PRIMARY KEY (rid);


--
-- Name: wolf_arada_ano_i Wolf_Arada_AnoI_pkey; Type: CONSTRAINT; Schema: ws_aveiro; Owner: -
--

ALTER TABLE ONLY ws_aveiro.wolf_arada_ano_i
    ADD CONSTRAINT "Wolf_Arada_AnoI_pkey" PRIMARY KEY (rid);


--
-- Name: wolf_arada_ano_v Wolf_Arada_AnoV_pkey; Type: CONSTRAINT; Schema: ws_aveiro; Owner: -
--

ALTER TABLE ONLY ws_aveiro.wolf_arada_ano_v
    ADD CONSTRAINT "Wolf_Arada_AnoV_pkey" PRIMARY KEY (rid);


--
-- Name: wolf_montemuro_ano_iii Wolf_Montemuro_AnoIII_pkey; Type: CONSTRAINT; Schema: ws_aveiro; Owner: -
--

ALTER TABLE ONLY ws_aveiro.wolf_montemuro_ano_iii
    ADD CONSTRAINT "Wolf_Montemuro_AnoIII_pkey" PRIMARY KEY (rid);


--
-- Name: wolf_montemuro_ano_ii Wolf_Montemuro_AnoII_pkey; Type: CONSTRAINT; Schema: ws_aveiro; Owner: -
--

ALTER TABLE ONLY ws_aveiro.wolf_montemuro_ano_ii
    ADD CONSTRAINT "Wolf_Montemuro_AnoII_pkey" PRIMARY KEY (rid);


--
-- Name: wolf_montemuro_ano_iv Wolf_Montemuro_AnoIV_pkey; Type: CONSTRAINT; Schema: ws_aveiro; Owner: -
--

ALTER TABLE ONLY ws_aveiro.wolf_montemuro_ano_iv
    ADD CONSTRAINT "Wolf_Montemuro_AnoIV_pkey" PRIMARY KEY (rid);


--
-- Name: wolf_montemuro_ano_i Wolf_Montemuro_AnoI_pkey; Type: CONSTRAINT; Schema: ws_aveiro; Owner: -
--

ALTER TABLE ONLY ws_aveiro.wolf_montemuro_ano_i
    ADD CONSTRAINT "Wolf_Montemuro_AnoI_pkey" PRIMARY KEY (rid);


--
-- Name: wolf_montemuro_ano_v Wolf_Montemuro_AnoV_pkey; Type: CONSTRAINT; Schema: ws_aveiro; Owner: -
--

ALTER TABLE ONLY ws_aveiro.wolf_montemuro_ano_v
    ADD CONSTRAINT "Wolf_Montemuro_AnoV_pkey" PRIMARY KEY (rid);


--
-- Name: gps_data gps_data_pkey; Type: CONSTRAINT; Schema: ws_aveiro; Owner: -
--

ALTER TABLE ONLY ws_aveiro.gps_data
    ADD CONSTRAINT gps_data_pkey PRIMARY KEY (gps_data_animals_id);


--
-- Name: t_hfp_2009_subareas_wgs84 t_hfp_2009_subareas_wgs84_pkey; Type: CONSTRAINT; Schema: ws_cefs; Owner: -
--

ALTER TABLE ONLY ws_cefs.t_hfp_2009_subareas_wgs84
    ADD CONSTRAINT t_hfp_2009_subareas_wgs84_pkey PRIMARY KEY (id);


--
-- Name: activity_data_animals_hjoellund_denmark activity_data_animals_hjoellund_denmark_pkey; Type: CONSTRAINT; Schema: ws_fabio; Owner: -
--

ALTER TABLE ONLY ws_fabio.activity_data_animals_hjoellund_denmark
    ADD CONSTRAINT activity_data_animals_hjoellund_denmark_pkey PRIMARY KEY (p_key);


--
-- Name: activity_data_animals_kaloe_denmark activity_data_animals_kaloe_denmark_pkey; Type: CONSTRAINT; Schema: ws_fabio; Owner: -
--

ALTER TABLE ONLY ws_fabio.activity_data_animals_kaloe_denmark
    ADD CONSTRAINT activity_data_animals_kaloe_denmark_pkey PRIMARY KEY (p_key);


--
-- Name: activity_data_animals_rendena activity_data_animals_rendena_pkey; Type: CONSTRAINT; Schema: ws_fabio; Owner: -
--

ALTER TABLE ONLY ws_fabio.activity_data_animals_rendena
    ADD CONSTRAINT activity_data_animals_rendena_pkey PRIMARY KEY (p_key);


--
-- Name: gps_data_animals_cz gps_data_animals_cz_pkey; Type: CONSTRAINT; Schema: ws_fabio; Owner: -
--

ALTER TABLE ONLY ws_fabio.gps_data_animals_cz
    ADD CONSTRAINT gps_data_animals_cz_pkey PRIMARY KEY (p_key);


--
-- Name: whit_mcp_cembra Bounding geometry_pkey; Type: CONSTRAINT; Schema: ws_fem; Owner: -
--

ALTER TABLE ONLY ws_fem.whit_mcp_cembra
    ADD CONSTRAINT "Bounding geometry_pkey" PRIMARY KEY (study_areas_id);


--
-- Name: Fires_2013_2018_24h Fires_2013_2018_24h_pkey; Type: CONSTRAINT; Schema: ws_fem; Owner: -
--

ALTER TABLE ONLY ws_fem."Fires_2013_2018_24h"
    ADD CONSTRAINT "Fires_2013_2018_24h_pkey" PRIMARY KEY (id);


--
-- Name: aspect_trentino aspect_trentino_pkey; Type: CONSTRAINT; Schema: ws_fem; Owner: -
--

ALTER TABLE ONLY ws_fem.aspect_trentino
    ADD CONSTRAINT aspect_trentino_pkey PRIMARY KEY (rid);


--
-- Name: dem_trentino dem_trentino_pkey; Type: CONSTRAINT; Schema: ws_fem; Owner: -
--

ALTER TABLE ONLY ws_fem.dem_trentino
    ADD CONSTRAINT dem_trentino_pkey PRIMARY KEY (rid);


--
-- Name: louis_regularize louis_regularize_pkey; Type: CONSTRAINT; Schema: ws_fem; Owner: -
--

ALTER TABLE ONLY ws_fem.louis_regularize
    ADD CONSTRAINT louis_regularize_pkey PRIMARY KEY (unique_id);


--
-- Name: ndvi_modis2 ndvi_modis_pkey2; Type: CONSTRAINT; Schema: ws_fem; Owner: -
--

ALTER TABLE ONLY ws_fem.ndvi_modis2
    ADD CONSTRAINT ndvi_modis_pkey2 PRIMARY KEY (rid);


--
-- Name: slope_trentino slope_trentino_pkey; Type: CONSTRAINT; Schema: ws_fem; Owner: -
--

ALTER TABLE ONLY ws_fem.slope_trentino
    ADD CONSTRAINT slope_trentino_pkey PRIMARY KEY (rid);


--
-- Name: activity_sensors activity_sensors_pkey; Type: CONSTRAINT; Schema: ws_nedo; Owner: -
--

ALTER TABLE ONLY ws_nedo.activity_sensors
    ADD CONSTRAINT activity_sensors_pkey PRIMARY KEY (p_key);


--
-- Name: animals animals_pkey; Type: CONSTRAINT; Schema: ws_nedo; Owner: -
--

ALTER TABLE ONLY ws_nedo.animals
    ADD CONSTRAINT animals_pkey PRIMARY KEY ("p.Key");


--
-- Name: captures captures_pkey; Type: CONSTRAINT; Schema: ws_nedo; Owner: -
--

ALTER TABLE ONLY ws_nedo.captures
    ADD CONSTRAINT captures_pkey PRIMARY KEY (p_key);


--
-- Name: gps_sensor gps_sensor_pkey; Type: CONSTRAINT; Schema: ws_nedo; Owner: -
--

ALTER TABLE ONLY ws_nedo.gps_sensor
    ADD CONSTRAINT gps_sensor_pkey PRIMARY KEY (p_key);


--
-- Name: sensor sensor_pkey; Type: CONSTRAINT; Schema: ws_nedo; Owner: -
--

ALTER TABLE ONLY ws_nedo.sensor
    ADD CONSTRAINT sensor_pkey PRIMARY KEY (p_key);


--
-- Name: animals animals_pkey; Type: CONSTRAINT; Schema: ws_nicole; Owner: -
--

ALTER TABLE ONLY ws_nicole.animals
    ADD CONSTRAINT animals_pkey PRIMARY KEY (id);


--
-- Name: ct_pst_2022 ct_pst_2022_pkey; Type: CONSTRAINT; Schema: ws_ungulalps; Owner: -
--

ALTER TABLE ONLY ws_ungulalps.ct_pst_2022
    ADD CONSTRAINT ct_pst_2022_pkey PRIMARY KEY (id);


--
-- Name: fecal_samples fecal_samples_pkey; Type: CONSTRAINT; Schema: ws_ungulalps; Owner: -
--

ALTER TABLE ONLY ws_ungulalps.fecal_samples
    ADD CONSTRAINT fecal_samples_pkey PRIMARY KEY (id);


--
-- Name: grid_avn grid_avn_pkey; Type: CONSTRAINT; Schema: ws_ungulalps; Owner: -
--

ALTER TABLE ONLY ws_ungulalps.grid_avn
    ADD CONSTRAINT grid_avn_pkey PRIMARY KEY (gridcell);


--
-- Name: grid_pst grid_pst_pkey; Type: CONSTRAINT; Schema: ws_ungulalps; Owner: -
--

ALTER TABLE ONLY ws_ungulalps.grid_pst
    ADD CONSTRAINT grid_pst_pkey PRIMARY KEY (gridcell);


--
-- Name: evl_gpsdata_all_geom_gist; Type: INDEX; Schema: ws_amsterdam; Owner: -
--

CREATE INDEX evl_gpsdata_all_geom_gist ON ws_amsterdam.evl_gpsdata_all USING gist (geom);


--
-- Name: evl_gpsdata_all_gps_validity_code_index; Type: INDEX; Schema: ws_amsterdam; Owner: -
--

CREATE INDEX evl_gpsdata_all_gps_validity_code_index ON ws_amsterdam.evl_gpsdata_all USING btree (gps_validity_code);


--
-- Name: evl_ndvi_modis_boku_rast_gist; Type: INDEX; Schema: ws_amsterdam; Owner: -
--

CREATE INDEX evl_ndvi_modis_boku_rast_gist ON ws_amsterdam.evl_ndvi_modis_boku USING gist (public.st_convexhull(rast));


--
-- Name: evl_nightlight_2003_500m_rast_st_conhull_idx; Type: INDEX; Schema: ws_amsterdam; Owner: -
--

CREATE INDEX evl_nightlight_2003_500m_rast_st_conhull_idx ON ws_amsterdam.evl_nightlight_2003_500m USING gist (public.st_convexhull(rast));


--
-- Name: sidx_aveiro_fire_polygons_new_geometry; Type: INDEX; Schema: ws_aveiro; Owner: -
--

CREATE INDEX sidx_aveiro_fire_polygons_new_geometry ON ws_aveiro.aveiro_fire_polygons_new USING gist (geometry);


--
-- Name: wolf_arada_anoi_rast_st_conhull_idx; Type: INDEX; Schema: ws_aveiro; Owner: -
--

CREATE INDEX wolf_arada_anoi_rast_st_conhull_idx ON ws_aveiro.wolf_arada_ano_i USING gist (public.st_convexhull(rast));


--
-- Name: wolf_arada_anoii_rast_st_conhull_idx; Type: INDEX; Schema: ws_aveiro; Owner: -
--

CREATE INDEX wolf_arada_anoii_rast_st_conhull_idx ON ws_aveiro.wolf_arada_ano_ii USING gist (public.st_convexhull(rast));


--
-- Name: wolf_arada_anoiii_rast_st_conhull_idx; Type: INDEX; Schema: ws_aveiro; Owner: -
--

CREATE INDEX wolf_arada_anoiii_rast_st_conhull_idx ON ws_aveiro.wolf_arada_ano_iii USING gist (public.st_convexhull(rast));


--
-- Name: wolf_arada_anoiv_rast_st_conhull_idx; Type: INDEX; Schema: ws_aveiro; Owner: -
--

CREATE INDEX wolf_arada_anoiv_rast_st_conhull_idx ON ws_aveiro.wolf_arada_ano_iv USING gist (public.st_convexhull(rast));


--
-- Name: wolf_arada_anov_rast_st_conhull_idx; Type: INDEX; Schema: ws_aveiro; Owner: -
--

CREATE INDEX wolf_arada_anov_rast_st_conhull_idx ON ws_aveiro.wolf_arada_ano_v USING gist (public.st_convexhull(rast));


--
-- Name: wolf_montemuro_anoi_rast_st_conhull_idx; Type: INDEX; Schema: ws_aveiro; Owner: -
--

CREATE INDEX wolf_montemuro_anoi_rast_st_conhull_idx ON ws_aveiro.wolf_montemuro_ano_i USING gist (public.st_convexhull(rast));


--
-- Name: wolf_montemuro_anoii_rast_st_conhull_idx; Type: INDEX; Schema: ws_aveiro; Owner: -
--

CREATE INDEX wolf_montemuro_anoii_rast_st_conhull_idx ON ws_aveiro.wolf_montemuro_ano_ii USING gist (public.st_convexhull(rast));


--
-- Name: wolf_montemuro_anoiii_rast_st_conhull_idx; Type: INDEX; Schema: ws_aveiro; Owner: -
--

CREATE INDEX wolf_montemuro_anoiii_rast_st_conhull_idx ON ws_aveiro.wolf_montemuro_ano_iii USING gist (public.st_convexhull(rast));


--
-- Name: wolf_montemuro_anoiv_rast_st_conhull_idx; Type: INDEX; Schema: ws_aveiro; Owner: -
--

CREATE INDEX wolf_montemuro_anoiv_rast_st_conhull_idx ON ws_aveiro.wolf_montemuro_ano_iv USING gist (public.st_convexhull(rast));


--
-- Name: wolf_montemuro_anov_rast_st_conhull_idx; Type: INDEX; Schema: ws_aveiro; Owner: -
--

CREATE INDEX wolf_montemuro_anov_rast_st_conhull_idx ON ws_aveiro.wolf_montemuro_ano_v USING gist (public.st_convexhull(rast));


--
-- Name: sidx_t_hfp_2009_subareas_wgs84_geom; Type: INDEX; Schema: ws_cefs; Owner: -
--

CREATE INDEX sidx_t_hfp_2009_subareas_wgs84_geom ON ws_cefs.t_hfp_2009_subareas_wgs84 USING gist (geom);


--
-- Name: aspect_trentino_st_convexhull_idx; Type: INDEX; Schema: ws_fem; Owner: -
--

CREATE INDEX aspect_trentino_st_convexhull_idx ON ws_fem.aspect_trentino USING gist (public.st_convexhull(rast));


--
-- Name: dem_trentino_st_convexhull_idx; Type: INDEX; Schema: ws_fem; Owner: -
--

CREATE INDEX dem_trentino_st_convexhull_idx ON ws_fem.dem_trentino USING gist (public.st_convexhull(rast));


--
-- Name: joh_ndvi_modis_boku_rast_gist; Type: INDEX; Schema: ws_fem; Owner: -
--

CREATE INDEX joh_ndvi_modis_boku_rast_gist ON ws_fem.joh_ndvi_modis_boku USING gist (public.st_convexhull(rast));


--
-- Name: rand_id; Type: INDEX; Schema: ws_fem; Owner: -
--

CREATE INDEX rand_id ON ws_fem.gio_randompoints USING btree (rand_id);


--
-- Name: random_point; Type: INDEX; Schema: ws_fem; Owner: -
--

CREATE INDEX random_point ON ws_fem.gio_randompoints USING btree (random_point);


--
-- Name: slope_trentino_st_convexhull_idx; Type: INDEX; Schema: ws_fem; Owner: -
--

CREATE INDEX slope_trentino_st_convexhull_idx ON ws_fem.slope_trentino USING gist (public.st_convexhull(rast));


--
-- Name: study_area_geom; Type: INDEX; Schema: ws_fem; Owner: -
--

CREATE INDEX study_area_geom ON ws_fem.gio_randompoints USING btree (study_area_geom);


--
-- Name: study_areas_id; Type: INDEX; Schema: ws_fem; Owner: -
--

CREATE INDEX study_areas_id ON ws_fem.gio_randompoints USING btree (study_areas_id);


--
-- Name: sidx_ct_pst_2022_geom; Type: INDEX; Schema: ws_ungulalps; Owner: -
--

CREATE INDEX sidx_ct_pst_2022_geom ON ws_ungulalps.ct_pst_2022 USING gist (geom);


--
-- Name: SCHEMA ws_amsterdam; Type: ACL; Schema: -; Owner: -
--

GRANT ALL ON SCHEMA ws_amsterdam TO rg_amsterdam;


--
-- Name: SCHEMA ws_aveiro; Type: ACL; Schema: -; Owner: -
--

GRANT ALL ON SCHEMA ws_aveiro TO rg_aveiro;


--
-- Name: SCHEMA ws_bfnp; Type: ACL; Schema: -; Owner: -
--

GRANT ALL ON SCHEMA ws_bfnp TO rg_bfnp;
GRANT ALL ON SCHEMA ws_bfnp TO data_curators_eurodeer;


--
-- Name: SCHEMA ws_boku; Type: ACL; Schema: -; Owner: -
--

GRANT ALL ON SCHEMA ws_boku TO rg_boku;


--
-- Name: SCHEMA ws_cefs; Type: ACL; Schema: -; Owner: -
--

GRANT ALL ON SCHEMA ws_cefs TO rg_cefs;


--
-- Name: SCHEMA ws_dream; Type: ACL; Schema: -; Owner: -
--

GRANT ALL ON SCHEMA ws_dream TO rg_dream;


--
-- Name: SCHEMA ws_fabio; Type: ACL; Schema: -; Owner: -
--

GRANT ALL ON SCHEMA ws_fabio TO fleoncini;


--
-- Name: SCHEMA ws_fem; Type: ACL; Schema: -; Owner: -
--

GRANT ALL ON SCHEMA ws_fem TO rg_fem;


--
-- Name: SCHEMA ws_freiburg; Type: ACL; Schema: -; Owner: -
--

GRANT ALL ON SCHEMA ws_freiburg TO rg_freiburg;
GRANT ALL ON SCHEMA ws_freiburg TO data_curators_eurodeer;


--
-- Name: SCHEMA ws_isc; Type: ACL; Schema: -; Owner: -
--

GRANT ALL ON SCHEMA ws_isc TO rg_isc;


--
-- Name: SCHEMA ws_nedo; Type: ACL; Schema: -; Owner: -
--

GRANT ALL ON SCHEMA ws_nedo TO enesi;


--
-- Name: SCHEMA ws_nicole; Type: ACL; Schema: -; Owner: -
--

GRANT ALL ON SCHEMA ws_nicole TO nmacri;


--
-- Name: SCHEMA ws_nyme; Type: ACL; Schema: -; Owner: -
--

GRANT ALL ON SCHEMA ws_nyme TO rg_nyme;


--
-- Name: SCHEMA ws_oncfs_tf; Type: ACL; Schema: -; Owner: -
--

GRANT ALL ON SCHEMA ws_oncfs_tf TO rg_oncfs_tf;


--
-- Name: SCHEMA ws_slu; Type: ACL; Schema: -; Owner: -
--

GRANT ALL ON SCHEMA ws_slu TO rg_slu;


--
-- Name: SCHEMA ws_ungulalps; Type: ACL; Schema: -; Owner: -
--

GRANT ALL ON SCHEMA ws_ungulalps TO fossi;
GRANT ALL ON SCHEMA ws_ungulalps TO cvhoermann;
GRANT ALL ON SCHEMA ws_ungulalps TO psemenzato;
GRANT ALL ON SCHEMA ws_ungulalps TO cvanderlocht;
GRANT ALL ON SCHEMA ws_ungulalps TO acorradini;


--
-- Name: SCHEMA ws_unipd; Type: ACL; Schema: -; Owner: -
--

GRANT ALL ON SCHEMA ws_unipd TO rg_unipd;


--
-- Name: TABLE evl_actdata_all; Type: ACL; Schema: ws_amsterdam; Owner: -
--

GRANT SELECT,INSERT,UPDATE ON TABLE ws_amsterdam.evl_actdata_all TO evloon;


--
-- Name: TABLE evl_animals_sensors_all; Type: ACL; Schema: ws_amsterdam; Owner: -
--

GRANT SELECT,INSERT,UPDATE ON TABLE ws_amsterdam.evl_animals_sensors_all TO evloon;


--
-- Name: TABLE evl_gpsdata_all; Type: ACL; Schema: ws_amsterdam; Owner: -
--

GRANT SELECT,INSERT,UPDATE ON TABLE ws_amsterdam.evl_gpsdata_all TO evloon;


--
-- Name: TABLE evl_mcps_all_shiny; Type: ACL; Schema: ws_amsterdam; Owner: -
--

GRANT SELECT ON TABLE ws_amsterdam.evl_mcps_all_shiny TO evloon;


--
-- Name: TABLE evl_trajectories_all_shiny_simp; Type: ACL; Schema: ws_amsterdam; Owner: -
--

GRANT SELECT ON TABLE ws_amsterdam.evl_trajectories_all_shiny_simp TO evloon;


--
-- Name: TABLE animals_fire; Type: ACL; Schema: ws_aveiro; Owner: -
--

GRANT ALL ON TABLE ws_aveiro.animals_fire TO fossi;


--
-- Name: TABLE aveiro_fire_polygons_2; Type: ACL; Schema: ws_aveiro; Owner: -
--

GRANT ALL ON TABLE ws_aveiro.aveiro_fire_polygons_2 TO jdegroeve;


--
-- Name: TABLE aveiro_fire_polygons_new; Type: ACL; Schema: ws_aveiro; Owner: -
--

GRANT ALL ON TABLE ws_aveiro.aveiro_fire_polygons_new TO jdegroeve;


--
-- Name: TABLE fire; Type: ACL; Schema: ws_aveiro; Owner: -
--

GRANT ALL ON TABLE ws_aveiro.fire TO fossi;


--
-- Name: TABLE fires; Type: ACL; Schema: ws_aveiro; Owner: -
--

GRANT ALL ON TABLE ws_aveiro.fires TO fossi;


--
-- Name: TABLE gps_data; Type: ACL; Schema: ws_aveiro; Owner: -
--

GRANT ALL ON TABLE ws_aveiro.gps_data TO jdegroeve;


--
-- Name: TABLE gps_data_regular; Type: ACL; Schema: ws_aveiro; Owner: -
--

GRANT ALL ON TABLE ws_aveiro.gps_data_regular TO fossi;


--
-- Name: TABLE gps_data_regular2; Type: ACL; Schema: ws_aveiro; Owner: -
--

GRANT ALL ON TABLE ws_aveiro.gps_data_regular2 TO fossi;


--
-- Name: TABLE gps_data_regular_wolf_final; Type: ACL; Schema: ws_aveiro; Owner: -
--

GRANT ALL ON TABLE ws_aveiro.gps_data_regular_wolf_final TO fossi;


--
-- Name: TABLE gps_data_wolf; Type: ACL; Schema: ws_aveiro; Owner: -
--

GRANT ALL ON TABLE ws_aveiro.gps_data_wolf TO jdegroeve;


--
-- Name: TABLE gps_data_wolf_regular; Type: ACL; Schema: ws_aveiro; Owner: -
--

GRANT ALL ON TABLE ws_aveiro.gps_data_wolf_regular TO fossi;


--
-- Name: TABLE homeranges_raw; Type: ACL; Schema: ws_aveiro; Owner: -
--

GRANT ALL ON TABLE ws_aveiro.homeranges_raw TO jdegroeve;


--
-- Name: TABLE t_intersection_ani_points_subareas; Type: ACL; Schema: ws_cefs; Owner: -
--

GRANT ALL ON TABLE ws_cefs.t_intersection_ani_points_subareas TO eurodeer_users;


--
-- Name: TABLE aspromonte_contour_25k; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.aspromonte_contour_25k TO rg_dream;


--
-- Name: TABLE "RSF_to_match_SSF_0m_for_6m"; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream."RSF_to_match_SSF_0m_for_6m" TO rg_dream;


--
-- Name: TABLE "RSF_to_match_SSF_3m_for_6m"; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream."RSF_to_match_SSF_3m_for_6m" TO rg_dream;


--
-- Name: TABLE "RSF_to_match_SSF_6m_for_6m"; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream."RSF_to_match_SSF_6m_for_6m" TO rg_dream;


--
-- Name: TABLE all_animals; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.all_animals TO rg_dream;


--
-- Name: TABLE corine_land_cover_aspromonte; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.corine_land_cover_aspromonte TO rg_dream;


--
-- Name: TABLE aspromonte_land_cover_parco; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.aspromonte_land_cover_parco TO rg_dream;


--
-- Name: TABLE aspromonte_roads; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.aspromonte_roads TO rg_dream;


--
-- Name: TABLE available_ssf_input; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.available_ssf_input TO rg_dream;


--
-- Name: TABLE comuni_calabria; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.comuni_calabria TO rg_dream;


--
-- Name: TABLE corine_land_cover_aspromonte_legend; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.corine_land_cover_aspromonte_legend TO rg_dream;


--
-- Name: TABLE geom_parameters_ssf_12m; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.geom_parameters_ssf_12m TO rg_dream;


--
-- Name: TABLE gps_available; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.gps_available TO rg_dream;


--
-- Name: TABLE gps_available_ssf; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.gps_available_ssf TO rg_dream;


--
-- Name: TABLE gps_available_ssf_individual_overall; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.gps_available_ssf_individual_overall TO rg_dream;


--
-- Name: TABLE gps_available_ssf_individual_overall_10m; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.gps_available_ssf_individual_overall_10m TO rg_dream;


--
-- Name: TABLE gps_available_ssf_individual_overall_50m; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.gps_available_ssf_individual_overall_50m TO rg_dream;


--
-- Name: TABLE gps_available_ssf_individual_overall_truncated_10m; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.gps_available_ssf_individual_overall_truncated_10m TO rg_dream;


--
-- Name: TABLE gps_available_ssf_individual_window; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.gps_available_ssf_individual_window TO rg_dream;


--
-- Name: TABLE gps_available_ssf_individual_window_10m; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.gps_available_ssf_individual_window_10m TO rg_dream;


--
-- Name: TABLE gps_available_ssf_individual_window_50m; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.gps_available_ssf_individual_window_50m TO rg_dream;


--
-- Name: TABLE gps_available_ssf_individual_window_real_truncated_10m; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.gps_available_ssf_individual_window_real_truncated_10m TO rg_dream;


--
-- Name: TABLE gps_available_ssf_no_time_constraint; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.gps_available_ssf_no_time_constraint TO rg_dream;


--
-- Name: TABLE gps_available_ssf_overall; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.gps_available_ssf_overall TO rg_dream;


--
-- Name: TABLE gps_available_ssf_overall_all_animals; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.gps_available_ssf_overall_all_animals TO rg_dream;


--
-- Name: TABLE gps_available_ssf_window; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.gps_available_ssf_window TO rg_dream;


--
-- Name: TABLE gps_available_ssf_window_all_animals; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.gps_available_ssf_window_all_animals TO rg_dream;


--
-- Name: TABLE gps_available_ssf_window_all_animals_10m; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.gps_available_ssf_window_all_animals_10m TO rg_dream;


--
-- Name: TABLE gps_available_ssf_window_all_animals_50m; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.gps_available_ssf_window_all_animals_50m TO rg_dream;


--
-- Name: TABLE gps_data_aspromonte; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.gps_data_aspromonte TO rg_dream;


--
-- Name: TABLE gps_data_aspromonte_ssf; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.gps_data_aspromonte_ssf TO rg_dream;


--
-- Name: TABLE gps_used; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.gps_used TO rg_dream;


--
-- Name: TABLE gps_used_final; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.gps_used_final TO rg_dream;


--
-- Name: TABLE hydro; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.hydro TO rg_dream;


--
-- Name: TABLE lu_aspect; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.lu_aspect TO rg_dream;


--
-- Name: TABLE lu_ground; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.lu_ground TO rg_dream;


--
-- Name: TABLE lu_occ; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.lu_occ TO rg_dream;


--
-- Name: TABLE lu_physiography; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.lu_physiography TO rg_dream;


--
-- Name: TABLE lu_slope; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.lu_slope TO rg_dream;


--
-- Name: TABLE lu_tree_management; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.lu_tree_management TO rg_dream;


--
-- Name: TABLE lu_tree_renewal; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.lu_tree_renewal TO rg_dream;


--
-- Name: TABLE lu_tree_sprout; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.lu_tree_sprout TO rg_dream;


--
-- Name: TABLE release_sites; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.release_sites TO rg_dream;


--
-- Name: TABLE released_survival; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.released_survival TO rg_dream;


--
-- Name: TABLE ssf_agroforestale; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.ssf_agroforestale TO rg_dream;


--
-- Name: TABLE survey_complete_grid; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.survey_complete_grid TO rg_dream;


--
-- Name: TABLE survey_grid; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.survey_grid TO rg_dream;


--
-- Name: TABLE survey_grid_0_for_6m; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.survey_grid_0_for_6m TO rg_dream;


--
-- Name: TABLE survey_grid_3m_for_6m; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.survey_grid_3m_for_6m TO rg_dream;


--
-- Name: TABLE survey_grid_6m; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.survey_grid_6m TO rg_dream;


--
-- Name: TABLE survey_grid_6m_for_6m; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.survey_grid_6m_for_6m TO rg_dream;


--
-- Name: TABLE survey_veg_data; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.survey_veg_data TO rg_dream;


--
-- Name: TABLE survey_veg_data_old; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.survey_veg_data_old TO rg_dream;


--
-- Name: TABLE target_area; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.target_area TO rg_dream;


--
-- Name: TABLE test_query1_complete; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.test_query1_complete TO rg_dream;


--
-- Name: TABLE trajectories_aspromonte_0_for_6m_buffer; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.trajectories_aspromonte_0_for_6m_buffer TO rg_dream;


--
-- Name: TABLE trajectories_aspromonte_3m_for_6m_buffer; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.trajectories_aspromonte_3m_for_6m_buffer TO rg_dream;


--
-- Name: TABLE trajectories_aspromonte_6m_buffer; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.trajectories_aspromonte_6m_buffer TO rg_dream;


--
-- Name: TABLE trajectories_aspromonte_6m_for_6m_buffer; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.trajectories_aspromonte_6m_for_6m_buffer TO rg_dream;


--
-- Name: TABLE trajectories_aspromonte_sample; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.trajectories_aspromonte_sample TO rg_dream;


--
-- Name: TABLE trajectories_aspromonte_sample_all; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.trajectories_aspromonte_sample_all TO rg_dream;


--
-- Name: TABLE trajectories_aspromonte_sample_buffer; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.trajectories_aspromonte_sample_buffer TO rg_dream;


--
-- Name: TABLE trajectories_aspromonte_sample_buffer_all; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.trajectories_aspromonte_sample_buffer_all TO rg_dream;


--
-- Name: TABLE val_rendena_outgroup_selection; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.val_rendena_outgroup_selection TO rg_dream;


--
-- Name: TABLE val_rendena_outgroup_selection_regularized; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.val_rendena_outgroup_selection_regularized TO rg_dream;


--
-- Name: TABLE view_boundingbox_aspromonte; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.view_boundingbox_aspromonte TO rg_dream;


--
-- Name: TABLE view_validity_interval_ssf_12m; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.view_validity_interval_ssf_12m TO rg_dream;


--
-- Name: TABLE view_code_intersection_buffer_0_for_6m; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.view_code_intersection_buffer_0_for_6m TO rg_dream;


--
-- Name: TABLE view_code_intersection_buffer_3m_for_6m; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.view_code_intersection_buffer_3m_for_6m TO rg_dream;


--
-- Name: TABLE view_code_intersection_points_0_for_6m; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.view_code_intersection_points_0_for_6m TO rg_dream;


--
-- Name: TABLE view_code_intersection_points_3m_for_6m; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.view_code_intersection_points_3m_for_6m TO rg_dream;


--
-- Name: TABLE view_gps_positions_dream; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.view_gps_positions_dream TO rg_dream;


--
-- Name: TABLE view_gps_positions_aspromonte; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.view_gps_positions_aspromonte TO rg_dream;


--
-- Name: TABLE view_convexhull_aspromonte; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.view_convexhull_aspromonte TO rg_dream;


--
-- Name: TABLE view_geom_parameters_ssf_12m; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.view_geom_parameters_ssf_12m TO rg_dream;


--
-- Name: TABLE view_gps_data_aspromonte_0_for_6m_irregular; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.view_gps_data_aspromonte_0_for_6m_irregular TO rg_dream;


--
-- Name: TABLE view_gps_data_aspromonte_0_for_6m; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.view_gps_data_aspromonte_0_for_6m TO rg_dream;


--
-- Name: TABLE view_gps_data_aspromonte_3m_for_6m; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.view_gps_data_aspromonte_3m_for_6m TO rg_dream;


--
-- Name: TABLE view_gps_data_aspromonte_6m; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.view_gps_data_aspromonte_6m TO rg_dream;


--
-- Name: TABLE view_gps_data_aspromonte_6m_for_6m; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.view_gps_data_aspromonte_6m_for_6m TO rg_dream;


--
-- Name: TABLE view_gps_data_ssf_12m; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.view_gps_data_ssf_12m TO rg_dream;


--
-- Name: TABLE view_gps_positions_aspromonte_clc4; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.view_gps_positions_aspromonte_clc4 TO rg_dream;


--
-- Name: TABLE view_gps_used_migro; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.view_gps_used_migro TO rg_dream;


--
-- Name: TABLE view_grid_survey; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.view_grid_survey TO rg_dream;


--
-- Name: TABLE view_survey_grid_0_for_6m_unpivot; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.view_survey_grid_0_for_6m_unpivot TO rg_dream;


--
-- Name: TABLE view_survey_grid_0_for_6m_unpivot_corrected; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.view_survey_grid_0_for_6m_unpivot_corrected TO rg_dream;


--
-- Name: TABLE view_survey_grid_0_for_6m_unpivot_corrected_veg; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.view_survey_grid_0_for_6m_unpivot_corrected_veg TO rg_dream;


--
-- Name: TABLE view_survey_grid_0_for_6m_unpivot_veg; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.view_survey_grid_0_for_6m_unpivot_veg TO rg_dream;


--
-- Name: TABLE view_survey_grid_3m_for_6m_unpivot; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.view_survey_grid_3m_for_6m_unpivot TO rg_dream;


--
-- Name: TABLE view_survey_grid_3m_for_6m_unpivot_veg; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.view_survey_grid_3m_for_6m_unpivot_veg TO rg_dream;


--
-- Name: TABLE view_survey_grid_6m_for_6m_unpivot; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.view_survey_grid_6m_for_6m_unpivot TO rg_dream;


--
-- Name: TABLE view_survey_grid_6m_for_6m_unpivot_veg; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.view_survey_grid_6m_for_6m_unpivot_veg TO rg_dream;


--
-- Name: TABLE view_survey_grid_6m_unpivot; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.view_survey_grid_6m_unpivot TO rg_dream;


--
-- Name: TABLE view_survey_grid_6m_unpivot_veg; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.view_survey_grid_6m_unpivot_veg TO rg_dream;


--
-- Name: TABLE view_survey_veg_animals; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.view_survey_veg_animals TO rg_dream;


--
-- Name: TABLE view_trajectories_aspromonte; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.view_trajectories_aspromonte TO rg_dream;


--
-- Name: TABLE view_trajectories_aspromonte_0_for_6m; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.view_trajectories_aspromonte_0_for_6m TO rg_dream;


--
-- Name: TABLE view_trajectories_aspromonte_0_for_6m_buffer; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.view_trajectories_aspromonte_0_for_6m_buffer TO rg_dream;


--
-- Name: TABLE view_trajectories_aspromonte_3m_for_6m; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.view_trajectories_aspromonte_3m_for_6m TO rg_dream;


--
-- Name: TABLE view_trajectories_aspromonte_3m_for_6m_buffer; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.view_trajectories_aspromonte_3m_for_6m_buffer TO rg_dream;


--
-- Name: TABLE view_trajectories_aspromonte_6m; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.view_trajectories_aspromonte_6m TO rg_dream;


--
-- Name: TABLE view_trajectories_aspromonte_6m_buffer; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.view_trajectories_aspromonte_6m_buffer TO rg_dream;


--
-- Name: TABLE view_trajectories_aspromonte_6m_for_6m; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.view_trajectories_aspromonte_6m_for_6m TO rg_dream;


--
-- Name: TABLE view_trajectories_aspromonte_6m_for_6m_buffer; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.view_trajectories_aspromonte_6m_for_6m_buffer TO rg_dream;


--
-- Name: TABLE view_trajectories_aspromonte_sample; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.view_trajectories_aspromonte_sample TO rg_dream;


--
-- Name: TABLE view_trajectories_aspromonte_sample_all; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.view_trajectories_aspromonte_sample_all TO rg_dream;


--
-- Name: TABLE view_trajectories_aspromonte_sample_buffer; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.view_trajectories_aspromonte_sample_buffer TO rg_dream;


--
-- Name: TABLE view_trajectories_aspromonte_sample_buffer_all; Type: ACL; Schema: ws_dream; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ws_dream.view_trajectories_aspromonte_sample_buffer_all TO rg_dream;


--
-- Name: TABLE "joh_HRBI_OCHL"; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem."joh_HRBI_OCHL" TO rg_fem;


--
-- Name: TABLE "VegeSampling_Locs_Aug2015_NEW_intersect"; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem."VegeSampling_Locs_Aug2015_NEW_intersect" TO rg_fem;


--
-- Name: TABLE "VegeSampling_Locs_Aug2015_NEW_intersect_ferdi"; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem."VegeSampling_Locs_Aug2015_NEW_intersect_ferdi" TO rg_fem;


--
-- Name: TABLE agri4cast_data; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.agri4cast_data TO rg_fem;


--
-- Name: TABLE agri4cast_data_var; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.agri4cast_data_var TO rg_fem;


--
-- Name: TABLE agri4cast_grid; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.agri4cast_grid TO rg_fem;


--
-- Name: TABLE aspect_trentino; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.aspect_trentino TO rg_fem;


--
-- Name: TABLE combination; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.combination TO rg_fem;


--
-- Name: TABLE combination_animal_year; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.combination_animal_year TO rg_fem;


--
-- Name: TABLE combination_complete; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.combination_complete TO rg_fem;


--
-- Name: TABLE corine_land_cover_legend_recl; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.corine_land_cover_legend_recl TO rg_fem;


--
-- Name: TABLE fede_raw_gpsdata_feeding_analysis; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.fede_raw_gpsdata_feeding_analysis TO rg_fem;


--
-- Name: TABLE fede_data_final_analysis_feeding; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.fede_data_final_analysis_feeding TO rg_fem;


--
-- Name: TABLE dataset_gps; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.dataset_gps TO rg_fem;


--
-- Name: TABLE dem_trentino; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.dem_trentino TO rg_fem;


--
-- Name: TABLE "env_data_hunting_reserves_WGS84"; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem."env_data_hunting_reserves_WGS84" TO rg_fem;


--
-- Name: TABLE env_data_landuse; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.env_data_landuse TO rg_fem;


--
-- Name: TABLE env_data_subsites_bondone; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.env_data_subsites_bondone TO rg_fem;


--
-- Name: TABLE fede_feeding_stations_management_data; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.fede_feeding_stations_management_data TO rg_fem;


--
-- Name: TABLE fede_feeding_stations_merge_management_timeseries; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.fede_feeding_stations_merge_management_timeseries TO rg_fem;


--
-- Name: TABLE fede_feeding_stations_selected_spatiotemporal_overlap; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.fede_feeding_stations_selected_spatiotemporal_overlap TO rg_fem;


--
-- Name: TABLE fede_feeding_stations_timeseries; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.fede_feeding_stations_timeseries TO rg_fem;


--
-- Name: TABLE fede_feeding_stations_timeseries_valrendena; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.fede_feeding_stations_timeseries_valrendena TO rg_fem;


--
-- Name: TABLE fede_feeding_use_rendena_lastdata; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.fede_feeding_use_rendena_lastdata TO rg_fem;


--
-- Name: TABLE fede_homeranges_k50_feeding; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.fede_homeranges_k50_feeding TO rg_fem;


--
-- Name: TABLE fede_homeranges_k50_feeding_valrendena; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.fede_homeranges_k50_feeding_valrendena TO rg_fem;


--
-- Name: TABLE fede_secondo_alldata; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.fede_secondo_alldata TO rg_fem;


--
-- Name: TABLE fede_secondo_correct; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.fede_secondo_correct TO rg_fem;


--
-- Name: TABLE grid_points; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.grid_points TO rg_fem;


--
-- Name: TABLE grid_points_rd; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.grid_points_rd TO rg_fem;


--
-- Name: TABLE joh_avg_daily_dist_woodland_habitat_fran; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_avg_daily_dist_woodland_habitat_fran TO rg_fem;


--
-- Name: TABLE joh_cams_data_roe_red_fran; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cams_data_roe_red_fran TO rg_fem;


--
-- Name: TABLE joh_cams_roe_red_fran; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cams_roe_red_fran TO rg_fem;


--
-- Name: TABLE joh_cembra_sl; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_sl TO rg_fem;


--
-- Name: TABLE joh_cembra_sl_input_data; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_sl_input_data TO rg_fem;


--
-- Name: TABLE joh_cembra_sl_original_data; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_sl_original_data TO rg_fem;


--
-- Name: TABLE joh_cembra_sl_sample_temp2_p; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_sl_sample_temp2_p TO rg_fem;


--
-- Name: TABLE joh_cembra_sl_sample_utm; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_sl_sample_utm TO rg_fem;


--
-- Name: TABLE joh_cembra_sl_sample_utm_p; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_sl_sample_utm_p TO rg_fem;


--
-- Name: TABLE joh_cembra_sl_sample_wgs; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_sl_sample_wgs TO rg_fem;


--
-- Name: TABLE joh_cembra_update212_id26_sl_sample_temp1; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update212_id26_sl_sample_temp1 TO rg_fem;


--
-- Name: TABLE joh_cembra_update212_id26_sl_sample_temp2; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update212_id26_sl_sample_temp2 TO rg_fem;


--
-- Name: TABLE joh_cembra_update212_id26_sl_sample_utm; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update212_id26_sl_sample_utm TO rg_fem;


--
-- Name: TABLE joh_cembra_update212_id26_sl_sample_wgs; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update212_id26_sl_sample_wgs TO rg_fem;


--
-- Name: TABLE joh_cembra_update212_id2_sl_sample_temp1; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update212_id2_sl_sample_temp1 TO rg_fem;


--
-- Name: TABLE joh_cembra_update212_id2_sl_sample_temp2; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update212_id2_sl_sample_temp2 TO rg_fem;


--
-- Name: TABLE joh_cembra_update212_id2_sl_sample_utm; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update212_id2_sl_sample_utm TO rg_fem;


--
-- Name: TABLE joh_cembra_update212_id2_sl_sample_wgs; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update212_id2_sl_sample_wgs TO rg_fem;


--
-- Name: TABLE joh_cembra_update212_id8_sl_sample_temp1; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update212_id8_sl_sample_temp1 TO rg_fem;


--
-- Name: TABLE joh_cembra_update212_id8_sl_sample_temp2; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update212_id8_sl_sample_temp2 TO rg_fem;


--
-- Name: TABLE joh_cembra_update212_id8_sl_sample_utm; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update212_id8_sl_sample_utm TO rg_fem;


--
-- Name: TABLE joh_cembra_update212_id8_sl_sample_wgs; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update212_id8_sl_sample_wgs TO rg_fem;


--
-- Name: TABLE joh_cembra_update212_idlast_sl_sample_temp1; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update212_idlast_sl_sample_temp1 TO rg_fem;


--
-- Name: TABLE joh_cembra_update212_idlast_sl_sample_temp2; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update212_idlast_sl_sample_temp2 TO rg_fem;


--
-- Name: TABLE joh_cembra_update212_idlast_sl_sample_utm; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update212_idlast_sl_sample_utm TO rg_fem;


--
-- Name: TABLE joh_cembra_update212_idlast_sl_sample_wgs; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update212_idlast_sl_sample_wgs TO rg_fem;


--
-- Name: TABLE joh_cembra_update212_sl_sample_temp1; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update212_sl_sample_temp1 TO rg_fem;


--
-- Name: TABLE joh_cembra_update212_sl_sample_temp2; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update212_sl_sample_temp2 TO rg_fem;


--
-- Name: TABLE joh_cembra_update212_sl_sample_utm; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update212_sl_sample_utm TO rg_fem;


--
-- Name: TABLE joh_cembra_update212_sl_sample_wgs; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update212_sl_sample_wgs TO rg_fem;


--
-- Name: TABLE joh_cembra_update21_sl_sample_temp1; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update21_sl_sample_temp1 TO rg_fem;


--
-- Name: TABLE joh_cembra_update21_sl_sample_temp2; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update21_sl_sample_temp2 TO rg_fem;


--
-- Name: TABLE joh_cembra_update21_sl_sample_utm; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update21_sl_sample_utm TO rg_fem;


--
-- Name: TABLE joh_cembra_update21_sl_sample_wgs; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update21_sl_sample_wgs TO rg_fem;


--
-- Name: TABLE joh_cembra_update2_sl; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update2_sl TO rg_fem;


--
-- Name: TABLE joh_cembra_update2_sl_input_data; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update2_sl_input_data TO rg_fem;


--
-- Name: TABLE joh_cembra_update2_sl_original_data; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update2_sl_original_data TO rg_fem;


--
-- Name: TABLE joh_cembra_update2_sl_sample_temp1; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update2_sl_sample_temp1 TO rg_fem;


--
-- Name: TABLE joh_cembra_update2_sl_sample_temp2; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update2_sl_sample_temp2 TO rg_fem;


--
-- Name: TABLE joh_cembra_update2_sl_sample_utm; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update2_sl_sample_utm TO rg_fem;


--
-- Name: TABLE joh_cembra_update2_sl_sample_wgs; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update2_sl_sample_wgs TO rg_fem;


--
-- Name: TABLE joh_cembra_update2_sl_temp1; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update2_sl_temp1 TO rg_fem;


--
-- Name: TABLE joh_cembra_update2_sl_temp2; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update2_sl_temp2 TO rg_fem;


--
-- Name: TABLE joh_cembra_update_julius_minmax_sl; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update_julius_minmax_sl TO rg_fem;


--
-- Name: TABLE joh_cembra_update_minmax_sl; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update_minmax_sl TO rg_fem;


--
-- Name: TABLE joh_cembra_update_minmax_sl_all; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update_minmax_sl_all TO rg_fem;


--
-- Name: TABLE joh_cembra_update_minmax_sl_julius; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update_minmax_sl_julius TO rg_fem;


--
-- Name: TABLE joh_cembra_update_sl; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update_sl TO rg_fem;


--
-- Name: TABLE joh_cembra_update_sl_all; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update_sl_all TO rg_fem;


--
-- Name: TABLE joh_cembra_update_sl_all_final; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update_sl_all_final TO rg_fem;


--
-- Name: TABLE joh_cembra_update_sl_all_final_sample_temp1; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update_sl_all_final_sample_temp1 TO rg_fem;


--
-- Name: TABLE joh_cembra_update_sl_all_final_sample_temp2; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update_sl_all_final_sample_temp2 TO rg_fem;


--
-- Name: TABLE joh_cembra_update_sl_all_final_sample_utm; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update_sl_all_final_sample_utm TO rg_fem;


--
-- Name: TABLE joh_cembra_update_sl_all_final_sample_wgs; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update_sl_all_final_sample_wgs TO rg_fem;


--
-- Name: TABLE joh_cembra_update_sl_all_input_data; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update_sl_all_input_data TO rg_fem;


--
-- Name: TABLE joh_cembra_update_sl_all_original_data; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update_sl_all_original_data TO rg_fem;


--
-- Name: TABLE joh_cembra_update_sl_all_sample_utm; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update_sl_all_sample_utm TO rg_fem;


--
-- Name: TABLE joh_cembra_update_sl_all_sample_wgs; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update_sl_all_sample_wgs TO rg_fem;


--
-- Name: TABLE joh_cembra_update_sl_all_temp1; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update_sl_all_temp1 TO rg_fem;


--
-- Name: TABLE joh_cembra_update_sl_all_temp2; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update_sl_all_temp2 TO rg_fem;


--
-- Name: TABLE joh_cembra_update_sl_input_data; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update_sl_input_data TO rg_fem;


--
-- Name: TABLE joh_cembra_update_sl_julius; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update_sl_julius TO rg_fem;


--
-- Name: TABLE joh_cembra_update_sl_julius13_sample_temp1; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update_sl_julius13_sample_temp1 TO rg_fem;


--
-- Name: TABLE joh_cembra_update_sl_julius13_sample_temp2; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update_sl_julius13_sample_temp2 TO rg_fem;


--
-- Name: TABLE joh_cembra_update_sl_julius13_sample_utm; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update_sl_julius13_sample_utm TO rg_fem;


--
-- Name: TABLE joh_cembra_update_sl_julius13_sample_wgs; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update_sl_julius13_sample_wgs TO rg_fem;


--
-- Name: TABLE joh_cembra_update_sl_julius1_sample_temp1; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update_sl_julius1_sample_temp1 TO rg_fem;


--
-- Name: TABLE joh_cembra_update_sl_julius1_sample_temp2; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update_sl_julius1_sample_temp2 TO rg_fem;


--
-- Name: TABLE joh_cembra_update_sl_julius1_sample_utm; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update_sl_julius1_sample_utm TO rg_fem;


--
-- Name: TABLE joh_cembra_update_sl_julius1_sample_wgs; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update_sl_julius1_sample_wgs TO rg_fem;


--
-- Name: TABLE joh_cembra_update_sl_julius_all_input_data; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update_sl_julius_all_input_data TO rg_fem;


--
-- Name: TABLE joh_cembra_update_sl_julius_bracketssample_temp1; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update_sl_julius_bracketssample_temp1 TO rg_fem;


--
-- Name: TABLE joh_cembra_update_sl_julius_bracketssample_temp2; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update_sl_julius_bracketssample_temp2 TO rg_fem;


--
-- Name: TABLE joh_cembra_update_sl_julius_bracketssample_utm; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update_sl_julius_bracketssample_utm TO rg_fem;


--
-- Name: TABLE joh_cembra_update_sl_julius_bracketssample_wgs; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update_sl_julius_bracketssample_wgs TO rg_fem;


--
-- Name: TABLE joh_cembra_update_sl_julius_s13_sample_temp1; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update_sl_julius_s13_sample_temp1 TO rg_fem;


--
-- Name: TABLE joh_cembra_update_sl_julius_s13_sample_temp2; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update_sl_julius_s13_sample_temp2 TO rg_fem;


--
-- Name: TABLE joh_cembra_update_sl_julius_s13_sample_utm; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update_sl_julius_s13_sample_utm TO rg_fem;


--
-- Name: TABLE joh_cembra_update_sl_julius_s13_sample_wgs; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update_sl_julius_s13_sample_wgs TO rg_fem;


--
-- Name: TABLE joh_cembra_update_sl_julius_temp1; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update_sl_julius_temp1 TO rg_fem;


--
-- Name: TABLE joh_cembra_update_sl_julius_temp2; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update_sl_julius_temp2 TO rg_fem;


--
-- Name: TABLE joh_cembra_update_sl_original_data; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update_sl_original_data TO rg_fem;


--
-- Name: TABLE joh_cembra_update_sl_temp_sample_temp1; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update_sl_temp_sample_temp1 TO rg_fem;


--
-- Name: TABLE joh_cembra_update_sl_temp_sample_temp2; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update_sl_temp_sample_temp2 TO rg_fem;


--
-- Name: TABLE joh_cembra_update_sl_temp_sample_utm; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update_sl_temp_sample_utm TO rg_fem;


--
-- Name: TABLE joh_cembra_update_sl_temp_sample_wgs; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_update_sl_temp_sample_wgs TO rg_fem;


--
-- Name: TABLE joh_cembra_veg_camera_design; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_veg_camera_design TO rg_fem;


--
-- Name: TABLE joh_cembra_veg_camera_design_a; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_cembra_veg_camera_design_a TO rg_fem;


--
-- Name: TABLE joh_data_kernel; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_data_kernel TO rg_fem;


--
-- Name: TABLE joh_data_marco; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_data_marco TO rg_fem;


--
-- Name: TABLE joh_data_marco_period_a; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_data_marco_period_a TO rg_fem;


--
-- Name: TABLE joh_data_marco_period_a_random; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_data_marco_period_a_random TO rg_fem;


--
-- Name: TABLE joh_data_marco_period_ab; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_data_marco_period_ab TO rg_fem;


--
-- Name: TABLE joh_data_marco_period_ab2_random; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_data_marco_period_ab2_random TO rg_fem;


--
-- Name: TABLE joh_data_marco_period_ab_random; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_data_marco_period_ab_random TO rg_fem;


--
-- Name: TABLE joh_data_marco_period_b; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_data_marco_period_b TO rg_fem;


--
-- Name: TABLE joh_data_marco_period_b2_random; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_data_marco_period_b2_random TO rg_fem;


--
-- Name: TABLE joh_data_marco_period_b_random; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_data_marco_period_b_random TO rg_fem;


--
-- Name: TABLE joh_data_marco_summary; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_data_marco_summary TO rg_fem;


--
-- Name: TABLE joh_fran_maze_roe_ngs_behaviour; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_fran_maze_roe_ngs_behaviour TO rg_fem;


--
-- Name: TABLE joh_fran_maze_roe_ngs_behaviour_temp; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_fran_maze_roe_ngs_behaviour_temp TO rg_fem;


--
-- Name: TABLE joh_home_ranges_mcp; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_home_ranges_mcp TO rg_fem;


--
-- Name: TABLE joh_kernel_data; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_kernel_data TO rg_fem;


--
-- Name: TABLE joh_leiden; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_leiden TO rg_fem;


--
-- Name: TABLE joh_leiden2; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_leiden2 TO rg_fem;


--
-- Name: TABLE joh_leiden_f; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_leiden_f TO rg_fem;


--
-- Name: TABLE joh_leiden_f_add; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_leiden_f_add TO rg_fem;


--
-- Name: TABLE joh_leiden_f_add_filt; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_leiden_f_add_filt TO rg_fem;


--
-- Name: TABLE joh_leiden_f_mcp; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_leiden_f_mcp TO rg_fem;


--
-- Name: TABLE joh_leiden_f_mcp_month; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_leiden_f_mcp_month TO rg_fem;


--
-- Name: TABLE joh_leiden_f_traj; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_leiden_f_traj TO rg_fem;


--
-- Name: TABLE joh_leiden_f_traj_mv; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_leiden_f_traj_mv TO rg_fem;


--
-- Name: TABLE joh_lookup_ndvi_biweek; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_lookup_ndvi_biweek TO rg_fem;


--
-- Name: TABLE joh_patterns; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_patterns TO rg_fem;


--
-- Name: TABLE joh_patterns_fnf; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_patterns_fnf TO rg_fem;


--
-- Name: TABLE joh_patterns_fnf_codon; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_patterns_fnf_codon TO rg_fem;


--
-- Name: TABLE joh_raw_data_val_rendena; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_raw_data_val_rendena TO rg_fem;


--
-- Name: TABLE joh_raw_data_val_rendena2; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_raw_data_val_rendena2 TO rg_fem;


--
-- Name: TABLE joh_raw_data_val_rendena3; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_raw_data_val_rendena3 TO rg_fem;


--
-- Name: TABLE joh_regularized_12h_all_animals; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_regularized_12h_all_animals TO rg_fem;


--
-- Name: TABLE joh_regularized_1h_animals30; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_regularized_1h_animals30 TO rg_fem;


--
-- Name: TABLE joh_regularized_1h_data; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_regularized_1h_data TO rg_fem;


--
-- Name: TABLE joh_regularized_2h_animals30; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_regularized_2h_animals30 TO rg_fem;


--
-- Name: TABLE joh_regularized_2h_data; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_regularized_2h_data TO rg_fem;


--
-- Name: TABLE joh_regularized_3h_00_animals; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_regularized_3h_00_animals TO rg_fem;


--
-- Name: TABLE joh_regularized_3h_00_reddeer; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_regularized_3h_00_reddeer TO rg_fem;


--
-- Name: TABLE joh_regularized_3h_02_animals; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_regularized_3h_02_animals TO rg_fem;


--
-- Name: TABLE joh_regularized_3h_02_reddeer; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_regularized_3h_02_reddeer TO rg_fem;


--
-- Name: TABLE joh_regularized_4h_all_data; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_regularized_4h_all_data TO rg_fem;


--
-- Name: TABLE joh_regularized_4h_all_data2; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_regularized_4h_all_data2 TO rg_fem;


--
-- Name: TABLE joh_regularized_4h_all_data3; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_regularized_4h_all_data3 TO rg_fem;


--
-- Name: TABLE joh_regularized_4h_all_data_final; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_regularized_4h_all_data_final TO rg_fem;


--
-- Name: TABLE joh_regularized_4h_all_data_final_backup; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_regularized_4h_all_data_final_backup TO rg_fem;


--
-- Name: TABLE joh_regularized_4h_all_data_final_mcp_16days_biweek; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_regularized_4h_all_data_final_mcp_16days_biweek TO rg_fem;


--
-- Name: TABLE joh_regularized_4h_all_data_final_mcp_8days; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_regularized_4h_all_data_final_mcp_8days TO rg_fem;


--
-- Name: TABLE joh_regularized_4h_all_data_hunting_final; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_regularized_4h_all_data_hunting_final TO rg_fem;


--
-- Name: TABLE joh_regularized_4h_all_data_temp; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_regularized_4h_all_data_temp TO rg_fem;


--
-- Name: TABLE joh_regularized_4h_animals2; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_regularized_4h_animals2 TO rg_fem;


--
-- Name: TABLE joh_regularized_4h_data2; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_regularized_4h_data2 TO rg_fem;


--
-- Name: TABLE joh_regularized_4h_data_3h_00; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_regularized_4h_data_3h_00 TO rg_fem;


--
-- Name: TABLE joh_regularized_4h_data_3h_02; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_regularized_4h_data_3h_02 TO rg_fem;


--
-- Name: TABLE joh_regularized_4h_data_raw2; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_regularized_4h_data_raw2 TO rg_fem;


--
-- Name: TABLE joh_regularized_4h_reddeer; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_regularized_4h_reddeer TO rg_fem;


--
-- Name: TABLE joh_regularized_all_reddeer; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_regularized_all_reddeer TO rg_fem;


--
-- Name: TABLE joh_regularized_animals_general; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_regularized_animals_general TO rg_fem;


--
-- Name: TABLE joh_regularized_fifteen_animals; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_regularized_fifteen_animals TO rg_fem;


--
-- Name: TABLE joh_regularized_fifteen_data_final; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_regularized_fifteen_data_final TO rg_fem;


--
-- Name: TABLE joh_regularized_five_animals; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_regularized_five_animals TO rg_fem;


--
-- Name: TABLE joh_regularized_five_data; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_regularized_five_data TO rg_fem;


--
-- Name: TABLE joh_regularized_halfh_animals; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_regularized_halfh_animals TO rg_fem;


--
-- Name: TABLE joh_regularized_halfh_data; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_regularized_halfh_data TO rg_fem;


--
-- Name: TABLE joh_regularized_halfh_data2; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_regularized_halfh_data2 TO rg_fem;


--
-- Name: TABLE joh_subset; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_subset TO rg_fem;


--
-- Name: TABLE joh_subset2_temp2; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_subset2_temp2 TO rg_fem;


--
-- Name: TABLE joh_subset2_utm; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_subset2_utm TO rg_fem;


--
-- Name: TABLE joh_subset_temp1; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_subset_temp1 TO rg_fem;


--
-- Name: TABLE joh_time_bins_bool; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.joh_time_bins_bool TO rg_fem;


--
-- Name: TABLE koberg; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.koberg TO rg_fem;


--
-- Name: TABLE louis_analysis_dataset; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.louis_analysis_dataset TO nranc;


--
-- Name: TABLE louis_data_janfeb; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.louis_data_janfeb TO nranc;


--
-- Name: TABLE louis_feeding_sites; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.louis_feeding_sites TO nranc;


--
-- Name: TABLE louis_regularize; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.louis_regularize TO nranc;


--
-- Name: TABLE louis_regularize_summary; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.louis_regularize_summary TO nranc;


--
-- Name: TABLE louis_regularize_summary_extract; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.louis_regularize_summary_extract TO nranc;


--
-- Name: TABLE preliminary_stats; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.preliminary_stats TO rg_fem;


--
-- Name: TABLE rendena_view_trajectory; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.rendena_view_trajectory TO rg_fem;


--
-- Name: TABLE slope_trentino; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.slope_trentino TO rg_fem;


--
-- Name: TABLE temp_import_gpsdata_giudicarie_fede; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.temp_import_gpsdata_giudicarie_fede TO rg_fem;


--
-- Name: TABLE temp_import_gpsdata_guidicarie; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.temp_import_gpsdata_guidicarie TO rg_fem;


--
-- Name: TABLE temp_valrendena_vhf_data; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.temp_valrendena_vhf_data TO rg_fem;


--
-- Name: TABLE temp_valrendena_vhf_data2; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.temp_valrendena_vhf_data2 TO rg_fem;


--
-- Name: TABLE temp_valrendena_vhf_sensors; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.temp_valrendena_vhf_sensors TO rg_fem;


--
-- Name: TABLE temp_valrendena_vhf_sensors_animals; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.temp_valrendena_vhf_sensors_animals TO rg_fem;


--
-- Name: TABLE vegetation_fecal_sampling_temp; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.vegetation_fecal_sampling_temp TO rg_fem;


--
-- Name: TABLE vegetation_intensive_sampling_temp; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.vegetation_intensive_sampling_temp TO rg_fem;


--
-- Name: TABLE vegetation_plot; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.vegetation_plot TO rg_fem;


--
-- Name: TABLE vegetation_quadrant_sampling_temp; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.vegetation_quadrant_sampling_temp TO rg_fem;


--
-- Name: TABLE vegetation_shrub_sampling_temp; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.vegetation_shrub_sampling_temp TO rg_fem;


--
-- Name: TABLE view_gps_positions_fem; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.view_gps_positions_fem TO rg_fem;


--
-- Name: TABLE wibke_sweden_grim; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.wibke_sweden_grim TO rg_fem;


--
-- Name: TABLE view_locations_4h_calculation_test; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.view_locations_4h_calculation_test TO rg_fem;


--
-- Name: TABLE view_rendena_webgis; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.view_rendena_webgis TO rg_fem;


--
-- Name: TABLE view_rendena_webgis_geom; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.view_rendena_webgis_geom TO rg_fem;


--
-- Name: TABLE view_rendena_webgis_vhf; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.view_rendena_webgis_vhf TO rg_fem;


--
-- Name: TABLE view_temporary_importgps; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.view_temporary_importgps TO rg_fem;


--
-- Name: TABLE wibke_filter_table; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.wibke_filter_table TO rg_fem;


--
-- Name: TABLE wibke_fix_rates; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.wibke_fix_rates TO rg_fem;


--
-- Name: TABLE wibke_red_t2e; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.wibke_red_t2e TO rg_fem;


--
-- Name: TABLE wibke_roe_t2e; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.wibke_roe_t2e TO rg_fem;


--
-- Name: TABLE wp_final_vegetation_fecal_sampling; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.wp_final_vegetation_fecal_sampling TO rg_fem;


--
-- Name: TABLE wp_final_vegetation_intensive_sampling; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.wp_final_vegetation_intensive_sampling TO rg_fem;


--
-- Name: TABLE wp_final_vegetation_plot; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.wp_final_vegetation_plot TO rg_fem;


--
-- Name: TABLE wp_final_vegetation_quadrant_sampling; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.wp_final_vegetation_quadrant_sampling TO rg_fem;


--
-- Name: TABLE wp_final_vegetation_shrub_sampling; Type: ACL; Schema: ws_fem; Owner: -
--

GRANT SELECT ON TABLE ws_fem.wp_final_vegetation_shrub_sampling TO rg_fem;


--
-- Name: TABLE reddeer_activity_data; Type: ACL; Schema: ws_freiburg; Owner: -
--

GRANT ALL ON TABLE ws_freiburg.reddeer_activity_data TO data_curators_eurodeer;


--
-- Name: TABLE reddeer_animals; Type: ACL; Schema: ws_freiburg; Owner: -
--

GRANT ALL ON TABLE ws_freiburg.reddeer_animals TO data_curators_eurodeer;


--
-- Name: TABLE reddeer_gps_data; Type: ACL; Schema: ws_freiburg; Owner: -
--

GRANT ALL ON TABLE ws_freiburg.reddeer_gps_data TO data_curators_eurodeer;


--
-- Name: TABLE reddeer_gps_sensors; Type: ACL; Schema: ws_freiburg; Owner: -
--

GRANT ALL ON TABLE ws_freiburg.reddeer_gps_sensors TO data_curators_eurodeer;


--
-- Name: TABLE reddeer_gps_sensors_animals; Type: ACL; Schema: ws_freiburg; Owner: -
--

GRANT ALL ON TABLE ws_freiburg.reddeer_gps_sensors_animals TO data_curators_eurodeer;


--
-- Name: TABLE fecal_samples; Type: ACL; Schema: ws_ungulalps; Owner: -
--

GRANT ALL ON TABLE ws_ungulalps.fecal_samples TO acorradini;


--
-- Name: TABLE test; Type: ACL; Schema: ws_ungulalps; Owner: -
--

GRANT ALL ON TABLE ws_ungulalps.test TO acorradini;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: ws_fem; Owner: -
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA ws_fem GRANT SELECT ON TABLES  TO rg_fem;


--
-- PostgreSQL database dump complete
--

