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

