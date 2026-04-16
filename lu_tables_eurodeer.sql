--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.2)
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
-- Name: lu_tables; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA lu_tables;


--
-- Name: SCHEMA lu_tables; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA lu_tables IS 'The schema "lu_tables" is where the look up tables (lu_tables) are stored. These tables store the list and the description of codes referenced by other tables in the database and are a kind of valid domain for specific fields.';


SET default_tablespace = '';

SET default_table_access_method = heap;

--

--
-- Name: lu_action; Type: TABLE; Schema: lu_tables; Owner: -
--

CREATE TABLE lu_tables.lu_action (
    action_code integer NOT NULL,
    action_description character varying
);


--
-- Name: TABLE lu_action; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON TABLE lu_tables.lu_action IS 'Look up table for action_code field (table tools.log_dbchanges): it specifies the meaning of the code used to identify the action (change) done to the daatbase).';


--
-- Name: COLUMN lu_action.action_code; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_action.action_code IS 'Code for the action (change done to the db).';


--
-- Name: COLUMN lu_action.action_description; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_action.action_description IS 'Desciption of action (change done to the db).';


--
-- Name: lu_action_action_code_seq; Type: SEQUENCE; Schema: lu_tables; Owner: -
--

CREATE SEQUENCE lu_tables.lu_action_action_code_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: lu_action_action_code_seq; Type: SEQUENCE OWNED BY; Schema: lu_tables; Owner: -
--

ALTER SEQUENCE lu_tables.lu_action_action_code_seq OWNED BY lu_tables.lu_action.action_code;


--
-- Name: lu_activity_sensor_mode; Type: TABLE; Schema: lu_tables; Owner: -
--

CREATE TABLE lu_tables.lu_activity_sensor_mode (
    activity_sensor_mode_code integer NOT NULL,
    activity_sensor_mode_description character varying
);


--
-- Name: lu_activity_validity; Type: TABLE; Schema: lu_tables; Owner: -
--

CREATE TABLE lu_tables.lu_activity_validity (
    activity_validity_code integer NOT NULL,
    activity_validity_description character varying
);


--
-- Name: TABLE lu_activity_validity; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON TABLE lu_tables.lu_activity_validity IS 'Look up table for activity data validity.';


--
-- Name: COLUMN lu_activity_validity.activity_validity_code; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_activity_validity.activity_validity_code IS 'Code of the activity data validity.';


--
-- Name: COLUMN lu_activity_validity.activity_validity_description; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_activity_validity.activity_validity_description IS 'Description of the activity data validity.';


--
-- Name: lu_age_class; Type: TABLE; Schema: lu_tables; Owner: -
--

CREATE TABLE lu_tables.lu_age_class (
    age_class_code integer NOT NULL,
    age_class_description character varying,
    age_class_comment character varying
);


--
-- Name: TABLE lu_age_class; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON TABLE lu_tables.lu_age_class IS 'Look up table for age_class_code field (table main.animals): it specifies the meaning of the code used to identify the age class of the roe deer).';


--
-- Name: COLUMN lu_age_class.age_class_code; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_age_class.age_class_code IS 'Code for the age class.';


--
-- Name: COLUMN lu_age_class.age_class_description; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_age_class.age_class_description IS 'Desciption of the age class.';


--
-- Name: COLUMN lu_age_class.age_class_comment; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_age_class.age_class_comment IS 'Description of the meaning of the age class.';


--
-- Name: lu_age_class_reddeer; Type: TABLE; Schema: lu_tables; Owner: -
--

CREATE TABLE lu_tables.lu_age_class_reddeer (
    age_class_code integer NOT NULL,
    age_class_description character varying,
    age_class_comment character varying
);


--
-- Name: TABLE lu_age_class_reddeer; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON TABLE lu_tables.lu_age_class_reddeer IS 'Look up table for age_class_code field (table main_reddeer.animals): it specifies the meaning of the code used to identify the age class of the red deer).';


--
-- Name: COLUMN lu_age_class_reddeer.age_class_code; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_age_class_reddeer.age_class_code IS 'Code for the age class.';


--
-- Name: COLUMN lu_age_class_reddeer.age_class_description; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_age_class_reddeer.age_class_description IS 'Desciption of the age class.';


--
-- Name: COLUMN lu_age_class_reddeer.age_class_comment; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_age_class_reddeer.age_class_comment IS 'Description of the meaning of the age class.';


--
-- Name: lu_behavior_handling; Type: TABLE; Schema: lu_tables; Owner: -
--

CREATE TABLE lu_tables.lu_behavior_handling (
    behavior_handling_code integer NOT NULL,
    behavior_handling_description character varying
);


--
-- Name: TABLE lu_behavior_handling; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON TABLE lu_tables.lu_behavior_handling IS 'Look up table for behavior_handling types.';


--
-- Name: COLUMN lu_behavior_handling.behavior_handling_code; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_behavior_handling.behavior_handling_code IS 'Code of the behavior during handling (capture event) type.';


--
-- Name: COLUMN lu_behavior_handling.behavior_handling_description; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_behavior_handling.behavior_handling_description IS 'Description of the behavior handling (capture event) type.';


--
-- Name: lu_behavior_release; Type: TABLE; Schema: lu_tables; Owner: -
--

CREATE TABLE lu_tables.lu_behavior_release (
    behavior_release_code integer NOT NULL,
    behavior_release_description character varying
);


--
-- Name: TABLE lu_behavior_release; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON TABLE lu_tables.lu_behavior_release IS 'Look up table for behavior_release types.';


--
-- Name: COLUMN lu_behavior_release.behavior_release_code; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_behavior_release.behavior_release_code IS 'Code of the behavior at release (during capture event) type.';


--
-- Name: COLUMN lu_behavior_release.behavior_release_description; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_behavior_release.behavior_release_description IS 'Description of the behavior at release (during capture event) type.';


--
-- Name: lu_capture_methods; Type: TABLE; Schema: lu_tables; Owner: -
--

CREATE TABLE lu_tables.lu_capture_methods (
    capture_methods_code integer NOT NULL,
    capture_methods_description character varying,
    capture_methods_note character varying
);


--
-- Name: TABLE lu_capture_methods; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON TABLE lu_tables.lu_capture_methods IS 'Look up table for capture_methods types.';


--
-- Name: COLUMN lu_capture_methods.capture_methods_code; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_capture_methods.capture_methods_code IS 'Code of the capture method.';


--
-- Name: COLUMN lu_capture_methods.capture_methods_description; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_capture_methods.capture_methods_description IS 'Description of the capture method.';


--
-- Name: COLUMN lu_capture_methods.capture_methods_note; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_capture_methods.capture_methods_note IS 'Additional notes on the capture method.';


--
-- Name: lu_capture_result; Type: TABLE; Schema: lu_tables; Owner: -
--

CREATE TABLE lu_tables.lu_capture_result (
    capture_result_code integer NOT NULL,
    capture_result_description character varying,
    capture_result_note character varying
);


--
-- Name: TABLE lu_capture_result; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON TABLE lu_tables.lu_capture_result IS 'Look up table for capture_result types (animals_captures table). Only animals that are monitored or that were captured to be monitored are included in the data base. This LU specifies the possible results of the capture.';


--
-- Name: COLUMN lu_capture_result.capture_result_code; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_capture_result.capture_result_code IS 'Code of the capture result.';


--
-- Name: COLUMN lu_capture_result.capture_result_description; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_capture_result.capture_result_description IS 'Description of the capture result.';


--
-- Name: COLUMN lu_capture_result.capture_result_note; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_capture_result.capture_result_note IS 'Additional notes on the capture result.';


--
-- Name: lu_carcass_validity_code; Type: TABLE; Schema: lu_tables; Owner: -
--

CREATE TABLE lu_tables.lu_carcass_validity_code (
    carcass_validity_code integer NOT NULL,
    carcass_validity_description character varying
);


--
-- Name: TABLE lu_carcass_validity_code; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON TABLE lu_tables.lu_carcass_validity_code IS 'Look up table for carcass location validity (table main.carcasses).';


--
-- Name: COLUMN lu_carcass_validity_code.carcass_validity_code; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_carcass_validity_code.carcass_validity_code IS 'Code of the carcass location validity.';


--
-- Name: COLUMN lu_carcass_validity_code.carcass_validity_description; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_carcass_validity_code.carcass_validity_description IS 'Desciption of the carcass location validity code.';



--
-- Name: lu_competitor_density; Type: TABLE; Schema: lu_tables; Owner: -
--

CREATE TABLE lu_tables.lu_competitor_density (
    competitor_density_code integer NOT NULL,
    competitor_density_description character varying,
    competitor_density_note character varying
);


--
-- Name: TABLE lu_competitor_density; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON TABLE lu_tables.lu_competitor_density IS 'Look up table for predators density types.';


--
-- Name: COLUMN lu_competitor_density.competitor_density_code; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_competitor_density.competitor_density_code IS 'Code of the density type.';


--
-- Name: COLUMN lu_competitor_density.competitor_density_description; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_competitor_density.competitor_density_description IS 'Description of the density type.';


--
-- Name: COLUMN lu_competitor_density.competitor_density_note; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_competitor_density.competitor_density_note IS 'Additional notes of the density type.';



--
-- Name: lu_contact_mode; Type: TABLE; Schema: lu_tables; Owner: -
--

CREATE TABLE lu_tables.lu_contact_mode (
    contact_mode_code integer NOT NULL,
    contact_mode_description character varying
);


--
-- Name: TABLE lu_contact_mode; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON TABLE lu_tables.lu_contact_mode IS 'Look up table for contact_mode_code field (table main.animals_contacts): it specifies the meaning of the code used to identify the contact_mode of the animal.';


--
-- Name: COLUMN lu_contact_mode.contact_mode_code; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_contact_mode.contact_mode_code IS 'Code for the type of contact with the animal.';


--
-- Name: COLUMN lu_contact_mode.contact_mode_description; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_contact_mode.contact_mode_description IS 'Desciption of the type of contact with the animal.';


--
-- Name: lu_data_curators; Type: TABLE; Schema: lu_tables; Owner: -
--

CREATE TABLE lu_tables.lu_data_curators (
    data_curators_code integer NOT NULL,
    data_curators_description character varying
);


--
-- Name: TABLE lu_data_curators; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON TABLE lu_tables.lu_data_curators IS 'Look up table for data_curators_code field (table tools.log_dbchanges): it specifies the meaning of the code used to identify the data curators.';


--
-- Name: COLUMN lu_data_curators.data_curators_code; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_data_curators.data_curators_code IS 'Code for the data_curators.';


--
-- Name: COLUMN lu_data_curators.data_curators_description; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_data_curators.data_curators_description IS 'Desciption of data_curators.';


--
-- Name: lu_data_curators_data_curators_code_seq; Type: SEQUENCE; Schema: lu_tables; Owner: -
--

CREATE SEQUENCE lu_tables.lu_data_curators_data_curators_code_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: lu_data_curators_data_curators_code_seq; Type: SEQUENCE OWNED BY; Schema: lu_tables; Owner: -
--

ALTER SEQUENCE lu_tables.lu_data_curators_data_curators_code_seq OWNED BY lu_tables.lu_data_curators.data_curators_code;


--
-- Name: lu_death_date_accuracy; Type: TABLE; Schema: lu_tables; Owner: -
--

CREATE TABLE lu_tables.lu_death_date_accuracy (
    death_date_accuracy_code integer NOT NULL,
    death_date_accuracy_description character varying,
    death_date_accuracy_comment character varying
);


--
-- Name: TABLE lu_death_date_accuracy; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON TABLE lu_tables.lu_death_date_accuracy IS 'Look up table for death_date_accuracy_code field (table main.carcasses): it describes how the sample has been recognized to be a wildcat based on the SCALP-Criteria published in Götz 2015.';


--
-- Name: COLUMN lu_death_date_accuracy.death_date_accuracy_code; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_death_date_accuracy.death_date_accuracy_code IS 'Code for the accuracy of the date of recovery of the carcass respect to the moment when the animal died.';


--
-- Name: COLUMN lu_death_date_accuracy.death_date_accuracy_description; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_death_date_accuracy.death_date_accuracy_description IS 'Desciption of the code that describes the accuracy of the date of recovery of the carcass.';


--
-- Name: COLUMN lu_death_date_accuracy.death_date_accuracy_comment; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_death_date_accuracy.death_date_accuracy_comment IS 'Meaning of the code that describes the accuracy of the date of recovery of the carcass.';


--
-- Name: lu_end_deployment; Type: TABLE; Schema: lu_tables; Owner: -
--

CREATE TABLE lu_tables.lu_end_deployment (
    end_deployment_code integer NOT NULL,
    end_deployment_description character varying,
    note text
);


--
-- Name: TABLE lu_end_deployment; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON TABLE lu_tables.lu_end_deployment IS 'Look up table for end_deployment_code field: it specifies the meaning of the code used to identify the reasons of the end of deployment.';


--
-- Name: COLUMN lu_end_deployment.end_deployment_code; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_end_deployment.end_deployment_code IS 'Code for the reason of the end of deployment.';


--
-- Name: COLUMN lu_end_deployment.end_deployment_description; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_end_deployment.end_deployment_description IS 'Desciption of the reason of the end of deployment.';


--
-- Name: lu_farming; Type: TABLE; Schema: lu_tables; Owner: -
--

CREATE TABLE lu_tables.lu_farming (
    farming_code integer NOT NULL,
    farming_description character varying
);


--
-- Name: TABLE lu_farming; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON TABLE lu_tables.lu_farming IS 'Look up table for farming types.';


--
-- Name: COLUMN lu_farming.farming_code; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_farming.farming_code IS 'Code of the farming type.';


--
-- Name: COLUMN lu_farming.farming_description; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_farming.farming_description IS 'Description of the farming type.';


--
-- Name: lu_forestry_work; Type: TABLE; Schema: lu_tables; Owner: -
--

CREATE TABLE lu_tables.lu_forestry_work (
    forestry_work_code integer NOT NULL,
    forestry_work_description character varying
);


--
-- Name: TABLE lu_forestry_work; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON TABLE lu_tables.lu_forestry_work IS 'Look up table for forestry work types.';


--
-- Name: COLUMN lu_forestry_work.forestry_work_code; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_forestry_work.forestry_work_code IS 'Code of the forestry work type.';


--
-- Name: COLUMN lu_forestry_work.forestry_work_description; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_forestry_work.forestry_work_description IS 'Description of the forestry work type.';


--
-- Name: lu_gps_validity; Type: TABLE; Schema: lu_tables; Owner: -
--

CREATE TABLE lu_tables.lu_gps_validity (
    gps_validity_code integer NOT NULL,
    gps_validity_description character varying
);


--
-- Name: TABLE lu_gps_validity; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON TABLE lu_tables.lu_gps_validity IS 'Look up table for GPS locations validity.';


--
-- Name: COLUMN lu_gps_validity.gps_validity_code; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_gps_validity.gps_validity_code IS 'Code of the GPS locations validity.';


--
-- Name: COLUMN lu_gps_validity.gps_validity_description; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_gps_validity.gps_validity_description IS 'Description of the GPS locations validity code.';


--
-- Name: lu_hunting_method; Type: TABLE; Schema: lu_tables; Owner: -
--

CREATE TABLE lu_tables.lu_hunting_method (
    hunting_method_code integer NOT NULL,
    hunting_method_description character varying
);


--
-- Name: TABLE lu_hunting_method; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON TABLE lu_tables.lu_hunting_method IS 'Look up table for hunting method types.';


--
-- Name: COLUMN lu_hunting_method.hunting_method_code; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_hunting_method.hunting_method_code IS 'Code of the hunting method type.';


--
-- Name: COLUMN lu_hunting_method.hunting_method_description; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_hunting_method.hunting_method_description IS 'Description of the hunting method type.';


--
-- Name: lu_mortality; Type: TABLE; Schema: lu_tables; Owner: -
--

CREATE TABLE lu_tables.lu_mortality (
    id bigint NOT NULL,
    mortality_code integer,
    mortality_name character varying,
    mortality_description character varying
);



--
-- Name: COLUMN lu_mortality.mortality_code; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_mortality.mortality_code IS 'The mortality code is the code create for a specific class of mortality';


--
-- Name: COLUMN lu_mortality.mortality_name; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_mortality.mortality_name IS 'The mortality name is the short description of mortality of animal';


--
-- Name: COLUMN lu_mortality.mortality_description; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_mortality.mortality_description IS 'The mortality description is the long description of mortality of animal';



--
-- Name: lu_predators_density; Type: TABLE; Schema: lu_tables; Owner: -
--

CREATE TABLE lu_tables.lu_predators_density (
    predators_density_code integer NOT NULL,
    predators_density_description character varying,
    predators_density_note character varying
);


--
-- Name: TABLE lu_predators_density; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON TABLE lu_tables.lu_predators_density IS 'Look up table for predators density types.';


--
-- Name: COLUMN lu_predators_density.predators_density_code; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_predators_density.predators_density_code IS 'Code of the predators density type.';


--
-- Name: COLUMN lu_predators_density.predators_density_description; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_predators_density.predators_density_description IS 'Description of the predators density type.';


--
-- Name: COLUMN lu_predators_density.predators_density_note; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_predators_density.predators_density_note IS 'Additional notes of the predators density type.';


--
-- Name: lu_release_type; Type: TABLE; Schema: lu_tables; Owner: -
--

CREATE TABLE lu_tables.lu_release_type (
    release_type_code integer NOT NULL,
    release_type_description character varying
);


--
-- Name: TABLE lu_release_type; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON TABLE lu_tables.lu_release_type IS 'Look up table for release_type_code field: it specifies how the animal has been released after capture.';


--
-- Name: COLUMN lu_release_type.release_type_code; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_release_type.release_type_code IS 'Code for the type of release.';


--
-- Name: COLUMN lu_release_type.release_type_description; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_release_type.release_type_description IS 'Desciption of the type of release.';


--
-- Name: lu_sampling_methods; Type: TABLE; Schema: lu_tables; Owner: -
--

CREATE TABLE lu_tables.lu_sampling_methods (
    sampling_methods_code integer NOT NULL,
    sampling_methods_description character varying
);


--
-- Name: TABLE lu_sampling_methods; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON TABLE lu_tables.lu_sampling_methods IS 'Look up table for sampling methods types.';


--
-- Name: COLUMN lu_sampling_methods.sampling_methods_code; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_sampling_methods.sampling_methods_code IS 'Code of the sampling methods type.';


--
-- Name: COLUMN lu_sampling_methods.sampling_methods_description; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_sampling_methods.sampling_methods_description IS 'Description of the sampling methods type.';


--
-- Name: lu_seasons; Type: TABLE; Schema: lu_tables; Owner: -
--

CREATE TABLE lu_tables.lu_seasons (
    seasons_code integer NOT NULL,
    seasons_description character varying
);


--
-- Name: TABLE lu_seasons; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON TABLE lu_tables.lu_seasons IS 'Seasons of the year.';


--
-- Name: COLUMN lu_seasons.seasons_code; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_seasons.seasons_code IS 'Code of the seasons type.';


--
-- Name: COLUMN lu_seasons.seasons_description; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_seasons.seasons_description IS 'Description of the seasons type.';



--
-- Name: lu_road_class; Type: TABLE; Schema: lu_tables; Owner: -
--

CREATE TABLE lu_tables.lu_road_class (
    road_class_code integer NOT NULL,
    road_class_description character varying,
    road_class_comment character varying
);


--
-- Name: TABLE lu_road_class; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON TABLE lu_tables.lu_road_class IS 'Look up table for road_class_code field (table main.carcasses): it describes the road class category (based on OpenStreetMaps) where the animal died.';


--
-- Name: COLUMN lu_road_class.road_class_code; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_road_class.road_class_code IS 'Code for the road class where the animal died.';


--
-- Name: COLUMN lu_road_class.road_class_description; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_road_class.road_class_description IS 'Desciption of the road class where the animal died.';


--
-- Name: COLUMN lu_road_class.road_class_comment; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_road_class.road_class_comment IS 'Characteristics of the road class where the animal died.';


--
-- Name: lu_road_fence; Type: TABLE; Schema: lu_tables; Owner: -
--

CREATE TABLE lu_tables.lu_road_fence (
    road_fence_code integer NOT NULL,
    road_fence_description character varying,
    road_fence_comment character varying
);


--
-- Name: TABLE lu_road_fence; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON TABLE lu_tables.lu_road_fence IS 'Look up table for road_fence_code field (table main.carcasses): it describes if the road where the animal died was fenced and with which type of fence.';


--
-- Name: COLUMN lu_road_fence.road_fence_code; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_road_fence.road_fence_code IS 'Code for the type of fence installed on the road where the animal died.';


--
-- Name: COLUMN lu_road_fence.road_fence_description; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_road_fence.road_fence_description IS 'Desciption of the type of fence installed on the road where the animal died.';


--
-- Name: COLUMN lu_road_fence.road_fence_comment; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_road_fence.road_fence_comment IS 'Characteristics of the type of fence installed on the road where the animal died.';


--
-- Name: lu_species_determination; Type: TABLE; Schema: lu_tables; Owner: -
--

CREATE TABLE lu_tables.lu_species_determination (
    species_determination_code integer NOT NULL,
    species_determination_description character varying,
    species_determination_comment character varying
);


--
-- Name: TABLE lu_species_determination; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON TABLE lu_tables.lu_species_determination IS 'Look up table for species_determination_code field (table main.carcasses): it describes when the animal died compared to the date of carcass recovering.';


--
-- Name: COLUMN lu_species_determination.species_determination_code; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_species_determination.species_determination_code IS 'Code for the method used for determining the species.';


--
-- Name: COLUMN lu_species_determination.species_determination_description; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_species_determination.species_determination_description IS 'Desciption of the method used for determining the species.';


--
-- Name: COLUMN lu_species_determination.species_determination_comment; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_species_determination.species_determination_comment IS 'Meaning of the method used for determining the species.';


--
-- Name: lu_species_determination_methods; Type: TABLE; Schema: lu_tables; Owner: -
--

CREATE TABLE lu_tables.lu_species_determination_methods (
    species_determination_methods_code integer NOT NULL,
    species_determination_methods_description text,
    species_determination_methods_comment text
);


--
-- Name: COLUMN lu_species_determination_methods.species_determination_methods_code; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_species_determination_methods.species_determination_methods_code IS 'Code for the method used for determining the species.';


--
-- Name: COLUMN lu_species_determination_methods.species_determination_methods_description; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_species_determination_methods.species_determination_methods_description IS 'Desciption of the method used for determining the species.';


--
-- Name: COLUMN lu_species_determination_methods.species_determination_methods_comment; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_species_determination_methods.species_determination_methods_comment IS 'Meaning of the method used for determining the species.';


--
-- Name: lu_species_determination_meth_species_determination_methods_seq; Type: SEQUENCE; Schema: lu_tables; Owner: -
--

CREATE SEQUENCE lu_tables.lu_species_determination_meth_species_determination_methods_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: lu_species_determination_meth_species_determination_methods_seq; Type: SEQUENCE OWNED BY; Schema: lu_tables; Owner: -
--

ALTER SEQUENCE lu_tables.lu_species_determination_meth_species_determination_methods_seq OWNED BY lu_tables.lu_species_determination_methods.species_determination_methods_code;


--
-- Name: lu_vhf_validity; Type: TABLE; Schema: lu_tables; Owner: -
--

CREATE TABLE lu_tables.lu_vhf_validity (
    vhf_validity_code integer NOT NULL,
    vhf_validity_description character varying
);


--
-- Name: TABLE lu_vhf_validity; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON TABLE lu_tables.lu_vhf_validity IS 'Look up table for vhf locations source and validity.';


--
-- Name: COLUMN lu_vhf_validity.vhf_validity_code; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_vhf_validity.vhf_validity_code IS 'Code of the vhf locations validity.';


--
-- Name: COLUMN lu_vhf_validity.vhf_validity_description; Type: COMMENT; Schema: lu_tables; Owner: -
--

COMMENT ON COLUMN lu_tables.lu_vhf_validity.vhf_validity_description IS 'Description of the vhf locations validity and source code.';


--
-- Name: lu_action action_code; Type: DEFAULT; Schema: lu_tables; Owner: -
--

ALTER TABLE ONLY lu_tables.lu_action ALTER COLUMN action_code SET DEFAULT nextval('lu_tables.lu_action_action_code_seq'::regclass);


--
-- Name: lu_data_curators data_curators_code; Type: DEFAULT; Schema: lu_tables; Owner: -
--

ALTER TABLE ONLY lu_tables.lu_data_curators ALTER COLUMN data_curators_code SET DEFAULT nextval('lu_tables.lu_data_curators_data_curators_code_seq'::regclass);


--
-- Name: lu_action lu_action_pk; Type: CONSTRAINT; Schema: lu_tables; Owner: -
--

ALTER TABLE ONLY lu_tables.lu_action
    ADD CONSTRAINT lu_action_pk PRIMARY KEY (action_code);


--
-- Name: lu_activity_sensor_mode lu_activity_sensor_mode_pk; Type: CONSTRAINT; Schema: lu_tables; Owner: -
--

ALTER TABLE ONLY lu_tables.lu_activity_sensor_mode
    ADD CONSTRAINT lu_activity_sensor_mode_pk PRIMARY KEY (activity_sensor_mode_code);


--
-- Name: lu_activity_validity lu_activity_validity_pk; Type: CONSTRAINT; Schema: lu_tables; Owner: -
--

ALTER TABLE ONLY lu_tables.lu_activity_validity
    ADD CONSTRAINT lu_activity_validity_pk PRIMARY KEY (activity_validity_code);


--
-- Name: lu_age_class lu_age_class_pk; Type: CONSTRAINT; Schema: lu_tables; Owner: -
--

ALTER TABLE ONLY lu_tables.lu_age_class
    ADD CONSTRAINT lu_age_class_pk PRIMARY KEY (age_class_code);


--
-- Name: lu_age_class_reddeer lu_age_class_reddeer_pk; Type: CONSTRAINT; Schema: lu_tables; Owner: -
--

ALTER TABLE ONLY lu_tables.lu_age_class_reddeer
    ADD CONSTRAINT lu_age_class_reddeer_pk PRIMARY KEY (age_class_code);


--
-- Name: lu_behavior_handling lu_behavior_handling_pk; Type: CONSTRAINT; Schema: lu_tables; Owner: -
--

ALTER TABLE ONLY lu_tables.lu_behavior_handling
    ADD CONSTRAINT lu_behavior_handling_pk PRIMARY KEY (behavior_handling_code);


--
-- Name: lu_behavior_release lu_behavior_release_pk; Type: CONSTRAINT; Schema: lu_tables; Owner: -
--

ALTER TABLE ONLY lu_tables.lu_behavior_release
    ADD CONSTRAINT lu_behavior_release_pk PRIMARY KEY (behavior_release_code);


--
-- Name: lu_capture_methods lu_capture_methods_pk; Type: CONSTRAINT; Schema: lu_tables; Owner: -
--

ALTER TABLE ONLY lu_tables.lu_capture_methods
    ADD CONSTRAINT lu_capture_methods_pk PRIMARY KEY (capture_methods_code);


--
-- Name: lu_capture_result lu_capture_result_pk; Type: CONSTRAINT; Schema: lu_tables; Owner: -
--

ALTER TABLE ONLY lu_tables.lu_capture_result
    ADD CONSTRAINT lu_capture_result_pk PRIMARY KEY (capture_result_code);


--
-- Name: lu_contact_mode lu_contact_mode_pk; Type: CONSTRAINT; Schema: lu_tables; Owner: -
--

ALTER TABLE ONLY lu_tables.lu_contact_mode
    ADD CONSTRAINT lu_contact_mode_pk PRIMARY KEY (contact_mode_code);


--
-- Name: lu_data_curators lu_data_curators_pk; Type: CONSTRAINT; Schema: lu_tables; Owner: -
--

ALTER TABLE ONLY lu_tables.lu_data_curators
    ADD CONSTRAINT lu_data_curators_pk PRIMARY KEY (data_curators_code);


--
-- Name: lu_competitor_density lu_density_pk; Type: CONSTRAINT; Schema: lu_tables; Owner: -
--

ALTER TABLE ONLY lu_tables.lu_competitor_density
    ADD CONSTRAINT lu_density_pk PRIMARY KEY (competitor_density_code);


--
-- Name: lu_end_deployment lu_end_gps_deployment_pk; Type: CONSTRAINT; Schema: lu_tables; Owner: -
--

ALTER TABLE ONLY lu_tables.lu_end_deployment
    ADD CONSTRAINT lu_end_gps_deployment_pk PRIMARY KEY (end_deployment_code);


--
-- Name: lu_farming lu_farming_pk; Type: CONSTRAINT; Schema: lu_tables; Owner: -
--

ALTER TABLE ONLY lu_tables.lu_farming
    ADD CONSTRAINT lu_farming_pk PRIMARY KEY (farming_code);


--
-- Name: lu_forestry_work lu_forestry_work_pk; Type: CONSTRAINT; Schema: lu_tables; Owner: -
--

ALTER TABLE ONLY lu_tables.lu_forestry_work
    ADD CONSTRAINT lu_forestry_work_pk PRIMARY KEY (forestry_work_code);


--
-- Name: lu_gps_validity lu_gps_validity_pk; Type: CONSTRAINT; Schema: lu_tables; Owner: -
--

ALTER TABLE ONLY lu_tables.lu_gps_validity
    ADD CONSTRAINT lu_gps_validity_pk PRIMARY KEY (gps_validity_code);


--
-- Name: lu_hunting_method lu_hunting_method_pk; Type: CONSTRAINT; Schema: lu_tables; Owner: -
--

ALTER TABLE ONLY lu_tables.lu_hunting_method
    ADD CONSTRAINT lu_hunting_method_pk PRIMARY KEY (hunting_method_code);


--
-- Name: lu_mortality lu_mortality_pkey; Type: CONSTRAINT; Schema: lu_tables; Owner: -
--

ALTER TABLE ONLY lu_tables.lu_mortality
    ADD CONSTRAINT lu_mortality_pkey PRIMARY KEY (mortality_code);


--
-- Name: lu_predators_density lu_predators_density_pk; Type: CONSTRAINT; Schema: lu_tables; Owner: -
--

ALTER TABLE ONLY lu_tables.lu_predators_density
    ADD CONSTRAINT lu_predators_density_pk PRIMARY KEY (predators_density_code);


--
-- Name: lu_release_type lu_release_type_pk; Type: CONSTRAINT; Schema: lu_tables; Owner: -
--

ALTER TABLE ONLY lu_tables.lu_release_type
    ADD CONSTRAINT lu_release_type_pk PRIMARY KEY (release_type_code);


--
-- Name: lu_sampling_methods lu_sampling_methods_pk; Type: CONSTRAINT; Schema: lu_tables; Owner: -
--

ALTER TABLE ONLY lu_tables.lu_sampling_methods
    ADD CONSTRAINT lu_sampling_methods_pk PRIMARY KEY (sampling_methods_code);


--
-- Name: lu_seasons lu_seasons_pk; Type: CONSTRAINT; Schema: lu_tables; Owner: -
--

ALTER TABLE ONLY lu_tables.lu_seasons
    ADD CONSTRAINT lu_seasons_pk PRIMARY KEY (seasons_code);


--
-- Name: lu_road_class lu_road_class_pk; Type: CONSTRAINT; Schema: lu_tables; Owner: -
--

ALTER TABLE ONLY lu_tables.lu_road_class
    ADD CONSTRAINT lu_road_class_pk PRIMARY KEY (road_class_code);


--
-- Name: lu_road_fence lu_road_fence_pk; Type: CONSTRAINT; Schema: lu_tables; Owner: -
--

ALTER TABLE ONLY lu_tables.lu_road_fence
    ADD CONSTRAINT lu_road_fence_pk PRIMARY KEY (road_fence_code);


--
-- Name: lu_species_determination_methods lu_species_determination_methods_pkey; Type: CONSTRAINT; Schema: lu_tables; Owner: -
--

ALTER TABLE ONLY lu_tables.lu_species_determination_methods
    ADD CONSTRAINT lu_species_determination_methods_pkey PRIMARY KEY (species_determination_methods_code);


--
-- Name: lu_species_determination lu_species_determination_pk; Type: CONSTRAINT; Schema: lu_tables; Owner: -
--

ALTER TABLE ONLY lu_tables.lu_species_determination
    ADD CONSTRAINT lu_species_determination_pk PRIMARY KEY (species_determination_code);


--
-- Name: lu_vhf_validity lu_vhf_validity_pk; Type: CONSTRAINT; Schema: lu_tables; Owner: -
--

ALTER TABLE ONLY lu_tables.lu_vhf_validity
    ADD CONSTRAINT lu_vhf_validity_pk PRIMARY KEY (vhf_validity_code);


--
-- Name: SCHEMA lu_tables; Type: ACL; Schema: -; Owner: -
--

GRANT USAGE ON SCHEMA lu_tables TO eurodeer_users;
GRANT USAGE ON SCHEMA lu_tables TO data_curators_eurodeer;


--
-- Name: TABLE lu_action; Type: ACL; Schema: lu_tables; Owner: -
--

GRANT ALL ON TABLE lu_tables.lu_action TO data_curators_eurodeer;
GRANT SELECT ON TABLE lu_tables.lu_action TO eurodeer_users;


--
-- Name: TABLE lu_activity_sensor_mode; Type: ACL; Schema: lu_tables; Owner: -
--

GRANT SELECT ON TABLE lu_tables.lu_activity_sensor_mode TO eurodeer_users;
GRANT ALL ON TABLE lu_tables.lu_activity_sensor_mode TO data_curators_eurodeer;


--
-- Name: TABLE lu_activity_validity; Type: ACL; Schema: lu_tables; Owner: -
--

GRANT SELECT ON TABLE lu_tables.lu_activity_validity TO eurodeer_users;
GRANT ALL ON TABLE lu_tables.lu_activity_validity TO data_curators_eurodeer;


--
-- Name: TABLE lu_age_class; Type: ACL; Schema: lu_tables; Owner: -
--

GRANT SELECT ON TABLE lu_tables.lu_age_class TO eurodeer_users;
GRANT ALL ON TABLE lu_tables.lu_age_class TO data_curators_eurodeer;


--
-- Name: TABLE lu_age_class_reddeer; Type: ACL; Schema: lu_tables; Owner: -
--

GRANT SELECT ON TABLE lu_tables.lu_age_class_reddeer TO eurodeer_users;
GRANT ALL ON TABLE lu_tables.lu_age_class_reddeer TO data_curators_eurodeer;


--
-- Name: TABLE lu_behavior_handling; Type: ACL; Schema: lu_tables; Owner: -
--

GRANT SELECT ON TABLE lu_tables.lu_behavior_handling TO eurodeer_users;
GRANT ALL ON TABLE lu_tables.lu_behavior_handling TO data_curators_eurodeer;


--
-- Name: TABLE lu_behavior_release; Type: ACL; Schema: lu_tables; Owner: -
--

GRANT SELECT ON TABLE lu_tables.lu_behavior_release TO eurodeer_users;
GRANT ALL ON TABLE lu_tables.lu_behavior_release TO data_curators_eurodeer;


--
-- Name: TABLE lu_capture_methods; Type: ACL; Schema: lu_tables; Owner: -
--

GRANT SELECT ON TABLE lu_tables.lu_capture_methods TO eurodeer_users;
GRANT ALL ON TABLE lu_tables.lu_capture_methods TO data_curators_eurodeer;


--
-- Name: TABLE lu_capture_result; Type: ACL; Schema: lu_tables; Owner: -
--

GRANT ALL ON TABLE lu_tables.lu_capture_result TO data_curators_eurodeer;
GRANT SELECT ON TABLE lu_tables.lu_capture_result TO eurodeer_users;


--
-- Name: TABLE lu_competitor_density; Type: ACL; Schema: lu_tables; Owner: -
--

GRANT SELECT ON TABLE lu_tables.lu_competitor_density TO eurodeer_users;
GRANT ALL ON TABLE lu_tables.lu_competitor_density TO data_curators_eurodeer;


--
-- Name: TABLE lu_contact_mode; Type: ACL; Schema: lu_tables; Owner: -
--

GRANT ALL ON TABLE lu_tables.lu_contact_mode TO data_curators_eurodeer;
GRANT SELECT ON TABLE lu_tables.lu_contact_mode TO eurodeer_users;


--
-- Name: TABLE lu_data_curators; Type: ACL; Schema: lu_tables; Owner: -
--

GRANT ALL ON TABLE lu_tables.lu_data_curators TO data_curators_eurodeer;
GRANT SELECT ON TABLE lu_tables.lu_data_curators TO eurodeer_users;


--
-- Name: TABLE lu_death_date_accuracy; Type: ACL; Schema: lu_tables; Owner: -
--

GRANT SELECT ON TABLE lu_tables.lu_death_date_accuracy TO eurodeer_users;
GRANT ALL ON TABLE lu_tables.lu_death_date_accuracy TO data_curators_eurodeer;


--
-- Name: TABLE lu_end_deployment; Type: ACL; Schema: lu_tables; Owner: -
--

GRANT SELECT ON TABLE lu_tables.lu_end_deployment TO eurodeer_users;
GRANT ALL ON TABLE lu_tables.lu_end_deployment TO data_curators_eurodeer;


--
-- Name: TABLE lu_farming; Type: ACL; Schema: lu_tables; Owner: -
--

GRANT SELECT ON TABLE lu_tables.lu_farming TO eurodeer_users;
GRANT ALL ON TABLE lu_tables.lu_farming TO data_curators_eurodeer;


--
-- Name: TABLE lu_forestry_work; Type: ACL; Schema: lu_tables; Owner: -
--

GRANT SELECT ON TABLE lu_tables.lu_forestry_work TO eurodeer_users;
GRANT ALL ON TABLE lu_tables.lu_forestry_work TO data_curators_eurodeer;


--
-- Name: TABLE lu_gps_validity; Type: ACL; Schema: lu_tables; Owner: -
--

GRANT SELECT ON TABLE lu_tables.lu_gps_validity TO eurodeer_users;
GRANT ALL ON TABLE lu_tables.lu_gps_validity TO data_curators_eurodeer;


--
-- Name: TABLE lu_hunting_method; Type: ACL; Schema: lu_tables; Owner: -
--

GRANT SELECT ON TABLE lu_tables.lu_hunting_method TO eurodeer_users;
GRANT ALL ON TABLE lu_tables.lu_hunting_method TO data_curators_eurodeer;


--
-- Name: TABLE lu_mortality; Type: ACL; Schema: lu_tables; Owner: -
--

GRANT ALL ON TABLE lu_tables.lu_mortality TO data_curators_eurodeer;
GRANT SELECT ON TABLE lu_tables.lu_mortality TO eurodeer_users;
GRANT ALL ON TABLE lu_tables.lu_mortality TO postgres;


--
-- Name: TABLE lu_predators_density; Type: ACL; Schema: lu_tables; Owner: -
--

GRANT SELECT ON TABLE lu_tables.lu_predators_density TO eurodeer_users;
GRANT ALL ON TABLE lu_tables.lu_predators_density TO data_curators_eurodeer;


--
-- Name: TABLE lu_release_type; Type: ACL; Schema: lu_tables; Owner: -
--

GRANT ALL ON TABLE lu_tables.lu_release_type TO data_curators_eurodeer;
GRANT SELECT ON TABLE lu_tables.lu_release_type TO eurodeer_users;


--
-- Name: TABLE lu_road_class; Type: ACL; Schema: lu_tables; Owner: -
--

GRANT SELECT ON TABLE lu_tables.lu_road_class TO eurodeer_users;
GRANT ALL ON TABLE lu_tables.lu_road_class TO data_curators_eurodeer;


--
-- Name: TABLE lu_road_fence; Type: ACL; Schema: lu_tables; Owner: -
--

GRANT SELECT ON TABLE lu_tables.lu_road_fence TO eurodeer_users;
GRANT ALL ON TABLE lu_tables.lu_road_fence TO data_curators_eurodeer;


--
-- Name: TABLE lu_species_determination; Type: ACL; Schema: lu_tables; Owner: -
--

GRANT SELECT ON TABLE lu_tables.lu_species_determination TO eurodeer_users;
GRANT ALL ON TABLE lu_tables.lu_species_determination TO data_curators_eurodeer;



--
-- Name: TABLE lu_sampling_methods; Type: ACL; Schema: lu_tables; Owner: -
--

GRANT SELECT ON TABLE lu_tables.lu_sampling_methods TO eurodeer_users;
GRANT ALL ON TABLE lu_tables.lu_sampling_methods TO data_curators_eurodeer;


--
-- Name: TABLE lu_seasons; Type: ACL; Schema: lu_tables; Owner: -
--

GRANT SELECT ON TABLE lu_tables.lu_seasons TO eurodeer_users;
GRANT ALL ON TABLE lu_tables.lu_seasons TO data_curators_eurodeer;


--
-- Name: TABLE lu_vhf_validity; Type: ACL; Schema: lu_tables; Owner: -
--

GRANT SELECT ON TABLE lu_tables.lu_vhf_validity TO eurodeer_users;
GRANT ALL ON TABLE lu_tables.lu_vhf_validity TO data_curators_eurodeer;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: lu_tables; Owner: -
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA lu_tables GRANT SELECT ON TABLES  TO data_curators_eurodeer;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA lu_tables GRANT SELECT ON TABLES  TO eurodeer_users;


GRANT USAGE ON SCHEMA lu_tables TO eurowildcat_users;
GRANT USAGE ON SCHEMA lu_tables TO data_curators_eurowildcat;


--
-- Name: TABLE lu_age_class; Type: ACL; Schema: lu_tables; Owner: -
--

GRANT SELECT ON TABLE lu_tables.lu_age_class TO eurowildcat_users;
GRANT ALL ON TABLE lu_tables.lu_age_class TO data_curators_eurowildcat;


--
-- Name: TABLE lu_behavior_handling; Type: ACL; Schema: lu_tables; Owner: -
--

GRANT SELECT ON TABLE lu_tables.lu_behavior_handling TO eurowildcat_users;
GRANT ALL ON TABLE lu_tables.lu_behavior_handling TO data_curators_eurowildcat;


--
-- Name: TABLE lu_behavior_release; Type: ACL; Schema: lu_tables; Owner: -
--

GRANT SELECT ON TABLE lu_tables.lu_behavior_release TO eurowildcat_users;
GRANT ALL ON TABLE lu_tables.lu_behavior_release TO data_curators_eurowildcat;


--
-- Name: TABLE lu_capture_methods; Type: ACL; Schema: lu_tables; Owner: -
--

GRANT SELECT ON TABLE lu_tables.lu_capture_methods TO eurowildcat_users;
GRANT ALL ON TABLE lu_tables.lu_capture_methods TO data_curators_eurowildcat;


--
-- Name: TABLE lu_capture_result; Type: ACL; Schema: lu_tables; Owner: -
--

GRANT ALL ON TABLE lu_tables.lu_capture_result TO data_curators_eurowildcat;
GRANT SELECT ON TABLE lu_tables.lu_capture_result TO eurowildcat_users;


--
-- Name: TABLE lu_carcass_validity_code; Type: ACL; Schema: lu_tables; Owner: -
--

GRANT SELECT ON TABLE lu_tables.lu_carcass_validity_code TO eurowildcat_users;
GRANT ALL ON TABLE lu_tables.lu_carcass_validity_code TO data_curators_eurowildcat;


--
-- Name: TABLE lu_contact_mode; Type: ACL; Schema: lu_tables; Owner: -
--

GRANT ALL ON TABLE lu_tables.lu_contact_mode TO data_curators_eurowildcat;
GRANT SELECT ON TABLE lu_tables.lu_contact_mode TO eurowildcat_users;


--
-- Name: TABLE lu_death_date_accuracy; Type: ACL; Schema: lu_tables; Owner: -
--

GRANT SELECT ON TABLE lu_tables.lu_death_date_accuracy TO eurowildcat_users;
GRANT ALL ON TABLE lu_tables.lu_death_date_accuracy TO data_curators_eurowildcat;


--
-- Name: TABLE lu_end_deployment; Type: ACL; Schema: lu_tables; Owner: -
--

GRANT SELECT ON TABLE lu_tables.lu_end_deployment TO eurowildcat_users;
GRANT ALL ON TABLE lu_tables.lu_end_deployment TO data_curators_eurowildcat;


--
-- Name: TABLE lu_gps_validity; Type: ACL; Schema: lu_tables; Owner: -
--

GRANT SELECT ON TABLE lu_tables.lu_gps_validity TO eurowildcat_users;
GRANT ALL ON TABLE lu_tables.lu_gps_validity TO data_curators_eurowildcat;


--
-- Name: TABLE lu_mortality; Type: ACL; Schema: lu_tables; Owner: -
--

GRANT ALL ON TABLE lu_tables.lu_mortality TO data_curators_eurowildcat;


--
-- Name: TABLE lu_release_type; Type: ACL; Schema: lu_tables; Owner: -
--

GRANT ALL ON TABLE lu_tables.lu_release_type TO data_curators_eurowildcat;
GRANT SELECT ON TABLE lu_tables.lu_release_type TO eurowildcat_users;


--
-- Name: TABLE lu_road_class; Type: ACL; Schema: lu_tables; Owner: -
--

GRANT SELECT ON TABLE lu_tables.lu_road_class TO eurowildcat_users;
GRANT ALL ON TABLE lu_tables.lu_road_class TO data_curators_eurowildcat;


--
-- Name: TABLE lu_road_fence; Type: ACL; Schema: lu_tables; Owner: -
--

GRANT SELECT ON TABLE lu_tables.lu_road_fence TO eurowildcat_users;
GRANT ALL ON TABLE lu_tables.lu_road_fence TO data_curators_eurowildcat;


--
-- Name: TABLE lu_species_determination; Type: ACL; Schema: lu_tables; Owner: -
--

GRANT SELECT ON TABLE lu_tables.lu_species_determination TO eurowildcat_users;
GRANT ALL ON TABLE lu_tables.lu_species_determination TO data_curators_eurowildcat;


--
-- Name: TABLE lu_species_determination_methods; Type: ACL; Schema: lu_tables; Owner: -
--

GRANT SELECT,INSERT ON TABLE lu_tables.lu_species_determination_methods TO mbastianelli;
GRANT ALL ON TABLE lu_tables.lu_species_determination_methods TO data_curators_eurowildcat;
GRANT SELECT ON TABLE lu_tables.lu_species_determination_methods TO eurowildcat_users;


--
-- Name: TABLE lu_vhf_validity; Type: ACL; Schema: lu_tables; Owner: -
--

GRANT SELECT ON TABLE lu_tables.lu_vhf_validity TO eurowildcat_users;
GRANT ALL ON TABLE lu_tables.lu_vhf_validity TO data_curators_eurowildcat;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: lu_tables; Owner: -
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA lu_tables GRANT SELECT ON TABLES  TO data_curators_eurowildcat;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA lu_tables GRANT SELECT ON TABLES  TO eurowildcat_users;


--
-- PostgreSQL database dump complete
--

