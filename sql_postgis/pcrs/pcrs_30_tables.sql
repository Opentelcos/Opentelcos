--
-- PostgreSQL database dump
--

-- Dumped from database version 9.3.3
-- Dumped by pg_dump version 9.3.3
-- Started on 2016-08-31 01:38:07

/*
SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
*/
--
-- TOC entry 7 (class 2615 OID 167687)
-- Name: pcrs; Type: SCHEMA; Schema: -; Owner: postgres
--

--CREATE SCHEMA pcrs;


--ALTER SCHEMA pcrs OWNER TO postgres;

SET search_path = pcrs, pg_catalog;

--SET default_tablespace = '';

--SET default_with_oids = false;

--
-- TOC entry 187 (class 1259 OID 169009)
-- Name: AffleurantEnveloppePCRS; Type: TABLE; Schema: pcrs; Owner: postgres; Tablespace: 
--

CREATE TABLE "AffleurantEnveloppePCRS" (
    id integer NOT NULL,
    geom public.geometry(Polygon,2154),
    gml_id character varying,
    "idAffleurant" integer,
    nature integer,
    "codeCouleur" character varying(6),
    calque character varying(15),
    "idSource" integer,
    "precisionPlanimetrique" integer
);


ALTER TABLE pcrs."AffleurantEnveloppePCRS" OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 169007)
-- Name: AffleurantEnveloppePCRS_id_seq; Type: SEQUENCE; Schema: pcrs; Owner: postgres
--

CREATE SEQUENCE "AffleurantEnveloppePCRS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pcrs."AffleurantEnveloppePCRS_id_seq" OWNER TO postgres;

--
-- TOC entry 3288 (class 0 OID 0)
-- Dependencies: 186
-- Name: AffleurantEnveloppePCRS_id_seq; Type: SEQUENCE OWNED BY; Schema: pcrs; Owner: postgres
--

ALTER SEQUENCE "AffleurantEnveloppePCRS_id_seq" OWNED BY "AffleurantEnveloppePCRS".id;


--
-- TOC entry 185 (class 1259 OID 168997)
-- Name: AffleurantSymbolePCRS; Type: TABLE; Schema: pcrs; Owner: postgres; Tablespace: 
--

CREATE TABLE "AffleurantSymbolePCRS" (
    id integer NOT NULL,
    geom public.geometry(Point,3948),
    gml_id character varying,
    "idAffleurant" integer,
    nature integer,
    "codeCouleur" character varying(6),
    calque character varying(15),
    "idSource" integer,
    "precisionPlanimetrique" integer,
    "angleRotation" double precision,
    longueur double precision,
    largeur double precision,
    reference character varying(19)
);


ALTER TABLE pcrs."AffleurantSymbolePCRS" OWNER TO postgres;

--
-- TOC entry 184 (class 1259 OID 168995)
-- Name: AffleurantSymbolePCRS_id_seq; Type: SEQUENCE; Schema: pcrs; Owner: postgres
--

CREATE SEQUENCE "AffleurantSymbolePCRS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pcrs."AffleurantSymbolePCRS_id_seq" OWNER TO postgres;

--
-- TOC entry 3289 (class 0 OID 0)
-- Dependencies: 184
-- Name: AffleurantSymbolePCRS_id_seq; Type: SEQUENCE OWNED BY; Schema: pcrs; Owner: postgres
--

ALTER SEQUENCE "AffleurantSymbolePCRS_id_seq" OWNED BY "AffleurantSymbolePCRS".id;


--
-- TOC entry 189 (class 1259 OID 169177)
-- Name: ArbreAlignementPCRS; Type: TABLE; Schema: pcrs; Owner: postgres; Tablespace: 
--

CREATE TABLE "ArbreAlignementPCRS" (
    id integer NOT NULL,
    geom public.geometry(Point,2154),
    gml_id character varying,
    "idObjet" integer,
    thematique integer,
    calque character varying(22),
    "qualiteCategorisation" integer,
    "precisionPlanimetrique" integer,
    "precisionAltimetrique" integer,
    "precisionTotale" integer
);


ALTER TABLE pcrs."ArbreAlignementPCRS" OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 169175)
-- Name: ArbreAlignementPCRS_id_seq; Type: SEQUENCE; Schema: pcrs; Owner: postgres
--

CREATE SEQUENCE "ArbreAlignementPCRS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pcrs."ArbreAlignementPCRS_id_seq" OWNER TO postgres;

--
-- TOC entry 3290 (class 0 OID 0)
-- Dependencies: 188
-- Name: ArbreAlignementPCRS_id_seq; Type: SEQUENCE OWNED BY; Schema: pcrs; Owner: postgres
--

ALTER SEQUENCE "ArbreAlignementPCRS_id_seq" OWNED BY "ArbreAlignementPCRS".id;


--
-- TOC entry 203 (class 1259 OID 169262)
-- Name: ChangementRevetementPCRS; Type: TABLE; Schema: pcrs; Owner: postgres; Tablespace: 
--

CREATE TABLE "ChangementRevetementPCRS" (
    id integer NOT NULL,
    geom public.geometry(LineString,2154),
    gml_id character varying,
    "idObjet" integer,
    thematique integer,
    calque character varying(33),
    "qualiteCategorisation" integer,
    "precisionPlanimetrique" integer,
    "precisionAltimetrique" integer,
    "precisionTotale" integer
);


ALTER TABLE pcrs."ChangementRevetementPCRS" OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 169260)
-- Name: ChangementRevetementPCRS_id_seq; Type: SEQUENCE; Schema: pcrs; Owner: postgres
--

CREATE SEQUENCE "ChangementRevetementPCRS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pcrs."ChangementRevetementPCRS_id_seq" OWNER TO postgres;

--
-- TOC entry 3291 (class 0 OID 0)
-- Dependencies: 202
-- Name: ChangementRevetementPCRS_id_seq; Type: SEQUENCE OWNED BY; Schema: pcrs; Owner: postgres
--

ALTER SEQUENCE "ChangementRevetementPCRS_id_seq" OWNED BY "ChangementRevetementPCRS".id;


--
-- TOC entry 209 (class 1259 OID 169333)
-- Name: EmprisePublicationPCRS; Type: TABLE; Schema: pcrs; Owner: postgres; Tablespace: 
--

CREATE TABLE "EmprisePublicationPCRS" (
    id integer NOT NULL,
    geom public.geometry(Polygon,2154),
    gml_id character varying,
    "idEmprise" character varying(6),
    gestionnaire character varying(8),
    "datePublication" character varying(10),
    "typeObjet" integer,
    "nombreEcartsToleres" integer,
    seuil integer
);


ALTER TABLE pcrs."EmprisePublicationPCRS" OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 169331)
-- Name: EmprisePublicationPCRS_id_seq; Type: SEQUENCE; Schema: pcrs; Owner: postgres
--

CREATE SEQUENCE "EmprisePublicationPCRS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pcrs."EmprisePublicationPCRS_id_seq" OWNER TO postgres;

--
-- TOC entry 3292 (class 0 OID 0)
-- Dependencies: 208
-- Name: EmprisePublicationPCRS_id_seq; Type: SEQUENCE OWNED BY; Schema: pcrs; Owner: postgres
--

ALTER SEQUENCE "EmprisePublicationPCRS_id_seq" OWNED BY "EmprisePublicationPCRS".id;


--
-- TOC entry 201 (class 1259 OID 169250)
-- Name: FacadePCRS; Type: TABLE; Schema: pcrs; Owner: postgres; Tablespace: 
--

CREATE TABLE "FacadePCRS" (
    id integer NOT NULL,
    geom public.geometry(LineString,2154),
    gml_id character varying,
    "idObjet" integer,
    thematique integer,
    calque character varying(16),
    "qualiteCategorisation" integer,
    "precisionPlanimetrique" integer,
    "precisionAltimetrique" integer,
    "precisionTotale" integer
);


ALTER TABLE pcrs."FacadePCRS" OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 169248)
-- Name: FacadePCRS_id_seq; Type: SEQUENCE; Schema: pcrs; Owner: postgres
--

CREATE SEQUENCE "FacadePCRS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pcrs."FacadePCRS_id_seq" OWNER TO postgres;

--
-- TOC entry 3293 (class 0 OID 0)
-- Dependencies: 200
-- Name: FacadePCRS_id_seq; Type: SEQUENCE OWNED BY; Schema: pcrs; Owner: postgres
--

ALTER SEQUENCE "FacadePCRS_id_seq" OWNED BY "FacadePCRS".id;


--
-- TOC entry 199 (class 1259 OID 169238)
-- Name: MurPCRS; Type: TABLE; Schema: pcrs; Owner: postgres; Tablespace: 
--

CREATE TABLE "MurPCRS" (
    id integer NOT NULL,
    geom public.geometry(LineString,2154),
    gml_id character varying,
    "idObjet" integer,
    thematique integer,
    calque character varying(16),
    "qualiteCategorisation" integer,
    "precisionPlanimetrique" integer,
    "precisionAltimetrique" integer,
    "precisionTotale" integer
);


ALTER TABLE pcrs."MurPCRS" OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 169236)
-- Name: MurPCRS_id_seq; Type: SEQUENCE; Schema: pcrs; Owner: postgres
--

CREATE SEQUENCE "MurPCRS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pcrs."MurPCRS_id_seq" OWNER TO postgres;

--
-- TOC entry 3294 (class 0 OID 0)
-- Dependencies: 198
-- Name: MurPCRS_id_seq; Type: SEQUENCE OWNED BY; Schema: pcrs; Owner: postgres
--

ALTER SEQUENCE "MurPCRS_id_seq" OWNED BY "MurPCRS".id;


--
-- TOC entry 207 (class 1259 OID 169321)
-- Name: NomVoiriePCRS; Type: TABLE; Schema: pcrs; Owner: postgres; Tablespace: 
--

CREATE TABLE "NomVoiriePCRS" (
    id integer NOT NULL,
    geom public.geometry(Point,2154),
    gml_id character varying,
    "idHabillage" integer,
    thematique integer,
    calque character varying(27),
    positionnement integer,
    libelle character varying(22),
    "angleRotation" double precision,
    justification character varying(1),
    taille double precision
);


ALTER TABLE pcrs."NomVoiriePCRS" OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 169319)
-- Name: NomVoiriePCRS_id_seq; Type: SEQUENCE; Schema: pcrs; Owner: postgres
--

CREATE SEQUENCE "NomVoiriePCRS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pcrs."NomVoiriePCRS_id_seq" OWNER TO postgres;

--
-- TOC entry 3295 (class 0 OID 0)
-- Dependencies: 206
-- Name: NomVoiriePCRS_id_seq; Type: SEQUENCE OWNED BY; Schema: pcrs; Owner: postgres
--

ALTER SEQUENCE "NomVoiriePCRS_id_seq" OWNED BY "NomVoiriePCRS".id;


--
-- TOC entry 205 (class 1259 OID 169307)
-- Name: NumeroVoiriePCRS; Type: TABLE; Schema: pcrs; Owner: postgres; Tablespace: 
--

CREATE TABLE "NumeroVoiriePCRS" (
    id integer NOT NULL,
    geom public.geometry(Point,2154),
    gml_id character varying,
    "idHabillage" integer,
    thematique integer,
    calque character varying(30),
    positionnement integer,
    libelle character varying(3),
    "angleRotation" double precision,
    justification character varying(1),
    taille double precision
);


ALTER TABLE pcrs."NumeroVoiriePCRS" OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 169305)
-- Name: NumeroVoiriePCRS_id_seq; Type: SEQUENCE; Schema: pcrs; Owner: postgres
--

CREATE SEQUENCE "NumeroVoiriePCRS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pcrs."NumeroVoiriePCRS_id_seq" OWNER TO postgres;

--
-- TOC entry 3296 (class 0 OID 0)
-- Dependencies: 204
-- Name: NumeroVoiriePCRS_id_seq; Type: SEQUENCE OWNED BY; Schema: pcrs; Owner: postgres
--

ALTER SEQUENCE "NumeroVoiriePCRS_id_seq" OWNED BY "NumeroVoiriePCRS".id;


--
-- TOC entry 197 (class 1259 OID 169226)
-- Name: PilierParticulierPCRS; Type: TABLE; Schema: pcrs; Owner: postgres; Tablespace: 
--

CREATE TABLE "PilierParticulierPCRS" (
    id integer NOT NULL,
    geom public.geometry(LineString,2154),
    gml_id character varying,
    "idObjet" integer,
    thematique integer,
    calque character varying(19),
    "qualiteCategorisation" integer,
    "precisionPlanimetrique" integer,
    "precisionAltimetrique" integer,
    "precisionTotale" integer
);


ALTER TABLE pcrs."PilierParticulierPCRS" OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 169224)
-- Name: PilierParticulierPCRS_id_seq; Type: SEQUENCE; Schema: pcrs; Owner: postgres
--

CREATE SEQUENCE "PilierParticulierPCRS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pcrs."PilierParticulierPCRS_id_seq" OWNER TO postgres;

--
-- TOC entry 3297 (class 0 OID 0)
-- Dependencies: 196
-- Name: PilierParticulierPCRS_id_seq; Type: SEQUENCE OWNED BY; Schema: pcrs; Owner: postgres
--

ALTER SEQUENCE "PilierParticulierPCRS_id_seq" OWNED BY "PilierParticulierPCRS".id;


--
-- TOC entry 195 (class 1259 OID 169214)
-- Name: ProeminenceBatiPCRS; Type: TABLE; Schema: pcrs; Owner: postgres; Tablespace: 
--

CREATE TABLE "ProeminenceBatiPCRS" (
    id integer NOT NULL,
    geom public.geometry(LineString,2154),
    gml_id character varying,
    "idObjet" integer,
    thematique integer,
    calque character varying(26),
    "qualiteCategorisation" integer,
    "precisionPlanimetrique" integer,
    "precisionAltimetrique" integer,
    "precisionTotale" integer
);


ALTER TABLE pcrs."ProeminenceBatiPCRS" OWNER TO postgres;

--
-- TOC entry 194 (class 1259 OID 169212)
-- Name: ProeminenceBatiPCRS_id_seq; Type: SEQUENCE; Schema: pcrs; Owner: postgres
--

CREATE SEQUENCE "ProeminenceBatiPCRS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pcrs."ProeminenceBatiPCRS_id_seq" OWNER TO postgres;

--
-- TOC entry 3298 (class 0 OID 0)
-- Dependencies: 194
-- Name: ProeminenceBatiPCRS_id_seq; Type: SEQUENCE OWNED BY; Schema: pcrs; Owner: postgres
--

ALTER SEQUENCE "ProeminenceBatiPCRS_id_seq" OWNED BY "ProeminenceBatiPCRS".id;


--
-- TOC entry 193 (class 1259 OID 169202)
-- Name: RailPCRS; Type: TABLE; Schema: pcrs; Owner: postgres; Tablespace: 
--

CREATE TABLE "RailPCRS" (
    id integer NOT NULL,
    geom public.geometry(LineString,2154),
    gml_id character varying,
    "idObjet" integer,
    thematique integer,
    calque character varying(21),
    "qualiteCategorisation" integer,
    "precisionPlanimetrique" integer,
    "precisionAltimetrique" integer,
    "precisionTotale" integer
);


ALTER TABLE pcrs."RailPCRS" OWNER TO postgres;

--
-- TOC entry 192 (class 1259 OID 169200)
-- Name: RailPCRS_id_seq; Type: SEQUENCE; Schema: pcrs; Owner: postgres
--

CREATE SEQUENCE "RailPCRS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pcrs."RailPCRS_id_seq" OWNER TO postgres;

--
-- TOC entry 3299 (class 0 OID 0)
-- Dependencies: 192
-- Name: RailPCRS_id_seq; Type: SEQUENCE OWNED BY; Schema: pcrs; Owner: postgres
--

ALTER SEQUENCE "RailPCRS_id_seq" OWNED BY "RailPCRS".id;


--
-- TOC entry 191 (class 1259 OID 169190)
-- Name: SeuilPCRS; Type: TABLE; Schema: pcrs; Owner: postgres; Tablespace: 
--

CREATE TABLE "SeuilPCRS" (
    id integer NOT NULL,
    geom public.geometry(Point,2154),
    gml_id character varying,
    "idObjet" integer,
    thematique integer,
    calque character varying(17),
    "qualiteCategorisation" integer,
    "precisionPlanimetrique" integer,
    "precisionAltimetrique" integer,
    "precisionTotale" integer
);


ALTER TABLE pcrs."SeuilPCRS" OWNER TO postgres;

--
-- TOC entry 190 (class 1259 OID 169188)
-- Name: SeuilPCRS_id_seq; Type: SEQUENCE; Schema: pcrs; Owner: postgres
--

CREATE SEQUENCE "SeuilPCRS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pcrs."SeuilPCRS_id_seq" OWNER TO postgres;

--
-- TOC entry 3300 (class 0 OID 0)
-- Dependencies: 190
-- Name: SeuilPCRS_id_seq; Type: SEQUENCE OWNED BY; Schema: pcrs; Owner: postgres
--

ALTER SEQUENCE "SeuilPCRS_id_seq" OWNED BY "SeuilPCRS".id;


--
-- TOC entry 3119 (class 2604 OID 169012)
-- Name: id; Type: DEFAULT; Schema: pcrs; Owner: postgres
--

ALTER TABLE ONLY "AffleurantEnveloppePCRS" ALTER COLUMN id SET DEFAULT nextval('"AffleurantEnveloppePCRS_id_seq"'::regclass);


--
-- TOC entry 3118 (class 2604 OID 169000)
-- Name: id; Type: DEFAULT; Schema: pcrs; Owner: postgres
--

ALTER TABLE ONLY "AffleurantSymbolePCRS" ALTER COLUMN id SET DEFAULT nextval('"AffleurantSymbolePCRS_id_seq"'::regclass);


--
-- TOC entry 3120 (class 2604 OID 169180)
-- Name: id; Type: DEFAULT; Schema: pcrs; Owner: postgres
--

ALTER TABLE ONLY "ArbreAlignementPCRS" ALTER COLUMN id SET DEFAULT nextval('"ArbreAlignementPCRS_id_seq"'::regclass);


--
-- TOC entry 3127 (class 2604 OID 169265)
-- Name: id; Type: DEFAULT; Schema: pcrs; Owner: postgres
--

ALTER TABLE ONLY "ChangementRevetementPCRS" ALTER COLUMN id SET DEFAULT nextval('"ChangementRevetementPCRS_id_seq"'::regclass);


--
-- TOC entry 3130 (class 2604 OID 169336)
-- Name: id; Type: DEFAULT; Schema: pcrs; Owner: postgres
--

ALTER TABLE ONLY "EmprisePublicationPCRS" ALTER COLUMN id SET DEFAULT nextval('"EmprisePublicationPCRS_id_seq"'::regclass);


--
-- TOC entry 3126 (class 2604 OID 169253)
-- Name: id; Type: DEFAULT; Schema: pcrs; Owner: postgres
--

ALTER TABLE ONLY "FacadePCRS" ALTER COLUMN id SET DEFAULT nextval('"FacadePCRS_id_seq"'::regclass);


--
-- TOC entry 3125 (class 2604 OID 169241)
-- Name: id; Type: DEFAULT; Schema: pcrs; Owner: postgres
--

ALTER TABLE ONLY "MurPCRS" ALTER COLUMN id SET DEFAULT nextval('"MurPCRS_id_seq"'::regclass);


--
-- TOC entry 3129 (class 2604 OID 169324)
-- Name: id; Type: DEFAULT; Schema: pcrs; Owner: postgres
--

ALTER TABLE ONLY "NomVoiriePCRS" ALTER COLUMN id SET DEFAULT nextval('"NomVoiriePCRS_id_seq"'::regclass);


--
-- TOC entry 3128 (class 2604 OID 169310)
-- Name: id; Type: DEFAULT; Schema: pcrs; Owner: postgres
--

ALTER TABLE ONLY "NumeroVoiriePCRS" ALTER COLUMN id SET DEFAULT nextval('"NumeroVoiriePCRS_id_seq"'::regclass);


--
-- TOC entry 3124 (class 2604 OID 169229)
-- Name: id; Type: DEFAULT; Schema: pcrs; Owner: postgres
--

ALTER TABLE ONLY "PilierParticulierPCRS" ALTER COLUMN id SET DEFAULT nextval('"PilierParticulierPCRS_id_seq"'::regclass);


--
-- TOC entry 3123 (class 2604 OID 169217)
-- Name: id; Type: DEFAULT; Schema: pcrs; Owner: postgres
--

ALTER TABLE ONLY "ProeminenceBatiPCRS" ALTER COLUMN id SET DEFAULT nextval('"ProeminenceBatiPCRS_id_seq"'::regclass);


--
-- TOC entry 3122 (class 2604 OID 169205)
-- Name: id; Type: DEFAULT; Schema: pcrs; Owner: postgres
--

ALTER TABLE ONLY "RailPCRS" ALTER COLUMN id SET DEFAULT nextval('"RailPCRS_id_seq"'::regclass);


--
-- TOC entry 3121 (class 2604 OID 169193)
-- Name: id; Type: DEFAULT; Schema: pcrs; Owner: postgres
--

ALTER TABLE ONLY "SeuilPCRS" ALTER COLUMN id SET DEFAULT nextval('"SeuilPCRS_id_seq"'::regclass);


--
-- TOC entry 3135 (class 2606 OID 169014)
-- Name: AffleurantEnveloppePCRS_pkey; Type: CONSTRAINT; Schema: pcrs; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "AffleurantEnveloppePCRS"
    ADD CONSTRAINT "AffleurantEnveloppePCRS_pkey" PRIMARY KEY (id);


--
-- TOC entry 3132 (class 2606 OID 169002)
-- Name: AffleurantSymbolePCRS_pkey; Type: CONSTRAINT; Schema: pcrs; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "AffleurantSymbolePCRS"
    ADD CONSTRAINT "AffleurantSymbolePCRS_pkey" PRIMARY KEY (id);


--
-- TOC entry 3138 (class 2606 OID 169182)
-- Name: ArbreAlignementPCRS_pkey; Type: CONSTRAINT; Schema: pcrs; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "ArbreAlignementPCRS"
    ADD CONSTRAINT "ArbreAlignementPCRS_pkey" PRIMARY KEY (id);


--
-- TOC entry 3159 (class 2606 OID 169267)
-- Name: ChangementRevetementPCRS_pkey; Type: CONSTRAINT; Schema: pcrs; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "ChangementRevetementPCRS"
    ADD CONSTRAINT "ChangementRevetementPCRS_pkey" PRIMARY KEY (id);


--
-- TOC entry 3168 (class 2606 OID 169338)
-- Name: EmprisePublicationPCRS_pkey; Type: CONSTRAINT; Schema: pcrs; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "EmprisePublicationPCRS"
    ADD CONSTRAINT "EmprisePublicationPCRS_pkey" PRIMARY KEY (id);


--
-- TOC entry 3156 (class 2606 OID 169255)
-- Name: FacadePCRS_pkey; Type: CONSTRAINT; Schema: pcrs; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "FacadePCRS"
    ADD CONSTRAINT "FacadePCRS_pkey" PRIMARY KEY (id);


--
-- TOC entry 3153 (class 2606 OID 169243)
-- Name: MurPCRS_pkey; Type: CONSTRAINT; Schema: pcrs; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "MurPCRS"
    ADD CONSTRAINT "MurPCRS_pkey" PRIMARY KEY (id);


--
-- TOC entry 3165 (class 2606 OID 169326)
-- Name: NomVoiriePCRS_pkey; Type: CONSTRAINT; Schema: pcrs; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "NomVoiriePCRS"
    ADD CONSTRAINT "NomVoiriePCRS_pkey" PRIMARY KEY (id);


--
-- TOC entry 3162 (class 2606 OID 169312)
-- Name: NumeroVoiriePCRS_pkey; Type: CONSTRAINT; Schema: pcrs; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "NumeroVoiriePCRS"
    ADD CONSTRAINT "NumeroVoiriePCRS_pkey" PRIMARY KEY (id);


--
-- TOC entry 3150 (class 2606 OID 169231)
-- Name: PilierParticulierPCRS_pkey; Type: CONSTRAINT; Schema: pcrs; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "PilierParticulierPCRS"
    ADD CONSTRAINT "PilierParticulierPCRS_pkey" PRIMARY KEY (id);


--
-- TOC entry 3147 (class 2606 OID 169219)
-- Name: ProeminenceBatiPCRS_pkey; Type: CONSTRAINT; Schema: pcrs; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "ProeminenceBatiPCRS"
    ADD CONSTRAINT "ProeminenceBatiPCRS_pkey" PRIMARY KEY (id);


--
-- TOC entry 3144 (class 2606 OID 169207)
-- Name: RailPCRS_pkey; Type: CONSTRAINT; Schema: pcrs; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "RailPCRS"
    ADD CONSTRAINT "RailPCRS_pkey" PRIMARY KEY (id);


--
-- TOC entry 3141 (class 2606 OID 169195)
-- Name: SeuilPCRS_pkey; Type: CONSTRAINT; Schema: pcrs; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "SeuilPCRS"
    ADD CONSTRAINT "SeuilPCRS_pkey" PRIMARY KEY (id);


--
-- TOC entry 3136 (class 1259 OID 169174)
-- Name: sidx_AffleurantEnveloppePCRS_geom; Type: INDEX; Schema: pcrs; Owner: postgres; Tablespace: 
--

CREATE INDEX "sidx_AffleurantEnveloppePCRS_geom" ON "AffleurantEnveloppePCRS" USING gist (geom);


--
-- TOC entry 3133 (class 1259 OID 169006)
-- Name: sidx_AffleurantSymbolePCRS_geom; Type: INDEX; Schema: pcrs; Owner: postgres; Tablespace: 
--

CREATE INDEX "sidx_AffleurantSymbolePCRS_geom" ON "AffleurantSymbolePCRS" USING gist (geom);


--
-- TOC entry 3139 (class 1259 OID 169186)
-- Name: sidx_ArbreAlignementPCRS_geom; Type: INDEX; Schema: pcrs; Owner: postgres; Tablespace: 
--

CREATE INDEX "sidx_ArbreAlignementPCRS_geom" ON "ArbreAlignementPCRS" USING gist (geom);


--
-- TOC entry 3160 (class 1259 OID 169304)
-- Name: sidx_ChangementRevetementPCRS_geom; Type: INDEX; Schema: pcrs; Owner: postgres; Tablespace: 
--

CREATE INDEX "sidx_ChangementRevetementPCRS_geom" ON "ChangementRevetementPCRS" USING gist (geom);


--
-- TOC entry 3169 (class 1259 OID 169342)
-- Name: sidx_EmprisePublicationPCRS_geom; Type: INDEX; Schema: pcrs; Owner: postgres; Tablespace: 
--

CREATE INDEX "sidx_EmprisePublicationPCRS_geom" ON "EmprisePublicationPCRS" USING gist (geom);


--
-- TOC entry 3157 (class 1259 OID 169259)
-- Name: sidx_FacadePCRS_geom; Type: INDEX; Schema: pcrs; Owner: postgres; Tablespace: 
--

CREATE INDEX "sidx_FacadePCRS_geom" ON "FacadePCRS" USING gist (geom);


--
-- TOC entry 3154 (class 1259 OID 169247)
-- Name: sidx_MurPCRS_geom; Type: INDEX; Schema: pcrs; Owner: postgres; Tablespace: 
--

CREATE INDEX "sidx_MurPCRS_geom" ON "MurPCRS" USING gist (geom);


--
-- TOC entry 3166 (class 1259 OID 169330)
-- Name: sidx_NomVoiriePCRS_geom; Type: INDEX; Schema: pcrs; Owner: postgres; Tablespace: 
--

CREATE INDEX "sidx_NomVoiriePCRS_geom" ON "NomVoiriePCRS" USING gist (geom);


--
-- TOC entry 3163 (class 1259 OID 169316)
-- Name: sidx_NumeroVoiriePCRS_geom; Type: INDEX; Schema: pcrs; Owner: postgres; Tablespace: 
--

CREATE INDEX "sidx_NumeroVoiriePCRS_geom" ON "NumeroVoiriePCRS" USING gist (geom);


--
-- TOC entry 3151 (class 1259 OID 169235)
-- Name: sidx_PilierParticulierPCRS_geom; Type: INDEX; Schema: pcrs; Owner: postgres; Tablespace: 
--

CREATE INDEX "sidx_PilierParticulierPCRS_geom" ON "PilierParticulierPCRS" USING gist (geom);


--
-- TOC entry 3148 (class 1259 OID 169223)
-- Name: sidx_ProeminenceBatiPCRS_geom; Type: INDEX; Schema: pcrs; Owner: postgres; Tablespace: 
--

CREATE INDEX "sidx_ProeminenceBatiPCRS_geom" ON "ProeminenceBatiPCRS" USING gist (geom);


--
-- TOC entry 3145 (class 1259 OID 169211)
-- Name: sidx_RailPCRS_geom; Type: INDEX; Schema: pcrs; Owner: postgres; Tablespace: 
--

CREATE INDEX "sidx_RailPCRS_geom" ON "RailPCRS" USING gist (geom);


--
-- TOC entry 3142 (class 1259 OID 169199)
-- Name: sidx_SeuilPCRS_geom; Type: INDEX; Schema: pcrs; Owner: postgres; Tablespace: 
--

CREATE INDEX "sidx_SeuilPCRS_geom" ON "SeuilPCRS" USING gist (geom);


-- Completed on 2016-08-31 01:38:15

--
-- PostgreSQL database dump complete
--

