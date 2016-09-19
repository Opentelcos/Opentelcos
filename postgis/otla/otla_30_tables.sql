--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

-- Started on 2016-09-15 12:03:51

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 11 (class 2615 OID 22701)
-- Name: otla; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA otla;


ALTER SCHEMA otla OWNER TO postgres;

SET search_path = otla, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 209 (class 1259 OID 22704)
-- Name: t_regionsreforme; Type: TABLE; Schema: otla; Owner: postgres
--

CREATE TABLE t_regionsreforme (
    gid integer NOT NULL,
    name character varying(80),
    geom public.geometry(MultiPolygon,2154)
);


ALTER TABLE t_regionsreforme OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 22702)
-- Name: t_regionsreforme_gid_seq; Type: SEQUENCE; Schema: otla; Owner: postgres
--

CREATE SEQUENCE "t_regionsreforme_gid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "t_regionsreforme_gid_seq" OWNER TO postgres;

--
-- TOC entry 3468 (class 0 OID 0)
-- Dependencies: 208
-- Name: t_regionsreforme_gid_seq; Type: SEQUENCE OWNED BY; Schema: otla; Owner: postgres
--

ALTER SEQUENCE "t_regionsreforme_gid_seq" OWNED BY t_regionsreforme.gid;


--
-- TOC entry 217 (class 1259 OID 50853)
-- Name: t_regions; Type: TABLE; Schema: otla; Owner: postgres
--

CREATE TABLE t_regions (
    gid integer NOT NULL,
    code_insee character varying(80),
    nom character varying(80),
    nom_cl character varying(80),
    insee_cl character varying(80),
    nuts2 character varying(80),
    iso3166_2 character varying(80),
    wikipedia character varying(80),
    nb_dep numeric(10,0),
    nb_comm numeric(10,0),
    surf_km2 numeric,
    geom public.geometry(MultiPolygon,2154)
);


ALTER TABLE t_regions OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 50851)
-- Name: t_regions_gid_seq; Type: SEQUENCE; Schema: otla; Owner: postgres
--

CREATE SEQUENCE "t_regions_gid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "t_regions_gid_seq" OWNER TO postgres;

--
-- TOC entry 3469 (class 0 OID 0)
-- Dependencies: 216
-- Name: t_regions_gid_seq; Type: SEQUENCE OWNED BY; Schema: otla; Owner: postgres
--

ALTER SEQUENCE "t_regions_gid_seq" OWNED BY t_regions.gid;


--
-- TOC entry 211 (class 1259 OID 22740)
-- Name: t_communes; Type: TABLE; Schema: otla; Owner: postgres
--

CREATE TABLE t_communes (
    gid integer NOT NULL,
    insee character varying(80),
    nom character varying(80),
    wikipedia character varying(80),
    surf_ha numeric,
    geom public.geometry(MultiPolygon,2154)
);


ALTER TABLE t_communes OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 22738)
-- Name: t_communes_gid_seq; Type: SEQUENCE; Schema: otla; Owner: postgres
--

CREATE SEQUENCE t_communes_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE t_communes_gid_seq OWNER TO postgres;

--
-- TOC entry 3470 (class 0 OID 0)
-- Dependencies: 210
-- Name: t_communes_gid_seq; Type: SEQUENCE OWNED BY; Schema: otla; Owner: postgres
--

ALTER SEQUENCE t_communes_gid_seq OWNED BY t_communes.gid;


--
-- TOC entry 213 (class 1259 OID 43588)
-- Name: t_departements; Type: TABLE; Schema: otla; Owner: postgres
--

CREATE TABLE t_departements (
    gid integer NOT NULL,
    insee character varying(80),
    nom character varying(80),
    wikipedia character varying(80),
    surf_ha numeric,
    geom public.geometry(MultiPolygon,2154)
);


ALTER TABLE t_departements OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 43586)
-- Name: t_departements_gid_seq; Type: SEQUENCE; Schema: otla; Owner: postgres
--

CREATE SEQUENCE t_departements_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE t_departements_gid_seq OWNER TO postgres;

--
-- TOC entry 3471 (class 0 OID 0)
-- Dependencies: 212
-- Name: t_departements_gid_seq; Type: SEQUENCE OWNED BY; Schema: otla; Owner: postgres
--

ALTER SEQUENCE t_departements_gid_seq OWNED BY t_departements.gid;


--
-- TOC entry 215 (class 1259 OID 43736)
-- Name: t_epci; Type: TABLE; Schema: otla; Owner: postgres
--

CREATE TABLE t_epci (
    gid integer NOT NULL,
    siren_epci character varying(80),
    nom_epci character varying(80),
    ptot_epci numeric(10,0),
    surf_km2 numeric,
    short_name character varying(80),
    wikipedia character varying(80),
    web character varying(80),
    osm_id numeric(10,0),
    nom_osm character varying(80),
    type_epci character varying(80),
    geom public.geometry(MultiPolygon,2154)
);


ALTER TABLE t_epci OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 43734)
-- Name: t_epci_gid_seq; Type: SEQUENCE; Schema: otla; Owner: postgres
--

CREATE SEQUENCE t_epci_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE t_epci_gid_seq OWNER TO postgres;

--
-- TOC entry 3472 (class 0 OID 0)
-- Dependencies: 214
-- Name: t_epci_gid_seq; Type: SEQUENCE OWNED BY; Schema: otla; Owner: postgres
--

ALTER SEQUENCE t_epci_gid_seq OWNED BY t_epci.gid;


--
-- TOC entry 3324 (class 2604 OID 22743)
-- Name: gid; Type: DEFAULT; Schema: otla; Owner: postgres
--

ALTER TABLE ONLY t_communes ALTER COLUMN gid SET DEFAULT nextval('t_communes_gid_seq'::regclass);


--
-- TOC entry 3325 (class 2604 OID 43591)
-- Name: gid; Type: DEFAULT; Schema: otla; Owner: postgres
--

ALTER TABLE ONLY t_departements ALTER COLUMN gid SET DEFAULT nextval('t_departements_gid_seq'::regclass);


--
-- TOC entry 3326 (class 2604 OID 43739)
-- Name: gid; Type: DEFAULT; Schema: otla; Owner: postgres
--

ALTER TABLE ONLY t_epci ALTER COLUMN gid SET DEFAULT nextval('t_epci_gid_seq'::regclass);


--
-- TOC entry 3327 (class 2604 OID 50856)
-- Name: gid; Type: DEFAULT; Schema: otla; Owner: postgres
--

ALTER TABLE ONLY t_regions ALTER COLUMN gid SET DEFAULT nextval('"t_regions_gid_seq"'::regclass);


--
-- TOC entry 3323 (class 2604 OID 22707)
-- Name: gid; Type: DEFAULT; Schema: otla; Owner: postgres
--

ALTER TABLE ONLY t_regionsreforme ALTER COLUMN gid SET DEFAULT nextval('"t_regionsreforme_gid_seq"'::regclass);


--
-- TOC entry 3330 (class 2606 OID 22709)
-- Name: t_regionsreforme_pkey; Type: CONSTRAINT; Schema: otla; Owner: postgres
--

ALTER TABLE ONLY t_regionsreforme
    ADD CONSTRAINT "t_regionsreforme_pkey" PRIMARY KEY (gid);


--
-- TOC entry 3342 (class 2606 OID 50861)
-- Name: t_regions_pkey; Type: CONSTRAINT; Schema: otla; Owner: postgres
--

ALTER TABLE ONLY t_regions
    ADD CONSTRAINT "t_regions_pkey" PRIMARY KEY (gid);


--
-- TOC entry 3333 (class 2606 OID 22748)
-- Name: t_communes_pkey; Type: CONSTRAINT; Schema: otla; Owner: postgres
--

ALTER TABLE ONLY t_communes
    ADD CONSTRAINT t_communes_pkey PRIMARY KEY (gid);


--
-- TOC entry 3336 (class 2606 OID 43596)
-- Name: t_departements_pkey; Type: CONSTRAINT; Schema: otla; Owner: postgres
--

ALTER TABLE ONLY t_departements
    ADD CONSTRAINT t_departements_pkey PRIMARY KEY (gid);


--
-- TOC entry 3339 (class 2606 OID 43744)
-- Name: t_epci_pkey; Type: CONSTRAINT; Schema: otla; Owner: postgres
--

ALTER TABLE ONLY t_epci
    ADD CONSTRAINT t_epci_pkey PRIMARY KEY (gid);


--
-- TOC entry 3328 (class 1259 OID 22737)
-- Name: t_regionsreforme_geom_idx; Type: INDEX; Schema: otla; Owner: postgres
--

CREATE INDEX "t_regionsreforme_geom_idx" ON t_regionsreforme USING gist (geom);


--
-- TOC entry 3340 (class 1259 OID 50891)
-- Name: t_regions_geom_idx; Type: INDEX; Schema: otla; Owner: postgres
--

CREATE INDEX "t_regions_geom_idx" ON t_regions USING gist (geom);


--
-- TOC entry 3331 (class 1259 OID 43582)
-- Name: t_communes_geom_idx; Type: INDEX; Schema: otla; Owner: postgres
--

CREATE INDEX t_communes_geom_idx ON t_communes USING gist (geom);


--
-- TOC entry 3334 (class 1259 OID 43733)
-- Name: t_departements_geom_idx; Type: INDEX; Schema: otla; Owner: postgres
--

CREATE INDEX t_departements_geom_idx ON t_departements USING gist (geom);


--
-- TOC entry 3337 (class 1259 OID 50839)
-- Name: t_epci_geom_idx; Type: INDEX; Schema: otla; Owner: postgres
--

CREATE INDEX t_epci_geom_idx ON t_epci USING gist (geom);


-- Completed on 2016-09-15 12:03:53

--
-- PostgreSQL database dump complete
--

