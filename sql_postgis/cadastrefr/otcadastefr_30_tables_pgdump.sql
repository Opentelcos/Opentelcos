--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

-- Started on 2016-09-15 21:20:29

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 9 (class 2615 OID 53224)
-- Name: cadastre; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA cadastre;


ALTER SCHEMA cadastre OWNER TO postgres;

SET search_path = cadastre, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 258 (class 1259 OID 53653)
-- Name: annul; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE annul (
    annul character varying(1) NOT NULL,
    annul_lib character varying
);


ALTER TABLE annul OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 53227)
-- Name: bati; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE bati (
    tmp character varying(550)
);


ALTER TABLE bati OWNER TO postgres;

--
-- TOC entry 334 (class 1259 OID 53990)
-- Name: batiment_id; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE batiment_id (
    ogc_fid integer NOT NULL,
    object_rid character varying,
    dur character varying,
    tex character varying,
    creat_date integer,
    update_date integer,
    geom public.geometry(Geometry,2154)
);


ALTER TABLE batiment_id OWNER TO postgres;

--
-- TOC entry 333 (class 1259 OID 53988)
-- Name: batiment_id_ogc_fid_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE batiment_id_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE batiment_id_ogc_fid_seq OWNER TO postgres;

--
-- TOC entry 4249 (class 0 OID 0)
-- Dependencies: 333
-- Name: batiment_id_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE batiment_id_ogc_fid_seq OWNED BY batiment_id.ogc_fid;


--
-- TOC entry 336 (class 1259 OID 53999)
-- Name: borne_id; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE borne_id (
    ogc_fid integer NOT NULL,
    object_rid character varying,
    creat_date integer,
    update_date integer,
    geom public.geometry(Geometry,2154)
);


ALTER TABLE borne_id OWNER TO postgres;

--
-- TOC entry 335 (class 1259 OID 53997)
-- Name: borne_id_ogc_fid_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE borne_id_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE borne_id_ogc_fid_seq OWNER TO postgres;

--
-- TOC entry 4250 (class 0 OID 0)
-- Dependencies: 335
-- Name: borne_id_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE borne_id_ogc_fid_seq OWNED BY borne_id.ogc_fid;


--
-- TOC entry 338 (class 1259 OID 54008)
-- Name: boulon_id; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE boulon_id (
    ogc_fid integer NOT NULL,
    object_rid character varying,
    ori double precision,
    creat_date integer,
    update_date integer,
    geom public.geometry(Geometry,2154)
);


ALTER TABLE boulon_id OWNER TO postgres;

--
-- TOC entry 337 (class 1259 OID 54006)
-- Name: boulon_id_ogc_fid_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE boulon_id_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE boulon_id_ogc_fid_seq OWNER TO postgres;

--
-- TOC entry 4251 (class 0 OID 0)
-- Dependencies: 337
-- Name: boulon_id_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE boulon_id_ogc_fid_seq OWNED BY boulon_id.ogc_fid;


--
-- TOC entry 257 (class 1259 OID 53645)
-- Name: carvoi; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE carvoi (
    carvoi character varying(1) NOT NULL,
    carvoi_lib character varying
);


ALTER TABLE carvoi OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 53501)
-- Name: ccoaff; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE ccoaff (
    ccoaff character varying(1) NOT NULL,
    ccoaff_lib character varying
);


ALTER TABLE ccoaff OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 53557)
-- Name: ccodem; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE ccodem (
    ccodem character varying(1) NOT NULL,
    ccodem_lib character varying
);


ALTER TABLE ccodem OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 53549)
-- Name: ccodro; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE ccodro (
    ccodro character varying(1) NOT NULL,
    ccodro_lib character varying
);


ALTER TABLE ccodro OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 53445)
-- Name: ccoeva; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE ccoeva (
    ccoeva character varying(1) NOT NULL,
    ccoeva_lib character varying
);


ALTER TABLE ccoeva OWNER TO postgres;

--
-- TOC entry 250 (class 1259 OID 53589)
-- Name: ccogrm; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE ccogrm (
    ccogrm character varying(2) NOT NULL,
    ccogrm_lib character varying
);


ALTER TABLE ccogrm OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 53429)
-- Name: ccolloc; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE ccolloc (
    ccolloc character varying(2) NOT NULL,
    ccolloc_lib character varying
);


ALTER TABLE ccolloc OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 53525)
-- Name: cconad; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE cconad (
    cconad character varying(2) NOT NULL,
    cconad_lib character varying
);


ALTER TABLE cconad OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 53469)
-- Name: cconlc; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE cconlc (
    cconlc character varying(2) NOT NULL,
    cconlc_lib character varying
);


ALTER TABLE cconlc OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 53541)
-- Name: cconlo; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE cconlo (
    cconlo character varying(1) NOT NULL,
    cconlo_lib character varying
);


ALTER TABLE cconlo OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 53461)
-- Name: ccoplc; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE ccoplc (
    ccoplc character varying(1) NOT NULL,
    ccoplc_lib character varying
);


ALTER TABLE ccoplc OWNER TO postgres;

--
-- TOC entry 248 (class 1259 OID 53573)
-- Name: ccoqua; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE ccoqua (
    ccoqua character varying(1) NOT NULL,
    ccoqua_lib character varying
);


ALTER TABLE ccoqua OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 53405)
-- Name: cgrnum; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE cgrnum (
    cgrnum character varying(2) NOT NULL,
    cgrnum_lib character varying
);


ALTER TABLE cgrnum OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 53421)
-- Name: cnatsp; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE cnatsp (
    cnatsp character varying(5) NOT NULL,
    cnatsp_lib character varying
);


ALTER TABLE cnatsp OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 53377)
-- Name: commune; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE commune (
    commune character varying(10),
    annee character varying(4),
    ccodep character varying(2),
    ccodir character varying(1),
    ccocom character varying(3),
    clerivili character varying(1),
    libcom character varying(30),
    typcom character varying(1),
    ruract character varying(1),
    carvoi character varying(1),
    indpop character varying(1),
    poprel integer,
    poppart integer,
    popfict integer,
    annul character varying(1),
    dteannul character varying(7),
    dtecreart character varying(7),
    codvoi character varying(5),
    typvoi character varying(1),
    indldnbat character varying(1),
    motclas character varying(8),
    geo_commune character varying(7),
    lot character varying
);


ALTER TABLE commune OWNER TO postgres;

--
-- TOC entry 4252 (class 0 OID 0)
-- Dependencies: 223
-- Name: TABLE commune; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE commune IS 'Commune (Fantoir)';


--
-- TOC entry 4253 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN commune.ccodep; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN commune.ccodep IS 'Code département - Code département INSEE';


--
-- TOC entry 4254 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN commune.ccodir; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN commune.ccodir IS 'Code direction - Code direction dge';


--
-- TOC entry 4255 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN commune.ccocom; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN commune.ccocom IS 'Code commune - code commune définie par Majic2';


--
-- TOC entry 4256 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN commune.clerivili; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN commune.clerivili IS 'Clé RIVOLI - zone alphabétique fournie par MAJIC2';


--
-- TOC entry 4257 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN commune.libcom; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN commune.libcom IS 'Libellé - désignation de la commune';


--
-- TOC entry 4258 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN commune.typcom; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN commune.typcom IS 'Type de commune actuel (R ou N) - N - commune rurale, R - commune rencencée';


--
-- TOC entry 4259 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN commune.ruract; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN commune.ruract IS 'RUR actuel - indique si la commune est pseudo-recensée ou non (3-commune pseudo-recensée, blanc si rien)';


--
-- TOC entry 4260 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN commune.carvoi; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN commune.carvoi IS 'caractère de voie - zone indiquant si la voie est privée (1) ou publique (0)';


--
-- TOC entry 4261 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN commune.indpop; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN commune.indpop IS 'indicateur de population - Précise la dernière situation connue de la commune au regard de la limite de 3000 habitants (= blanc si < 3000 h sinon = *).';


--
-- TOC entry 4262 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN commune.poprel; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN commune.poprel IS 'population réelle - dénombre la population recencée lors du dernier recensement';


--
-- TOC entry 4263 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN commune.poppart; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN commune.poppart IS 'population à part - dénombre la population comptée à part dans la commune';


--
-- TOC entry 4264 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN commune.popfict; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN commune.popfict IS 'population fictive - population fictive de la commune';


--
-- TOC entry 4265 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN commune.annul; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN commune.annul IS 'Annulation Cet article indique que plus aucune entité topo n’est représentée par ce code. - O - voie annulée sans transfert, Q - voie annulée avec transfert, Q - commune annulée avec transfert.';


--
-- TOC entry 4266 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN commune.dteannul; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN commune.dteannul IS 'date d''annulation - ';


--
-- TOC entry 4267 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN commune.dtecreart; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN commune.dtecreart IS 'Date de création de l''article - Date à laquelle l''article a été créé par création MAJIC2.';


--
-- TOC entry 4268 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN commune.codvoi; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN commune.codvoi IS 'Code identifiant la voie dans MAJIC2. - Permet de faire le lien entre le code voie RIVOLI et le code voie MAJIC2.';


--
-- TOC entry 4269 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN commune.typvoi; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN commune.typvoi IS 'Type de voie - Indicateur de la classe de la voie. - 1 - voie, 2 - ensemble immobilier, 3 - lieu-dit, 4 -  pseudo-voie, 5 - voie provisoire.';


--
-- TOC entry 4270 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN commune.indldnbat; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN commune.indldnbat IS 'Indicateur lieu-dit non bâti - Zone servie uniquement pour les lieux-dits.Permet d’indiquer si le lieu-dit comporte ou non un bâtiment dans MAJIC.1 pour lieu-dit non bâti, 0 sinon.';


--
-- TOC entry 4271 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN commune.motclas; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN commune.motclas IS 'Mot classant - Dernier mot entièrement alphabétique du libellé de voie - Permet de restituer l''ordre alphabétique.';


--
-- TOC entry 340 (class 1259 OID 54017)
-- Name: commune_id; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE commune_id (
    ogc_fid integer NOT NULL,
    object_rid character varying,
    idu character varying,
    tex2 character varying,
    creat_date integer,
    update_date integer,
    geom public.geometry(Geometry,2154)
);


ALTER TABLE commune_id OWNER TO postgres;

--
-- TOC entry 339 (class 1259 OID 54015)
-- Name: commune_id_ogc_fid_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE commune_id_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE commune_id_ogc_fid_seq OWNER TO postgres;

--
-- TOC entry 4272 (class 0 OID 0)
-- Dependencies: 339
-- Name: commune_id_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE commune_id_ogc_fid_seq OWNED BY commune_id.ogc_fid;


--
-- TOC entry 222 (class 1259 OID 53371)
-- Name: commune_majic; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE commune_majic (
    commune character varying(10),
    annee character varying(4),
    ccodep character varying(2),
    ccodir character varying(1),
    ccocom character varying(3),
    libcom character varying(50),
    lot character varying
);


ALTER TABLE commune_majic OWNER TO postgres;

--
-- TOC entry 4273 (class 0 OID 0)
-- Dependencies: 222
-- Name: TABLE commune_majic; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE commune_majic IS 'Commune (MAJIC - introduit depuis le millésime 2015). Cet article contient le code INSEE associé au libellé de la commune.';


--
-- TOC entry 4274 (class 0 OID 0)
-- Dependencies: 222
-- Name: COLUMN commune_majic.ccodep; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN commune_majic.ccodep IS 'Code département - Code département INSEE';


--
-- TOC entry 4275 (class 0 OID 0)
-- Dependencies: 222
-- Name: COLUMN commune_majic.ccodir; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN commune_majic.ccodir IS 'Code direction - Code direction dge';


--
-- TOC entry 4276 (class 0 OID 0)
-- Dependencies: 222
-- Name: COLUMN commune_majic.ccocom; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN commune_majic.ccocom IS 'Code commune - 3 caractères';


--
-- TOC entry 4277 (class 0 OID 0)
-- Dependencies: 222
-- Name: COLUMN commune_majic.libcom; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN commune_majic.libcom IS 'Libellé de la commune';


--
-- TOC entry 217 (class 1259 OID 53341)
-- Name: comptecommunal; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE comptecommunal (
    comptecommunal character varying(15),
    annee character varying(4),
    ccodep character varying(2),
    ccodir character varying(1),
    ccocom character varying(3),
    dnupro character varying(6),
    ajoutcoherence character varying(1),
    lot character varying
);


ALTER TABLE comptecommunal OWNER TO postgres;

--
-- TOC entry 342 (class 1259 OID 54026)
-- Name: croix_id; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE croix_id (
    ogc_fid integer NOT NULL,
    object_rid character varying,
    creat_date integer,
    update_date integer,
    geom public.geometry(Geometry,2154)
);


ALTER TABLE croix_id OWNER TO postgres;

--
-- TOC entry 341 (class 1259 OID 54024)
-- Name: croix_id_ogc_fid_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE croix_id_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE croix_id_ogc_fid_seq OWNER TO postgres;

--
-- TOC entry 4278 (class 0 OID 0)
-- Dependencies: 341
-- Name: croix_id_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE croix_id_ogc_fid_seq OWNED BY croix_id.ogc_fid;


--
-- TOC entry 243 (class 1259 OID 53533)
-- Name: ctpdl; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE ctpdl (
    ctpdl character varying(3) NOT NULL,
    ctpdl_lib character varying
);


ALTER TABLE ctpdl OWNER TO postgres;

--
-- TOC entry 261 (class 1259 OID 53677)
-- Name: dformjur; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE dformjur (
    dformjur character varying(4) NOT NULL,
    formjur text,
    libformjur text
);


ALTER TABLE dformjur OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 53485)
-- Name: dnatlc; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE dnatlc (
    dnatlc character varying(1) NOT NULL,
    dnatlc_lib character varying
);


ALTER TABLE dnatlc OWNER TO postgres;

--
-- TOC entry 249 (class 1259 OID 53581)
-- Name: dnatpr; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE dnatpr (
    dnatpr character varying(3) NOT NULL,
    dnatpr_lib character varying
);


ALTER TABLE dnatpr OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 53413)
-- Name: dsgrpf; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE dsgrpf (
    dsgrpf character varying(2) NOT NULL,
    dsgrpf_lib character varying
);


ALTER TABLE dsgrpf OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 53453)
-- Name: dteloc; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE dteloc (
    dteloc character varying(1) NOT NULL,
    dteloc_lib character varying
);


ALTER TABLE dteloc OWNER TO postgres;

--
-- TOC entry 330 (class 1259 OID 53973)
-- Name: edigeo_rel; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE edigeo_rel (
    edigeo_rel integer NOT NULL,
    nom character varying(30),
    de character varying(80),
    vers character varying(80)
);


ALTER TABLE edigeo_rel OWNER TO postgres;

--
-- TOC entry 329 (class 1259 OID 53971)
-- Name: edigeo_rel_edigeo_rel_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE edigeo_rel_edigeo_rel_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE edigeo_rel_edigeo_rel_seq OWNER TO postgres;

--
-- TOC entry 4279 (class 0 OID 0)
-- Dependencies: 329
-- Name: edigeo_rel_edigeo_rel_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE edigeo_rel_edigeo_rel_seq OWNED BY edigeo_rel.edigeo_rel;


--
-- TOC entry 199 (class 1259 OID 53233)
-- Name: fanr; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE fanr (
    tmp character varying(550)
);


ALTER TABLE fanr OWNER TO postgres;

--
-- TOC entry 287 (class 1259 OID 53796)
-- Name: geo_batiment; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE geo_batiment (
    geo_batiment character varying NOT NULL,
    annee character varying(4) NOT NULL,
    object_rid character varying(80),
    geo_dur character varying(2),
    tex character varying,
    creat_date date,
    update_dat date,
    lot character varying,
    geom public.geometry(MultiPolygon,2154)
);


ALTER TABLE geo_batiment OWNER TO postgres;

--
-- TOC entry 4280 (class 0 OID 0)
-- Dependencies: 287
-- Name: TABLE geo_batiment; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE geo_batiment IS 'Construction assise sur une ou plusieurs parcelles cadastrales.';


--
-- TOC entry 4281 (class 0 OID 0)
-- Dependencies: 287
-- Name: COLUMN geo_batiment.geo_batiment; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_batiment.geo_batiment IS 'Identifiant';


--
-- TOC entry 4282 (class 0 OID 0)
-- Dependencies: 287
-- Name: COLUMN geo_batiment.annee; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_batiment.annee IS 'Année';


--
-- TOC entry 4283 (class 0 OID 0)
-- Dependencies: 287
-- Name: COLUMN geo_batiment.object_rid; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_batiment.object_rid IS 'Numéro d''objet';


--
-- TOC entry 4284 (class 0 OID 0)
-- Dependencies: 287
-- Name: COLUMN geo_batiment.geo_dur; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_batiment.geo_dur IS 'Type de bâtiment';


--
-- TOC entry 4285 (class 0 OID 0)
-- Dependencies: 287
-- Name: COLUMN geo_batiment.tex; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_batiment.tex IS 'Texte du bâtiment';


--
-- TOC entry 4286 (class 0 OID 0)
-- Dependencies: 287
-- Name: COLUMN geo_batiment.creat_date; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_batiment.creat_date IS 'Date de création';


--
-- TOC entry 4287 (class 0 OID 0)
-- Dependencies: 287
-- Name: COLUMN geo_batiment.update_dat; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_batiment.update_dat IS 'Date de dernière modification';


--
-- TOC entry 289 (class 1259 OID 53804)
-- Name: geo_batiment_parcelle; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE geo_batiment_parcelle (
    geo_batiment_parcelle integer NOT NULL,
    annee character varying(4) NOT NULL,
    geo_batiment character varying NOT NULL,
    geo_parcelle character varying(19) NOT NULL
);


ALTER TABLE geo_batiment_parcelle OWNER TO postgres;

--
-- TOC entry 4288 (class 0 OID 0)
-- Dependencies: 289
-- Name: TABLE geo_batiment_parcelle; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE geo_batiment_parcelle IS 'Lien subdivision fiscale - parcelle';


--
-- TOC entry 4289 (class 0 OID 0)
-- Dependencies: 289
-- Name: COLUMN geo_batiment_parcelle.geo_batiment_parcelle; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_batiment_parcelle.geo_batiment_parcelle IS 'Identifiant';


--
-- TOC entry 4290 (class 0 OID 0)
-- Dependencies: 289
-- Name: COLUMN geo_batiment_parcelle.annee; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_batiment_parcelle.annee IS 'Année';


--
-- TOC entry 4291 (class 0 OID 0)
-- Dependencies: 289
-- Name: COLUMN geo_batiment_parcelle.geo_batiment; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_batiment_parcelle.geo_batiment IS 'Bâtiment';


--
-- TOC entry 4292 (class 0 OID 0)
-- Dependencies: 289
-- Name: COLUMN geo_batiment_parcelle.geo_parcelle; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_batiment_parcelle.geo_parcelle IS 'Parcelle';


--
-- TOC entry 288 (class 1259 OID 53802)
-- Name: geo_batiment_parcelle_geo_batiment_parcelle_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE geo_batiment_parcelle_geo_batiment_parcelle_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE geo_batiment_parcelle_geo_batiment_parcelle_seq OWNER TO postgres;

--
-- TOC entry 4293 (class 0 OID 0)
-- Dependencies: 288
-- Name: geo_batiment_parcelle_geo_batiment_parcelle_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE geo_batiment_parcelle_geo_batiment_parcelle_seq OWNED BY geo_batiment_parcelle.geo_batiment_parcelle;


--
-- TOC entry 304 (class 1259 OID 53874)
-- Name: geo_borne; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE geo_borne (
    geo_borne integer NOT NULL,
    annee character varying(4) NOT NULL,
    object_rid character varying(80),
    creat_date date,
    update_dat date,
    lot character varying,
    geom public.geometry(Point,2154)
);


ALTER TABLE geo_borne OWNER TO postgres;

--
-- TOC entry 4294 (class 0 OID 0)
-- Dependencies: 304
-- Name: TABLE geo_borne; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE geo_borne IS 'Borne située en limite de propriété et représentée par un symbole ponctuel.';


--
-- TOC entry 4295 (class 0 OID 0)
-- Dependencies: 304
-- Name: COLUMN geo_borne.geo_borne; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_borne.geo_borne IS 'Identifiant';


--
-- TOC entry 4296 (class 0 OID 0)
-- Dependencies: 304
-- Name: COLUMN geo_borne.annee; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_borne.annee IS 'Année';


--
-- TOC entry 4297 (class 0 OID 0)
-- Dependencies: 304
-- Name: COLUMN geo_borne.object_rid; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_borne.object_rid IS 'Numéro d''objet';


--
-- TOC entry 4298 (class 0 OID 0)
-- Dependencies: 304
-- Name: COLUMN geo_borne.creat_date; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_borne.creat_date IS 'Date de création';


--
-- TOC entry 4299 (class 0 OID 0)
-- Dependencies: 304
-- Name: COLUMN geo_borne.update_dat; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_borne.update_dat IS 'Date de dernière modification';


--
-- TOC entry 303 (class 1259 OID 53872)
-- Name: geo_borne_geo_borne_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE geo_borne_geo_borne_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE geo_borne_geo_borne_seq OWNER TO postgres;

--
-- TOC entry 4300 (class 0 OID 0)
-- Dependencies: 303
-- Name: geo_borne_geo_borne_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE geo_borne_geo_borne_seq OWNED BY geo_borne.geo_borne;


--
-- TOC entry 306 (class 1259 OID 53883)
-- Name: geo_borne_parcelle; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE geo_borne_parcelle (
    geo_borne_parcelle integer NOT NULL,
    annee character varying(4) NOT NULL,
    geo_borne integer NOT NULL,
    geo_parcelle character varying(19) NOT NULL
);


ALTER TABLE geo_borne_parcelle OWNER TO postgres;

--
-- TOC entry 4301 (class 0 OID 0)
-- Dependencies: 306
-- Name: TABLE geo_borne_parcelle; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE geo_borne_parcelle IS 'Lien borne - parcelle';


--
-- TOC entry 4302 (class 0 OID 0)
-- Dependencies: 306
-- Name: COLUMN geo_borne_parcelle.geo_borne_parcelle; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_borne_parcelle.geo_borne_parcelle IS 'Identifiant';


--
-- TOC entry 4303 (class 0 OID 0)
-- Dependencies: 306
-- Name: COLUMN geo_borne_parcelle.annee; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_borne_parcelle.annee IS 'Année';


--
-- TOC entry 4304 (class 0 OID 0)
-- Dependencies: 306
-- Name: COLUMN geo_borne_parcelle.geo_borne; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_borne_parcelle.geo_borne IS 'borne';


--
-- TOC entry 4305 (class 0 OID 0)
-- Dependencies: 306
-- Name: COLUMN geo_borne_parcelle.geo_parcelle; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_borne_parcelle.geo_parcelle IS 'Parcelle';


--
-- TOC entry 305 (class 1259 OID 53881)
-- Name: geo_borne_parcelle_geo_borne_parcelle_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE geo_borne_parcelle_geo_borne_parcelle_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE geo_borne_parcelle_geo_borne_parcelle_seq OWNER TO postgres;

--
-- TOC entry 4306 (class 0 OID 0)
-- Dependencies: 305
-- Name: geo_borne_parcelle_geo_borne_parcelle_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE geo_borne_parcelle_geo_borne_parcelle_seq OWNED BY geo_borne_parcelle.geo_borne_parcelle;


--
-- TOC entry 296 (class 1259 OID 53838)
-- Name: geo_can; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE geo_can (
    geo_can character varying(2) NOT NULL,
    geo_can_lib character varying(150)
);


ALTER TABLE geo_can OWNER TO postgres;

--
-- TOC entry 263 (class 1259 OID 53687)
-- Name: geo_commune; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE geo_commune (
    geo_commune character varying(7) NOT NULL,
    annee character varying(4) NOT NULL,
    object_rid character varying(80),
    idu character varying(3),
    tex2 character varying(80),
    creat_date date,
    update_dat date,
    commune character varying(10),
    lot character varying,
    ogc_fid integer NOT NULL,
    geom public.geometry(MultiPolygon,2154)
);


ALTER TABLE geo_commune OWNER TO postgres;

--
-- TOC entry 4307 (class 0 OID 0)
-- Dependencies: 263
-- Name: TABLE geo_commune; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE geo_commune IS 'Territoire contenant un nombre entier de subdivisions de section cadastrales';


--
-- TOC entry 4308 (class 0 OID 0)
-- Dependencies: 263
-- Name: COLUMN geo_commune.geo_commune; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_commune.geo_commune IS 'Identifiant';


--
-- TOC entry 4309 (class 0 OID 0)
-- Dependencies: 263
-- Name: COLUMN geo_commune.annee; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_commune.annee IS 'Année';


--
-- TOC entry 4310 (class 0 OID 0)
-- Dependencies: 263
-- Name: COLUMN geo_commune.object_rid; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_commune.object_rid IS 'Numéro d''objet';


--
-- TOC entry 4311 (class 0 OID 0)
-- Dependencies: 263
-- Name: COLUMN geo_commune.idu; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_commune.idu IS 'Code INSEE';


--
-- TOC entry 4312 (class 0 OID 0)
-- Dependencies: 263
-- Name: COLUMN geo_commune.tex2; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_commune.tex2 IS 'Nom commune';


--
-- TOC entry 4313 (class 0 OID 0)
-- Dependencies: 263
-- Name: COLUMN geo_commune.creat_date; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_commune.creat_date IS 'Date de création';


--
-- TOC entry 4314 (class 0 OID 0)
-- Dependencies: 263
-- Name: COLUMN geo_commune.update_dat; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_commune.update_dat IS 'Date de dernière modification';


--
-- TOC entry 262 (class 1259 OID 53685)
-- Name: geo_commune_ogc_fid_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE geo_commune_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE geo_commune_ogc_fid_seq OWNER TO postgres;

--
-- TOC entry 4315 (class 0 OID 0)
-- Dependencies: 262
-- Name: geo_commune_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE geo_commune_ogc_fid_seq OWNED BY geo_commune.ogc_fid;


--
-- TOC entry 267 (class 1259 OID 53708)
-- Name: geo_copl; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE geo_copl (
    geo_copl character varying(2) NOT NULL,
    geo_copl_lib character varying(150)
);


ALTER TABLE geo_copl OWNER TO postgres;

--
-- TOC entry 308 (class 1259 OID 53889)
-- Name: geo_croix; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE geo_croix (
    geo_croix integer NOT NULL,
    annee character varying(4) NOT NULL,
    object_rid character varying(80),
    creat_date date,
    update_dat date,
    lot character varying,
    geom public.geometry(Point,2154)
);


ALTER TABLE geo_croix OWNER TO postgres;

--
-- TOC entry 4316 (class 0 OID 0)
-- Dependencies: 308
-- Name: TABLE geo_croix; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE geo_croix IS 'Borne située en limite de propriété et représentée par un symbole ponctuel.';


--
-- TOC entry 4317 (class 0 OID 0)
-- Dependencies: 308
-- Name: COLUMN geo_croix.geo_croix; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_croix.geo_croix IS 'Identifiant';


--
-- TOC entry 4318 (class 0 OID 0)
-- Dependencies: 308
-- Name: COLUMN geo_croix.annee; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_croix.annee IS 'Année';


--
-- TOC entry 4319 (class 0 OID 0)
-- Dependencies: 308
-- Name: COLUMN geo_croix.object_rid; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_croix.object_rid IS 'Numéro d''objet';


--
-- TOC entry 4320 (class 0 OID 0)
-- Dependencies: 308
-- Name: COLUMN geo_croix.creat_date; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_croix.creat_date IS 'Date de création';


--
-- TOC entry 4321 (class 0 OID 0)
-- Dependencies: 308
-- Name: COLUMN geo_croix.update_dat; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_croix.update_dat IS 'Date de dernière modification';


--
-- TOC entry 307 (class 1259 OID 53887)
-- Name: geo_croix_geo_croix_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE geo_croix_geo_croix_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE geo_croix_geo_croix_seq OWNER TO postgres;

--
-- TOC entry 4322 (class 0 OID 0)
-- Dependencies: 307
-- Name: geo_croix_geo_croix_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE geo_croix_geo_croix_seq OWNED BY geo_croix.geo_croix;


--
-- TOC entry 310 (class 1259 OID 53898)
-- Name: geo_croix_parcelle; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE geo_croix_parcelle (
    geo_croix_parcelle integer NOT NULL,
    annee character varying(4) NOT NULL,
    geo_croix integer NOT NULL,
    geo_parcelle character varying(19) NOT NULL
);


ALTER TABLE geo_croix_parcelle OWNER TO postgres;

--
-- TOC entry 4323 (class 0 OID 0)
-- Dependencies: 310
-- Name: TABLE geo_croix_parcelle; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE geo_croix_parcelle IS 'Lien croix - parcelle';


--
-- TOC entry 4324 (class 0 OID 0)
-- Dependencies: 310
-- Name: COLUMN geo_croix_parcelle.geo_croix_parcelle; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_croix_parcelle.geo_croix_parcelle IS 'Identifiant';


--
-- TOC entry 4325 (class 0 OID 0)
-- Dependencies: 310
-- Name: COLUMN geo_croix_parcelle.annee; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_croix_parcelle.annee IS 'Année';


--
-- TOC entry 4326 (class 0 OID 0)
-- Dependencies: 310
-- Name: COLUMN geo_croix_parcelle.geo_croix; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_croix_parcelle.geo_croix IS 'Croix';


--
-- TOC entry 4327 (class 0 OID 0)
-- Dependencies: 310
-- Name: COLUMN geo_croix_parcelle.geo_parcelle; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_croix_parcelle.geo_parcelle IS 'Parcelle';


--
-- TOC entry 309 (class 1259 OID 53896)
-- Name: geo_croix_parcelle_geo_croix_parcelle_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE geo_croix_parcelle_geo_croix_parcelle_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE geo_croix_parcelle_geo_croix_parcelle_seq OWNER TO postgres;

--
-- TOC entry 4328 (class 0 OID 0)
-- Dependencies: 309
-- Name: geo_croix_parcelle_geo_croix_parcelle_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE geo_croix_parcelle_geo_croix_parcelle_seq OWNED BY geo_croix_parcelle.geo_croix_parcelle;


--
-- TOC entry 286 (class 1259 OID 53791)
-- Name: geo_dur; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE geo_dur (
    geo_dur character varying(2) NOT NULL,
    geo_dur_lib character varying(150)
);


ALTER TABLE geo_dur OWNER TO postgres;

--
-- TOC entry 270 (class 1259 OID 53724)
-- Name: geo_indp; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE geo_indp (
    geo_indp character varying(2) NOT NULL,
    geo_indp_lib character varying(150)
);


ALTER TABLE geo_indp OWNER TO postgres;

--
-- TOC entry 268 (class 1259 OID 53713)
-- Name: geo_inp; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE geo_inp (
    geo_inp character varying(2) NOT NULL,
    geo_inp_lib character varying(150)
);


ALTER TABLE geo_inp OWNER TO postgres;

--
-- TOC entry 328 (class 1259 OID 53964)
-- Name: geo_label; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE geo_label (
    ogc_fid integer NOT NULL,
    object_rid character varying(80),
    fon character varying(80),
    hei numeric(24,15),
    tyu character varying(80),
    cef numeric(24,15),
    csp numeric(24,15),
    di1 numeric(24,15),
    di2 numeric(24,15),
    di3 numeric(24,15),
    di4 numeric(24,15),
    tpa character varying(80),
    hta character varying(80),
    vta character varying(80),
    atr character varying(80),
    ogr_obj_lnk character varying,
    ogr_obj_lnk_layer character varying,
    ogr_atr_val character varying,
    ogr_angle double precision,
    ogr_font_size double precision,
    x_label numeric,
    y_label numeric,
    geom public.geometry(Point,2154)
);


ALTER TABLE geo_label OWNER TO postgres;

--
-- TOC entry 4329 (class 0 OID 0)
-- Dependencies: 328
-- Name: TABLE geo_label; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE geo_label IS 'Libellés';


--
-- TOC entry 4330 (class 0 OID 0)
-- Dependencies: 328
-- Name: COLUMN geo_label.ogc_fid; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_label.ogc_fid IS 'Numéro d''enregistrement source';


--
-- TOC entry 4331 (class 0 OID 0)
-- Dependencies: 328
-- Name: COLUMN geo_label.object_rid; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_label.object_rid IS 'Numéro d''objet';


--
-- TOC entry 4332 (class 0 OID 0)
-- Dependencies: 328
-- Name: COLUMN geo_label.fon; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_label.fon IS 'Nom en clair de la police typographique';


--
-- TOC entry 4333 (class 0 OID 0)
-- Dependencies: 328
-- Name: COLUMN geo_label.hei; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_label.hei IS 'Hauteur des caractères';


--
-- TOC entry 4334 (class 0 OID 0)
-- Dependencies: 328
-- Name: COLUMN geo_label.tyu; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_label.tyu IS 'Type de l''unité utilisée';


--
-- TOC entry 4335 (class 0 OID 0)
-- Dependencies: 328
-- Name: COLUMN geo_label.cef; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_label.cef IS 'Facteur d''agrandissement';


--
-- TOC entry 4336 (class 0 OID 0)
-- Dependencies: 328
-- Name: COLUMN geo_label.csp; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_label.csp IS 'Espacement intercaractères';


--
-- TOC entry 4337 (class 0 OID 0)
-- Dependencies: 328
-- Name: COLUMN geo_label.di1; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_label.di1 IS 'Orientation composante X du vecteur hauteur';


--
-- TOC entry 4338 (class 0 OID 0)
-- Dependencies: 328
-- Name: COLUMN geo_label.di2; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_label.di2 IS 'Orientation composante Y du vecteur hauteur';


--
-- TOC entry 4339 (class 0 OID 0)
-- Dependencies: 328
-- Name: COLUMN geo_label.di3; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_label.di3 IS 'Orientation composante X du vecteur base';


--
-- TOC entry 4340 (class 0 OID 0)
-- Dependencies: 328
-- Name: COLUMN geo_label.di4; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_label.di4 IS 'Orientation composante Y du vecteur base';


--
-- TOC entry 4341 (class 0 OID 0)
-- Dependencies: 328
-- Name: COLUMN geo_label.tpa; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_label.tpa IS 'Sens de l''écriture';


--
-- TOC entry 4342 (class 0 OID 0)
-- Dependencies: 328
-- Name: COLUMN geo_label.hta; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_label.hta IS 'Alignement horizontal du texte';


--
-- TOC entry 4343 (class 0 OID 0)
-- Dependencies: 328
-- Name: COLUMN geo_label.vta; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_label.vta IS 'Alignement vertical du texte';


--
-- TOC entry 4344 (class 0 OID 0)
-- Dependencies: 328
-- Name: COLUMN geo_label.atr; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_label.atr IS 'Identificateur de l''attribut à écrire';


--
-- TOC entry 4345 (class 0 OID 0)
-- Dependencies: 328
-- Name: COLUMN geo_label.ogr_obj_lnk; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_label.ogr_obj_lnk IS 'lien n°objet';


--
-- TOC entry 4346 (class 0 OID 0)
-- Dependencies: 328
-- Name: COLUMN geo_label.ogr_obj_lnk_layer; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_label.ogr_obj_lnk_layer IS 'type objet';


--
-- TOC entry 4347 (class 0 OID 0)
-- Dependencies: 328
-- Name: COLUMN geo_label.ogr_atr_val; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_label.ogr_atr_val IS 'Ogr valeur';


--
-- TOC entry 4348 (class 0 OID 0)
-- Dependencies: 328
-- Name: COLUMN geo_label.ogr_angle; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_label.ogr_angle IS 'Ogr angle';


--
-- TOC entry 4349 (class 0 OID 0)
-- Dependencies: 328
-- Name: COLUMN geo_label.ogr_font_size; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_label.ogr_font_size IS 'Ogr taille fonte';


--
-- TOC entry 4350 (class 0 OID 0)
-- Dependencies: 328
-- Name: COLUMN geo_label.x_label; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_label.x_label IS 'Longitude';


--
-- TOC entry 4351 (class 0 OID 0)
-- Dependencies: 328
-- Name: COLUMN geo_label.y_label; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_label.y_label IS 'Latitude';


--
-- TOC entry 327 (class 1259 OID 53962)
-- Name: geo_label_ogc_fid_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE geo_label_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE geo_label_ogc_fid_seq OWNER TO postgres;

--
-- TOC entry 4352 (class 0 OID 0)
-- Dependencies: 327
-- Name: geo_label_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE geo_label_ogc_fid_seq OWNED BY geo_label.ogc_fid;


--
-- TOC entry 285 (class 1259 OID 53784)
-- Name: geo_lieudit; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE geo_lieudit (
    geo_lieudit integer NOT NULL,
    annee character varying(4) NOT NULL,
    object_rid character varying(80),
    tex character varying,
    creat_date date,
    update_dat date,
    lot character varying,
    geom public.geometry(MultiPolygon,2154)
);


ALTER TABLE geo_lieudit OWNER TO postgres;

--
-- TOC entry 4353 (class 0 OID 0)
-- Dependencies: 285
-- Name: TABLE geo_lieudit; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE geo_lieudit IS 'Ensemble de parcelles entières comportant une même dénomination géographique résultant de l''usage.';


--
-- TOC entry 4354 (class 0 OID 0)
-- Dependencies: 285
-- Name: COLUMN geo_lieudit.geo_lieudit; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_lieudit.geo_lieudit IS 'Identifiant';


--
-- TOC entry 4355 (class 0 OID 0)
-- Dependencies: 285
-- Name: COLUMN geo_lieudit.annee; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_lieudit.annee IS 'Année';


--
-- TOC entry 4356 (class 0 OID 0)
-- Dependencies: 285
-- Name: COLUMN geo_lieudit.object_rid; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_lieudit.object_rid IS 'Numéro d''objet';


--
-- TOC entry 4357 (class 0 OID 0)
-- Dependencies: 285
-- Name: COLUMN geo_lieudit.tex; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_lieudit.tex IS 'Libellé';


--
-- TOC entry 4358 (class 0 OID 0)
-- Dependencies: 285
-- Name: COLUMN geo_lieudit.creat_date; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_lieudit.creat_date IS 'Date de création';


--
-- TOC entry 4359 (class 0 OID 0)
-- Dependencies: 285
-- Name: COLUMN geo_lieudit.update_dat; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_lieudit.update_dat IS 'Date de dernière modification';


--
-- TOC entry 284 (class 1259 OID 53782)
-- Name: geo_lieudit_geo_lieudit_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE geo_lieudit_geo_lieudit_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE geo_lieudit_geo_lieudit_seq OWNER TO postgres;

--
-- TOC entry 4360 (class 0 OID 0)
-- Dependencies: 284
-- Name: geo_lieudit_geo_lieudit_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE geo_lieudit_geo_lieudit_seq OWNED BY geo_lieudit.geo_lieudit;


--
-- TOC entry 299 (class 1259 OID 53853)
-- Name: geo_map; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE geo_map (
    geo_map character varying(2) NOT NULL,
    geo_map_lib character varying(150)
);


ALTER TABLE geo_map OWNER TO postgres;

--
-- TOC entry 281 (class 1259 OID 53769)
-- Name: geo_numvoie; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE geo_numvoie (
    geo_numvoie integer NOT NULL,
    annee character varying(4) NOT NULL,
    object_rid character varying(80),
    tex character varying,
    creat_date date,
    update_dat date,
    lot character varying,
    geom public.geometry(Point,2154)
);


ALTER TABLE geo_numvoie OWNER TO postgres;

--
-- TOC entry 4361 (class 0 OID 0)
-- Dependencies: 281
-- Name: TABLE geo_numvoie; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE geo_numvoie IS 'Numéro correspondant à l''adresse de la parcelle.';


--
-- TOC entry 4362 (class 0 OID 0)
-- Dependencies: 281
-- Name: COLUMN geo_numvoie.geo_numvoie; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_numvoie.geo_numvoie IS 'Identifiant';


--
-- TOC entry 4363 (class 0 OID 0)
-- Dependencies: 281
-- Name: COLUMN geo_numvoie.annee; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_numvoie.annee IS 'Année';


--
-- TOC entry 4364 (class 0 OID 0)
-- Dependencies: 281
-- Name: COLUMN geo_numvoie.object_rid; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_numvoie.object_rid IS 'Numéro d''objet';


--
-- TOC entry 4365 (class 0 OID 0)
-- Dependencies: 281
-- Name: COLUMN geo_numvoie.tex; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_numvoie.tex IS 'Numéro';


--
-- TOC entry 4366 (class 0 OID 0)
-- Dependencies: 281
-- Name: COLUMN geo_numvoie.creat_date; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_numvoie.creat_date IS 'Date de création';


--
-- TOC entry 4367 (class 0 OID 0)
-- Dependencies: 281
-- Name: COLUMN geo_numvoie.update_dat; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_numvoie.update_dat IS 'Date de dernière modification';


--
-- TOC entry 280 (class 1259 OID 53767)
-- Name: geo_numvoie_geo_numvoie_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE geo_numvoie_geo_numvoie_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE geo_numvoie_geo_numvoie_seq OWNER TO postgres;

--
-- TOC entry 4368 (class 0 OID 0)
-- Dependencies: 280
-- Name: geo_numvoie_geo_numvoie_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE geo_numvoie_geo_numvoie_seq OWNED BY geo_numvoie.geo_numvoie;


--
-- TOC entry 283 (class 1259 OID 53778)
-- Name: geo_numvoie_parcelle; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE geo_numvoie_parcelle (
    geo_numvoie_parcelle integer NOT NULL,
    annee character varying(4) NOT NULL,
    geo_numvoie integer NOT NULL,
    geo_parcelle character varying(19) NOT NULL
);


ALTER TABLE geo_numvoie_parcelle OWNER TO postgres;

--
-- TOC entry 4369 (class 0 OID 0)
-- Dependencies: 283
-- Name: TABLE geo_numvoie_parcelle; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE geo_numvoie_parcelle IS 'Lien subdivision fiscale - parcelle';


--
-- TOC entry 4370 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN geo_numvoie_parcelle.geo_numvoie_parcelle; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_numvoie_parcelle.geo_numvoie_parcelle IS 'Identifiant';


--
-- TOC entry 4371 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN geo_numvoie_parcelle.annee; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_numvoie_parcelle.annee IS 'Année';


--
-- TOC entry 4372 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN geo_numvoie_parcelle.geo_numvoie; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_numvoie_parcelle.geo_numvoie IS 'Subdivision fiscale';


--
-- TOC entry 4373 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN geo_numvoie_parcelle.geo_parcelle; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_numvoie_parcelle.geo_parcelle IS 'Parcelle';


--
-- TOC entry 282 (class 1259 OID 53776)
-- Name: geo_numvoie_parcelle_geo_numvoie_parcelle_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE geo_numvoie_parcelle_geo_numvoie_parcelle_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE geo_numvoie_parcelle_geo_numvoie_parcelle_seq OWNER TO postgres;

--
-- TOC entry 4374 (class 0 OID 0)
-- Dependencies: 282
-- Name: geo_numvoie_parcelle_geo_numvoie_parcelle_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE geo_numvoie_parcelle_geo_numvoie_parcelle_seq OWNED BY geo_numvoie_parcelle.geo_numvoie_parcelle;


--
-- TOC entry 298 (class 1259 OID 53848)
-- Name: geo_palt; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE geo_palt (
    geo_palt character varying(2) NOT NULL,
    geo_palt_lib character varying(150)
);


ALTER TABLE geo_palt OWNER TO postgres;

--
-- TOC entry 272 (class 1259 OID 53731)
-- Name: geo_parcelle; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE geo_parcelle (
    geo_parcelle character varying(19) NOT NULL,
    annee character varying(4) NOT NULL,
    object_rid character varying(80),
    idu character varying(12),
    geo_section character varying(12) NOT NULL,
    geo_subdsect character varying(14),
    supf numeric,
    geo_indp character varying(2),
    coar character varying(2),
    tex character varying,
    tex2 character varying(80),
    codm character varying(80),
    creat_date date,
    update_dat date,
    lot character varying,
    ogc_fid integer NOT NULL,
    geom public.geometry(MultiPolygon,2154)
);


ALTER TABLE geo_parcelle OWNER TO postgres;

--
-- TOC entry 4375 (class 0 OID 0)
-- Dependencies: 272
-- Name: TABLE geo_parcelle; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE geo_parcelle IS 'Portion de section cadastrale disposant de caractéristiques propres au regard notamment de son échelle, sa qualité, son mode de confection. Une section a au moins une subdivision de section. Cet objet correspond à la feuille cadastrale.';


--
-- TOC entry 4376 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN geo_parcelle.geo_parcelle; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_parcelle.geo_parcelle IS 'Identifiant';


--
-- TOC entry 4377 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN geo_parcelle.annee; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_parcelle.annee IS 'Année';


--
-- TOC entry 4378 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN geo_parcelle.object_rid; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_parcelle.object_rid IS 'Numéro d''objet';


--
-- TOC entry 4379 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN geo_parcelle.idu; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_parcelle.idu IS 'Identifiant';


--
-- TOC entry 4380 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN geo_parcelle.geo_section; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_parcelle.geo_section IS 'Section';


--
-- TOC entry 4381 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN geo_parcelle.supf; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_parcelle.supf IS 'Contenance MAJIC';


--
-- TOC entry 4382 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN geo_parcelle.geo_indp; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_parcelle.geo_indp IS 'Figuration de la parcelle au plan';


--
-- TOC entry 4383 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN geo_parcelle.coar; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_parcelle.coar IS 'Code arpentage';


--
-- TOC entry 4384 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN geo_parcelle.tex; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_parcelle.tex IS 'Numéro parcellaire';


--
-- TOC entry 4385 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN geo_parcelle.tex2; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_parcelle.tex2 IS 'tex2 - non documenté';


--
-- TOC entry 4386 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN geo_parcelle.codm; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_parcelle.codm IS 'codm - non documenté';


--
-- TOC entry 4387 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN geo_parcelle.creat_date; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_parcelle.creat_date IS 'Date de création';


--
-- TOC entry 4388 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN geo_parcelle.update_dat; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_parcelle.update_dat IS 'Date de dernière modification';


--
-- TOC entry 271 (class 1259 OID 53729)
-- Name: geo_parcelle_ogc_fid_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE geo_parcelle_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE geo_parcelle_ogc_fid_seq OWNER TO postgres;

--
-- TOC entry 4389 (class 0 OID 0)
-- Dependencies: 271
-- Name: geo_parcelle_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE geo_parcelle_ogc_fid_seq OWNED BY geo_parcelle.ogc_fid;


--
-- TOC entry 297 (class 1259 OID 53843)
-- Name: geo_ppln; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE geo_ppln (
    geo_ppln character varying(2) NOT NULL,
    geo_ppln_lib character varying(150)
);


ALTER TABLE geo_ppln OWNER TO postgres;

--
-- TOC entry 302 (class 1259 OID 53865)
-- Name: geo_ptcanv; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE geo_ptcanv (
    geo_ptcanv integer NOT NULL,
    annee character varying(4) NOT NULL,
    object_rid character varying(80),
    idu character varying(8),
    geo_can character varying(2),
    geo_ppln character varying(2),
    geo_palt character varying(2),
    geo_map character varying(2),
    geo_sym character varying(2),
    creat_date date,
    update_dat date,
    lot character varying,
    geom public.geometry(Point,2154)
);


ALTER TABLE geo_ptcanv OWNER TO postgres;

--
-- TOC entry 4390 (class 0 OID 0)
-- Dependencies: 302
-- Name: TABLE geo_ptcanv; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE geo_ptcanv IS 'Objet ponctuel servant d''appui aux opérations de lever des plans..';


--
-- TOC entry 4391 (class 0 OID 0)
-- Dependencies: 302
-- Name: COLUMN geo_ptcanv.geo_ptcanv; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_ptcanv.geo_ptcanv IS 'Identifiant';


--
-- TOC entry 4392 (class 0 OID 0)
-- Dependencies: 302
-- Name: COLUMN geo_ptcanv.annee; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_ptcanv.annee IS 'Année';


--
-- TOC entry 4393 (class 0 OID 0)
-- Dependencies: 302
-- Name: COLUMN geo_ptcanv.object_rid; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_ptcanv.object_rid IS 'Numéro d''objet';


--
-- TOC entry 4394 (class 0 OID 0)
-- Dependencies: 302
-- Name: COLUMN geo_ptcanv.idu; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_ptcanv.idu IS 'Identifiant PCI';


--
-- TOC entry 4395 (class 0 OID 0)
-- Dependencies: 302
-- Name: COLUMN geo_ptcanv.geo_can; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_ptcanv.geo_can IS 'Origine du point';


--
-- TOC entry 4396 (class 0 OID 0)
-- Dependencies: 302
-- Name: COLUMN geo_ptcanv.geo_ppln; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_ptcanv.geo_ppln IS 'Précision planimétrique';


--
-- TOC entry 4397 (class 0 OID 0)
-- Dependencies: 302
-- Name: COLUMN geo_ptcanv.geo_palt; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_ptcanv.geo_palt IS 'Précision altimétrique';


--
-- TOC entry 4398 (class 0 OID 0)
-- Dependencies: 302
-- Name: COLUMN geo_ptcanv.geo_map; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_ptcanv.geo_map IS 'Stabilité de matérialisation du support';


--
-- TOC entry 4399 (class 0 OID 0)
-- Dependencies: 302
-- Name: COLUMN geo_ptcanv.geo_sym; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_ptcanv.geo_sym IS 'Genre du point';


--
-- TOC entry 4400 (class 0 OID 0)
-- Dependencies: 302
-- Name: COLUMN geo_ptcanv.creat_date; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_ptcanv.creat_date IS 'Date de création';


--
-- TOC entry 4401 (class 0 OID 0)
-- Dependencies: 302
-- Name: COLUMN geo_ptcanv.update_dat; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_ptcanv.update_dat IS 'Date de dernière modification';


--
-- TOC entry 301 (class 1259 OID 53863)
-- Name: geo_ptcanv_geo_ptcanv_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE geo_ptcanv_geo_ptcanv_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE geo_ptcanv_geo_ptcanv_seq OWNER TO postgres;

--
-- TOC entry 4402 (class 0 OID 0)
-- Dependencies: 301
-- Name: geo_ptcanv_geo_ptcanv_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE geo_ptcanv_geo_ptcanv_seq OWNED BY geo_ptcanv.geo_ptcanv;


--
-- TOC entry 266 (class 1259 OID 53703)
-- Name: geo_qupl; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE geo_qupl (
    geo_qupl character varying(2) NOT NULL,
    geo_qupl_lib character varying(150)
);


ALTER TABLE geo_qupl OWNER TO postgres;

--
-- TOC entry 265 (class 1259 OID 53696)
-- Name: geo_section; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE geo_section (
    geo_section character varying(12) NOT NULL,
    annee character varying(4) NOT NULL,
    object_rid character varying(80),
    idu character varying(8),
    tex character varying,
    geo_commune character varying(7) NOT NULL,
    creat_date date,
    update_dat date,
    lot character varying,
    ogc_fid integer NOT NULL,
    geom public.geometry(MultiPolygon,2154)
);


ALTER TABLE geo_section OWNER TO postgres;

--
-- TOC entry 4403 (class 0 OID 0)
-- Dependencies: 265
-- Name: TABLE geo_section; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE geo_section IS 'Partie du plan cadastral correspondant à une portion du territoire communal et comportant, suivant le cas, une ou plusieurs subdivisions de section';


--
-- TOC entry 4404 (class 0 OID 0)
-- Dependencies: 265
-- Name: COLUMN geo_section.geo_section; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_section.geo_section IS 'Identifiant';


--
-- TOC entry 4405 (class 0 OID 0)
-- Dependencies: 265
-- Name: COLUMN geo_section.annee; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_section.annee IS 'Année';


--
-- TOC entry 4406 (class 0 OID 0)
-- Dependencies: 265
-- Name: COLUMN geo_section.object_rid; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_section.object_rid IS 'Numéro d''objet';


--
-- TOC entry 4407 (class 0 OID 0)
-- Dependencies: 265
-- Name: COLUMN geo_section.idu; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_section.idu IS 'Identifiant';


--
-- TOC entry 4408 (class 0 OID 0)
-- Dependencies: 265
-- Name: COLUMN geo_section.tex; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_section.tex IS 'Lettre(s) de section';


--
-- TOC entry 4409 (class 0 OID 0)
-- Dependencies: 265
-- Name: COLUMN geo_section.geo_commune; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_section.geo_commune IS 'Commune';


--
-- TOC entry 4410 (class 0 OID 0)
-- Dependencies: 265
-- Name: COLUMN geo_section.creat_date; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_section.creat_date IS 'Date de création';


--
-- TOC entry 4411 (class 0 OID 0)
-- Dependencies: 265
-- Name: COLUMN geo_section.update_dat; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_section.update_dat IS 'Date de dernière modification';


--
-- TOC entry 264 (class 1259 OID 53694)
-- Name: geo_section_ogc_fid_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE geo_section_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE geo_section_ogc_fid_seq OWNER TO postgres;

--
-- TOC entry 4412 (class 0 OID 0)
-- Dependencies: 264
-- Name: geo_section_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE geo_section_ogc_fid_seq OWNED BY geo_section.ogc_fid;


--
-- TOC entry 275 (class 1259 OID 53745)
-- Name: geo_subdfisc; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE geo_subdfisc (
    geo_subdfisc integer NOT NULL,
    annee character varying(4) NOT NULL,
    object_rid character varying(80),
    tex character varying,
    creat_date date,
    update_dat date,
    lot character varying,
    geom public.geometry(MultiPolygon,2154)
);


ALTER TABLE geo_subdfisc OWNER TO postgres;

--
-- TOC entry 4413 (class 0 OID 0)
-- Dependencies: 275
-- Name: TABLE geo_subdfisc; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE geo_subdfisc IS 'Partie d''une parcelle ayant une seule nature de culture ou de propriété et constituant une unité au regard de la fiscalité directe locale.';


--
-- TOC entry 4414 (class 0 OID 0)
-- Dependencies: 275
-- Name: COLUMN geo_subdfisc.geo_subdfisc; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_subdfisc.geo_subdfisc IS 'Identifiant';


--
-- TOC entry 4415 (class 0 OID 0)
-- Dependencies: 275
-- Name: COLUMN geo_subdfisc.annee; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_subdfisc.annee IS 'Année';


--
-- TOC entry 4416 (class 0 OID 0)
-- Dependencies: 275
-- Name: COLUMN geo_subdfisc.object_rid; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_subdfisc.object_rid IS 'Numéro d''objet';


--
-- TOC entry 4417 (class 0 OID 0)
-- Dependencies: 275
-- Name: COLUMN geo_subdfisc.tex; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_subdfisc.tex IS 'Lettre d''ordre';


--
-- TOC entry 4418 (class 0 OID 0)
-- Dependencies: 275
-- Name: COLUMN geo_subdfisc.creat_date; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_subdfisc.creat_date IS 'Date de création';


--
-- TOC entry 4419 (class 0 OID 0)
-- Dependencies: 275
-- Name: COLUMN geo_subdfisc.update_dat; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_subdfisc.update_dat IS 'Date de dernière modification';


--
-- TOC entry 274 (class 1259 OID 53743)
-- Name: geo_subdfisc_geo_subdfisc_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE geo_subdfisc_geo_subdfisc_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE geo_subdfisc_geo_subdfisc_seq OWNER TO postgres;

--
-- TOC entry 4420 (class 0 OID 0)
-- Dependencies: 274
-- Name: geo_subdfisc_geo_subdfisc_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE geo_subdfisc_geo_subdfisc_seq OWNED BY geo_subdfisc.geo_subdfisc;


--
-- TOC entry 277 (class 1259 OID 53754)
-- Name: geo_subdfisc_parcelle; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE geo_subdfisc_parcelle (
    geo_subdfisc_parcelle integer NOT NULL,
    annee character varying(4) NOT NULL,
    geo_subdfisc integer NOT NULL,
    geo_parcelle character varying(19) NOT NULL
);


ALTER TABLE geo_subdfisc_parcelle OWNER TO postgres;

--
-- TOC entry 4421 (class 0 OID 0)
-- Dependencies: 277
-- Name: TABLE geo_subdfisc_parcelle; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE geo_subdfisc_parcelle IS 'Lien subdivision fiscale - parcelle';


--
-- TOC entry 4422 (class 0 OID 0)
-- Dependencies: 277
-- Name: COLUMN geo_subdfisc_parcelle.geo_subdfisc_parcelle; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_subdfisc_parcelle.geo_subdfisc_parcelle IS 'Identifiant';


--
-- TOC entry 4423 (class 0 OID 0)
-- Dependencies: 277
-- Name: COLUMN geo_subdfisc_parcelle.annee; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_subdfisc_parcelle.annee IS 'Année';


--
-- TOC entry 4424 (class 0 OID 0)
-- Dependencies: 277
-- Name: COLUMN geo_subdfisc_parcelle.geo_subdfisc; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_subdfisc_parcelle.geo_subdfisc IS 'subdivision fiscale';


--
-- TOC entry 4425 (class 0 OID 0)
-- Dependencies: 277
-- Name: COLUMN geo_subdfisc_parcelle.geo_parcelle; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_subdfisc_parcelle.geo_parcelle IS 'geo_parcelle';


--
-- TOC entry 276 (class 1259 OID 53752)
-- Name: geo_subdfisc_parcelle_geo_subdfisc_parcelle_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE geo_subdfisc_parcelle_geo_subdfisc_parcelle_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE geo_subdfisc_parcelle_geo_subdfisc_parcelle_seq OWNER TO postgres;

--
-- TOC entry 4426 (class 0 OID 0)
-- Dependencies: 276
-- Name: geo_subdfisc_parcelle_geo_subdfisc_parcelle_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE geo_subdfisc_parcelle_geo_subdfisc_parcelle_seq OWNED BY geo_subdfisc_parcelle.geo_subdfisc_parcelle;


--
-- TOC entry 269 (class 1259 OID 53718)
-- Name: geo_subdsect; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE geo_subdsect (
    geo_subdsect character varying(14) NOT NULL,
    annee character varying(4) NOT NULL,
    object_rid character varying(80),
    idu character varying(10),
    geo_section character varying(12) NOT NULL,
    geo_qupl character varying(2),
    geo_copl character varying(2),
    eor integer,
    dedi date,
    icl integer,
    dis date,
    geo_inp character varying(2),
    dred date,
    creat_date date,
    update_dat date,
    lot character varying,
    geom public.geometry(MultiPolygon,2154)
);


ALTER TABLE geo_subdsect OWNER TO postgres;

--
-- TOC entry 4427 (class 0 OID 0)
-- Dependencies: 269
-- Name: TABLE geo_subdsect; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE geo_subdsect IS 'Portion de section cadastrale disposant de caractéristiques propres au regard notamment de son échelle, sa qualité, son mode de confection. Une section a au moins une subdivision de section. Cet objet correspond à la feuille cadastrale.';


--
-- TOC entry 4428 (class 0 OID 0)
-- Dependencies: 269
-- Name: COLUMN geo_subdsect.geo_subdsect; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_subdsect.geo_subdsect IS 'Identifiant';


--
-- TOC entry 4429 (class 0 OID 0)
-- Dependencies: 269
-- Name: COLUMN geo_subdsect.annee; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_subdsect.annee IS 'Année';


--
-- TOC entry 4430 (class 0 OID 0)
-- Dependencies: 269
-- Name: COLUMN geo_subdsect.object_rid; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_subdsect.object_rid IS 'Numéro d''objet';


--
-- TOC entry 4431 (class 0 OID 0)
-- Dependencies: 269
-- Name: COLUMN geo_subdsect.idu; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_subdsect.idu IS 'Identifiant';


--
-- TOC entry 4432 (class 0 OID 0)
-- Dependencies: 269
-- Name: COLUMN geo_subdsect.geo_section; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_subdsect.geo_section IS 'Section';


--
-- TOC entry 4433 (class 0 OID 0)
-- Dependencies: 269
-- Name: COLUMN geo_subdsect.geo_qupl; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_subdsect.geo_qupl IS 'Qualité du plan';


--
-- TOC entry 4434 (class 0 OID 0)
-- Dependencies: 269
-- Name: COLUMN geo_subdsect.geo_copl; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_subdsect.geo_copl IS 'Mode de confection';


--
-- TOC entry 4435 (class 0 OID 0)
-- Dependencies: 269
-- Name: COLUMN geo_subdsect.eor; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_subdsect.eor IS 'Échelle d''origine du plan (que le dénominateur)';


--
-- TOC entry 4436 (class 0 OID 0)
-- Dependencies: 269
-- Name: COLUMN geo_subdsect.dedi; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_subdsect.dedi IS 'Date d''édition ou du confection du plan';


--
-- TOC entry 4437 (class 0 OID 0)
-- Dependencies: 269
-- Name: COLUMN geo_subdsect.icl; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_subdsect.icl IS 'Orientation d''origine (en grade)';


--
-- TOC entry 4438 (class 0 OID 0)
-- Dependencies: 269
-- Name: COLUMN geo_subdsect.dis; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_subdsect.dis IS 'Date d''incorporation PCI';


--
-- TOC entry 4439 (class 0 OID 0)
-- Dependencies: 269
-- Name: COLUMN geo_subdsect.geo_inp; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_subdsect.geo_inp IS 'Mode d''incorporation au plan';


--
-- TOC entry 4440 (class 0 OID 0)
-- Dependencies: 269
-- Name: COLUMN geo_subdsect.dred; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_subdsect.dred IS 'Date de réédition';


--
-- TOC entry 4441 (class 0 OID 0)
-- Dependencies: 269
-- Name: COLUMN geo_subdsect.creat_date; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_subdsect.creat_date IS 'Date de création';


--
-- TOC entry 4442 (class 0 OID 0)
-- Dependencies: 269
-- Name: COLUMN geo_subdsect.update_dat; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_subdsect.update_dat IS 'Date de dernière modification';


--
-- TOC entry 300 (class 1259 OID 53858)
-- Name: geo_sym; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE geo_sym (
    geo_sym character varying(2) NOT NULL,
    geo_sym_lib character varying(150)
);


ALTER TABLE geo_sym OWNER TO postgres;

--
-- TOC entry 312 (class 1259 OID 53904)
-- Name: geo_symblim; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE geo_symblim (
    geo_symblim integer NOT NULL,
    annee character varying(4) NOT NULL,
    object_rid character varying(80),
    ori numeric(12,9),
    geo_sym character varying(2),
    creat_date date,
    update_dat date,
    lot character varying,
    geom public.geometry(Point,2154)
);


ALTER TABLE geo_symblim OWNER TO postgres;

--
-- TOC entry 4443 (class 0 OID 0)
-- Dependencies: 312
-- Name: TABLE geo_symblim; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE geo_symblim IS 'Symbole de limite de propriété représenté par un signe conventionnel de type ponctuel permettant de documenter le plan cadastral et d''en améliorer la lisibilité.';


--
-- TOC entry 4444 (class 0 OID 0)
-- Dependencies: 312
-- Name: COLUMN geo_symblim.geo_symblim; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_symblim.geo_symblim IS 'Identifiant';


--
-- TOC entry 4445 (class 0 OID 0)
-- Dependencies: 312
-- Name: COLUMN geo_symblim.annee; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_symblim.annee IS 'Année';


--
-- TOC entry 4446 (class 0 OID 0)
-- Dependencies: 312
-- Name: COLUMN geo_symblim.object_rid; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_symblim.object_rid IS 'Numéro d''objet';


--
-- TOC entry 4447 (class 0 OID 0)
-- Dependencies: 312
-- Name: COLUMN geo_symblim.ori; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_symblim.ori IS 'Orientation';


--
-- TOC entry 4448 (class 0 OID 0)
-- Dependencies: 312
-- Name: COLUMN geo_symblim.geo_sym; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_symblim.geo_sym IS 'Genre';


--
-- TOC entry 4449 (class 0 OID 0)
-- Dependencies: 312
-- Name: COLUMN geo_symblim.creat_date; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_symblim.creat_date IS 'Date de création';


--
-- TOC entry 4450 (class 0 OID 0)
-- Dependencies: 312
-- Name: COLUMN geo_symblim.update_dat; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_symblim.update_dat IS 'Date de dernière modification';


--
-- TOC entry 311 (class 1259 OID 53902)
-- Name: geo_symblim_geo_symblim_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE geo_symblim_geo_symblim_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE geo_symblim_geo_symblim_seq OWNER TO postgres;

--
-- TOC entry 4451 (class 0 OID 0)
-- Dependencies: 311
-- Name: geo_symblim_geo_symblim_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE geo_symblim_geo_symblim_seq OWNED BY geo_symblim.geo_symblim;


--
-- TOC entry 314 (class 1259 OID 53913)
-- Name: geo_symblim_parcelle; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE geo_symblim_parcelle (
    geo_symblim_parcelle integer NOT NULL,
    annee character varying(4) NOT NULL,
    geo_symblim integer NOT NULL,
    geo_parcelle character varying(19) NOT NULL
);


ALTER TABLE geo_symblim_parcelle OWNER TO postgres;

--
-- TOC entry 4452 (class 0 OID 0)
-- Dependencies: 314
-- Name: TABLE geo_symblim_parcelle; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE geo_symblim_parcelle IS 'Lien symblim - parcelle';


--
-- TOC entry 4453 (class 0 OID 0)
-- Dependencies: 314
-- Name: COLUMN geo_symblim_parcelle.geo_symblim_parcelle; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_symblim_parcelle.geo_symblim_parcelle IS 'Identifiant';


--
-- TOC entry 4454 (class 0 OID 0)
-- Dependencies: 314
-- Name: COLUMN geo_symblim_parcelle.annee; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_symblim_parcelle.annee IS 'Année';


--
-- TOC entry 4455 (class 0 OID 0)
-- Dependencies: 314
-- Name: COLUMN geo_symblim_parcelle.geo_symblim; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_symblim_parcelle.geo_symblim IS 'symblim';


--
-- TOC entry 4456 (class 0 OID 0)
-- Dependencies: 314
-- Name: COLUMN geo_symblim_parcelle.geo_parcelle; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_symblim_parcelle.geo_parcelle IS 'Parcelle';


--
-- TOC entry 313 (class 1259 OID 53911)
-- Name: geo_symblim_parcelle_geo_symblim_parcelle_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE geo_symblim_parcelle_geo_symblim_parcelle_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE geo_symblim_parcelle_geo_symblim_parcelle_seq OWNER TO postgres;

--
-- TOC entry 4457 (class 0 OID 0)
-- Dependencies: 313
-- Name: geo_symblim_parcelle_geo_symblim_parcelle_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE geo_symblim_parcelle_geo_symblim_parcelle_seq OWNED BY geo_symblim_parcelle.geo_symblim_parcelle;


--
-- TOC entry 320 (class 1259 OID 53934)
-- Name: geo_tline; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE geo_tline (
    geo_tline integer NOT NULL,
    annee character varying(4) NOT NULL,
    object_rid character varying(80),
    tex character varying,
    geo_sym character varying(2),
    creat_date date,
    update_dat date,
    lot character varying,
    geom public.geometry(MultiLineString,2154)
);


ALTER TABLE geo_tline OWNER TO postgres;

--
-- TOC entry 4458 (class 0 OID 0)
-- Dependencies: 320
-- Name: TABLE geo_tline; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE geo_tline IS 'Détail topographique linéaire représenté par un signe conventionnel de type linéaire permettant de documenter le plan cadastral et d''en améliorer la lisibilité.';


--
-- TOC entry 4459 (class 0 OID 0)
-- Dependencies: 320
-- Name: COLUMN geo_tline.geo_tline; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_tline.geo_tline IS 'Identifiant';


--
-- TOC entry 4460 (class 0 OID 0)
-- Dependencies: 320
-- Name: COLUMN geo_tline.annee; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_tline.annee IS 'Année';


--
-- TOC entry 4461 (class 0 OID 0)
-- Dependencies: 320
-- Name: COLUMN geo_tline.object_rid; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_tline.object_rid IS 'Numéro d''objet';


--
-- TOC entry 4462 (class 0 OID 0)
-- Dependencies: 320
-- Name: COLUMN geo_tline.tex; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_tline.tex IS 'Texte du détail';


--
-- TOC entry 4463 (class 0 OID 0)
-- Dependencies: 320
-- Name: COLUMN geo_tline.geo_sym; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_tline.geo_sym IS 'Genre';


--
-- TOC entry 4464 (class 0 OID 0)
-- Dependencies: 320
-- Name: COLUMN geo_tline.creat_date; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_tline.creat_date IS 'Date de création';


--
-- TOC entry 4465 (class 0 OID 0)
-- Dependencies: 320
-- Name: COLUMN geo_tline.update_dat; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_tline.update_dat IS 'Date de dernière modification';


--
-- TOC entry 322 (class 1259 OID 53943)
-- Name: geo_tline_commune; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE geo_tline_commune (
    geo_tline_commune integer NOT NULL,
    annee character varying(4) NOT NULL,
    geo_tline integer NOT NULL,
    geo_commune character varying(7) NOT NULL
);


ALTER TABLE geo_tline_commune OWNER TO postgres;

--
-- TOC entry 4466 (class 0 OID 0)
-- Dependencies: 322
-- Name: TABLE geo_tline_commune; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE geo_tline_commune IS 'Lien tline - commune';


--
-- TOC entry 4467 (class 0 OID 0)
-- Dependencies: 322
-- Name: COLUMN geo_tline_commune.geo_tline_commune; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_tline_commune.geo_tline_commune IS 'Identifiant';


--
-- TOC entry 4468 (class 0 OID 0)
-- Dependencies: 322
-- Name: COLUMN geo_tline_commune.annee; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_tline_commune.annee IS 'Année';


--
-- TOC entry 4469 (class 0 OID 0)
-- Dependencies: 322
-- Name: COLUMN geo_tline_commune.geo_tline; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_tline_commune.geo_tline IS 'tline';


--
-- TOC entry 4470 (class 0 OID 0)
-- Dependencies: 322
-- Name: COLUMN geo_tline_commune.geo_commune; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_tline_commune.geo_commune IS 'commune';


--
-- TOC entry 321 (class 1259 OID 53941)
-- Name: geo_tline_commune_geo_tline_commune_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE geo_tline_commune_geo_tline_commune_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE geo_tline_commune_geo_tline_commune_seq OWNER TO postgres;

--
-- TOC entry 4471 (class 0 OID 0)
-- Dependencies: 321
-- Name: geo_tline_commune_geo_tline_commune_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE geo_tline_commune_geo_tline_commune_seq OWNED BY geo_tline_commune.geo_tline_commune;


--
-- TOC entry 319 (class 1259 OID 53932)
-- Name: geo_tline_geo_tline_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE geo_tline_geo_tline_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE geo_tline_geo_tline_seq OWNER TO postgres;

--
-- TOC entry 4472 (class 0 OID 0)
-- Dependencies: 319
-- Name: geo_tline_geo_tline_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE geo_tline_geo_tline_seq OWNED BY geo_tline.geo_tline;


--
-- TOC entry 316 (class 1259 OID 53919)
-- Name: geo_tpoint; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE geo_tpoint (
    geo_tpoint integer NOT NULL,
    annee character varying(4) NOT NULL,
    object_rid character varying(80),
    ori numeric(12,9),
    tex character varying,
    geo_sym character varying(2),
    creat_date date,
    update_dat date,
    lot character varying,
    geom public.geometry(Point,2154)
);


ALTER TABLE geo_tpoint OWNER TO postgres;

--
-- TOC entry 4473 (class 0 OID 0)
-- Dependencies: 316
-- Name: TABLE geo_tpoint; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE geo_tpoint IS 'Détail topographique ponctuel représenté par un signe conventionnel de type ponctuel permettant de documenter le plan cadastral et d''en améliorer la lisibilité.';


--
-- TOC entry 4474 (class 0 OID 0)
-- Dependencies: 316
-- Name: COLUMN geo_tpoint.geo_tpoint; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_tpoint.geo_tpoint IS 'Identifiant';


--
-- TOC entry 4475 (class 0 OID 0)
-- Dependencies: 316
-- Name: COLUMN geo_tpoint.annee; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_tpoint.annee IS 'Année';


--
-- TOC entry 4476 (class 0 OID 0)
-- Dependencies: 316
-- Name: COLUMN geo_tpoint.object_rid; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_tpoint.object_rid IS 'Numéro d''objet';


--
-- TOC entry 4477 (class 0 OID 0)
-- Dependencies: 316
-- Name: COLUMN geo_tpoint.ori; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_tpoint.ori IS 'Orientation';


--
-- TOC entry 4478 (class 0 OID 0)
-- Dependencies: 316
-- Name: COLUMN geo_tpoint.tex; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_tpoint.tex IS 'Texte du détail';


--
-- TOC entry 4479 (class 0 OID 0)
-- Dependencies: 316
-- Name: COLUMN geo_tpoint.geo_sym; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_tpoint.geo_sym IS 'Genre';


--
-- TOC entry 4480 (class 0 OID 0)
-- Dependencies: 316
-- Name: COLUMN geo_tpoint.creat_date; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_tpoint.creat_date IS 'Date de création';


--
-- TOC entry 4481 (class 0 OID 0)
-- Dependencies: 316
-- Name: COLUMN geo_tpoint.update_dat; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_tpoint.update_dat IS 'Date de dernière modification';


--
-- TOC entry 318 (class 1259 OID 53928)
-- Name: geo_tpoint_commune; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE geo_tpoint_commune (
    geo_tpoint_commune integer NOT NULL,
    annee character varying(4) NOT NULL,
    geo_tpoint integer NOT NULL,
    geo_commune character varying(7) NOT NULL
);


ALTER TABLE geo_tpoint_commune OWNER TO postgres;

--
-- TOC entry 4482 (class 0 OID 0)
-- Dependencies: 318
-- Name: TABLE geo_tpoint_commune; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE geo_tpoint_commune IS 'Lien tpoint - commune';


--
-- TOC entry 4483 (class 0 OID 0)
-- Dependencies: 318
-- Name: COLUMN geo_tpoint_commune.geo_tpoint_commune; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_tpoint_commune.geo_tpoint_commune IS 'Identifiant';


--
-- TOC entry 4484 (class 0 OID 0)
-- Dependencies: 318
-- Name: COLUMN geo_tpoint_commune.annee; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_tpoint_commune.annee IS 'Année';


--
-- TOC entry 4485 (class 0 OID 0)
-- Dependencies: 318
-- Name: COLUMN geo_tpoint_commune.geo_tpoint; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_tpoint_commune.geo_tpoint IS 'tpoint';


--
-- TOC entry 4486 (class 0 OID 0)
-- Dependencies: 318
-- Name: COLUMN geo_tpoint_commune.geo_commune; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_tpoint_commune.geo_commune IS 'commune';


--
-- TOC entry 317 (class 1259 OID 53926)
-- Name: geo_tpoint_commune_geo_tpoint_commune_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE geo_tpoint_commune_geo_tpoint_commune_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE geo_tpoint_commune_geo_tpoint_commune_seq OWNER TO postgres;

--
-- TOC entry 4487 (class 0 OID 0)
-- Dependencies: 317
-- Name: geo_tpoint_commune_geo_tpoint_commune_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE geo_tpoint_commune_geo_tpoint_commune_seq OWNED BY geo_tpoint_commune.geo_tpoint_commune;


--
-- TOC entry 315 (class 1259 OID 53917)
-- Name: geo_tpoint_geo_tpoint_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE geo_tpoint_geo_tpoint_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE geo_tpoint_geo_tpoint_seq OWNER TO postgres;

--
-- TOC entry 4488 (class 0 OID 0)
-- Dependencies: 315
-- Name: geo_tpoint_geo_tpoint_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE geo_tpoint_geo_tpoint_seq OWNED BY geo_tpoint.geo_tpoint;


--
-- TOC entry 293 (class 1259 OID 53822)
-- Name: geo_tronfluv; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE geo_tronfluv (
    geo_tronfluv integer NOT NULL,
    annee character varying(4) NOT NULL,
    object_rid character varying(80),
    tex character varying,
    creat_date date,
    update_dat date,
    lot character varying,
    geom public.geometry(MultiPolygon,2154)
);


ALTER TABLE geo_tronfluv OWNER TO postgres;

--
-- TOC entry 4489 (class 0 OID 0)
-- Dependencies: 293
-- Name: TABLE geo_tronfluv; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE geo_tronfluv IS 'Élément surfacique (fermé) utilisé pour tous les cours d''eau et les rivages de mers. Un libellé y est associé.';


--
-- TOC entry 4490 (class 0 OID 0)
-- Dependencies: 293
-- Name: COLUMN geo_tronfluv.geo_tronfluv; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_tronfluv.geo_tronfluv IS 'Identifiant';


--
-- TOC entry 4491 (class 0 OID 0)
-- Dependencies: 293
-- Name: COLUMN geo_tronfluv.annee; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_tronfluv.annee IS 'Année';


--
-- TOC entry 4492 (class 0 OID 0)
-- Dependencies: 293
-- Name: COLUMN geo_tronfluv.object_rid; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_tronfluv.object_rid IS 'Numéro d''objet';


--
-- TOC entry 4493 (class 0 OID 0)
-- Dependencies: 293
-- Name: COLUMN geo_tronfluv.tex; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_tronfluv.tex IS 'Nom du cours d''eau';


--
-- TOC entry 4494 (class 0 OID 0)
-- Dependencies: 293
-- Name: COLUMN geo_tronfluv.creat_date; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_tronfluv.creat_date IS 'Date de création';


--
-- TOC entry 4495 (class 0 OID 0)
-- Dependencies: 293
-- Name: COLUMN geo_tronfluv.update_dat; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_tronfluv.update_dat IS 'Date de dernière modification';


--
-- TOC entry 292 (class 1259 OID 53820)
-- Name: geo_tronfluv_geo_tronfluv_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE geo_tronfluv_geo_tronfluv_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE geo_tronfluv_geo_tronfluv_seq OWNER TO postgres;

--
-- TOC entry 4496 (class 0 OID 0)
-- Dependencies: 292
-- Name: geo_tronfluv_geo_tronfluv_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE geo_tronfluv_geo_tronfluv_seq OWNED BY geo_tronfluv.geo_tronfluv;


--
-- TOC entry 295 (class 1259 OID 53831)
-- Name: geo_tronroute; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE geo_tronroute (
    geo_tronroute integer NOT NULL,
    annee character varying(4) NOT NULL,
    object_rid character varying(80),
    tex character varying,
    creat_date date,
    update_dat date,
    lot character varying,
    geom public.geometry(MultiPolygon,2154)
);


ALTER TABLE geo_tronroute OWNER TO postgres;

--
-- TOC entry 4497 (class 0 OID 0)
-- Dependencies: 295
-- Name: TABLE geo_tronroute; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE geo_tronroute IS 'Élément surfacique (fermé) utilisé pour tous les tronçons de routes. Un libellé y est associé.';


--
-- TOC entry 4498 (class 0 OID 0)
-- Dependencies: 295
-- Name: COLUMN geo_tronroute.geo_tronroute; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_tronroute.geo_tronroute IS 'Identifiant';


--
-- TOC entry 4499 (class 0 OID 0)
-- Dependencies: 295
-- Name: COLUMN geo_tronroute.annee; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_tronroute.annee IS 'Année';


--
-- TOC entry 4500 (class 0 OID 0)
-- Dependencies: 295
-- Name: COLUMN geo_tronroute.object_rid; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_tronroute.object_rid IS 'Numéro d''objet';


--
-- TOC entry 4501 (class 0 OID 0)
-- Dependencies: 295
-- Name: COLUMN geo_tronroute.tex; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_tronroute.tex IS 'Nom du cours d''eau';


--
-- TOC entry 4502 (class 0 OID 0)
-- Dependencies: 295
-- Name: COLUMN geo_tronroute.creat_date; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_tronroute.creat_date IS 'Date de création';


--
-- TOC entry 4503 (class 0 OID 0)
-- Dependencies: 295
-- Name: COLUMN geo_tronroute.update_dat; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_tronroute.update_dat IS 'Date de dernière modification';


--
-- TOC entry 294 (class 1259 OID 53829)
-- Name: geo_tronroute_geo_tronroute_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE geo_tronroute_geo_tronroute_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE geo_tronroute_geo_tronroute_seq OWNER TO postgres;

--
-- TOC entry 4504 (class 0 OID 0)
-- Dependencies: 294
-- Name: geo_tronroute_geo_tronroute_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE geo_tronroute_geo_tronroute_seq OWNED BY geo_tronroute.geo_tronroute;


--
-- TOC entry 324 (class 1259 OID 53949)
-- Name: geo_tsurf; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE geo_tsurf (
    geo_tsurf integer NOT NULL,
    annee character varying(4) NOT NULL,
    object_rid character varying(80),
    tex character varying,
    geo_sym character varying(2),
    creat_date date,
    update_dat date,
    lot character varying,
    geom public.geometry(MultiPolygon,2154)
);


ALTER TABLE geo_tsurf OWNER TO postgres;

--
-- TOC entry 4505 (class 0 OID 0)
-- Dependencies: 324
-- Name: TABLE geo_tsurf; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE geo_tsurf IS 'Détail topographique surfacique représenté par un signe conventionnel de type surfacique permettant de documenter le plan cadastral et d''en améliorer la lisibilité';


--
-- TOC entry 4506 (class 0 OID 0)
-- Dependencies: 324
-- Name: COLUMN geo_tsurf.geo_tsurf; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_tsurf.geo_tsurf IS 'Identifiant';


--
-- TOC entry 4507 (class 0 OID 0)
-- Dependencies: 324
-- Name: COLUMN geo_tsurf.annee; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_tsurf.annee IS 'Année';


--
-- TOC entry 4508 (class 0 OID 0)
-- Dependencies: 324
-- Name: COLUMN geo_tsurf.object_rid; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_tsurf.object_rid IS 'Numéro d''objet';


--
-- TOC entry 4509 (class 0 OID 0)
-- Dependencies: 324
-- Name: COLUMN geo_tsurf.tex; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_tsurf.tex IS 'Texte du détail';


--
-- TOC entry 4510 (class 0 OID 0)
-- Dependencies: 324
-- Name: COLUMN geo_tsurf.geo_sym; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_tsurf.geo_sym IS 'Genre';


--
-- TOC entry 4511 (class 0 OID 0)
-- Dependencies: 324
-- Name: COLUMN geo_tsurf.creat_date; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_tsurf.creat_date IS 'Date de création';


--
-- TOC entry 4512 (class 0 OID 0)
-- Dependencies: 324
-- Name: COLUMN geo_tsurf.update_dat; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_tsurf.update_dat IS 'Date de dernière modification';


--
-- TOC entry 326 (class 1259 OID 53958)
-- Name: geo_tsurf_commune; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE geo_tsurf_commune (
    geo_tsurf_commune integer NOT NULL,
    annee character varying(4) NOT NULL,
    geo_tsurf integer NOT NULL,
    geo_commune character varying(7) NOT NULL
);


ALTER TABLE geo_tsurf_commune OWNER TO postgres;

--
-- TOC entry 4513 (class 0 OID 0)
-- Dependencies: 326
-- Name: TABLE geo_tsurf_commune; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE geo_tsurf_commune IS 'Lien tsurf - commune';


--
-- TOC entry 4514 (class 0 OID 0)
-- Dependencies: 326
-- Name: COLUMN geo_tsurf_commune.geo_tsurf_commune; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_tsurf_commune.geo_tsurf_commune IS 'Identifiant';


--
-- TOC entry 4515 (class 0 OID 0)
-- Dependencies: 326
-- Name: COLUMN geo_tsurf_commune.annee; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_tsurf_commune.annee IS 'Année';


--
-- TOC entry 4516 (class 0 OID 0)
-- Dependencies: 326
-- Name: COLUMN geo_tsurf_commune.geo_tsurf; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_tsurf_commune.geo_tsurf IS 'tsurf';


--
-- TOC entry 4517 (class 0 OID 0)
-- Dependencies: 326
-- Name: COLUMN geo_tsurf_commune.geo_commune; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_tsurf_commune.geo_commune IS 'commune';


--
-- TOC entry 325 (class 1259 OID 53956)
-- Name: geo_tsurf_commune_geo_tsurf_commune_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE geo_tsurf_commune_geo_tsurf_commune_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE geo_tsurf_commune_geo_tsurf_commune_seq OWNER TO postgres;

--
-- TOC entry 4518 (class 0 OID 0)
-- Dependencies: 325
-- Name: geo_tsurf_commune_geo_tsurf_commune_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE geo_tsurf_commune_geo_tsurf_commune_seq OWNED BY geo_tsurf_commune.geo_tsurf_commune;


--
-- TOC entry 323 (class 1259 OID 53947)
-- Name: geo_tsurf_geo_tsurf_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE geo_tsurf_geo_tsurf_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE geo_tsurf_geo_tsurf_seq OWNER TO postgres;

--
-- TOC entry 4519 (class 0 OID 0)
-- Dependencies: 323
-- Name: geo_tsurf_geo_tsurf_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE geo_tsurf_geo_tsurf_seq OWNED BY geo_tsurf.geo_tsurf;


--
-- TOC entry 332 (class 1259 OID 53981)
-- Name: geo_unite_fonciere; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE geo_unite_fonciere (
    id integer NOT NULL,
    comptecommunal character varying,
    annee character varying(4) NOT NULL,
    lot character varying,
    geom public.geometry(MultiPolygon,2154)
);


ALTER TABLE geo_unite_fonciere OWNER TO postgres;

--
-- TOC entry 4520 (class 0 OID 0)
-- Dependencies: 332
-- Name: TABLE geo_unite_fonciere; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE geo_unite_fonciere IS 'Regroupe les unités foncières, c est a dire la fusion de parcelles adjacentes d un même propriétaire';


--
-- TOC entry 4521 (class 0 OID 0)
-- Dependencies: 332
-- Name: COLUMN geo_unite_fonciere.id; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_unite_fonciere.id IS 'Identifiant des unités foncières';


--
-- TOC entry 4522 (class 0 OID 0)
-- Dependencies: 332
-- Name: COLUMN geo_unite_fonciere.comptecommunal; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_unite_fonciere.comptecommunal IS 'Compte communal des parcelles composant l unité foncière';


--
-- TOC entry 4523 (class 0 OID 0)
-- Dependencies: 332
-- Name: COLUMN geo_unite_fonciere.annee; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_unite_fonciere.annee IS 'Année';


--
-- TOC entry 331 (class 1259 OID 53979)
-- Name: geo_unite_fonciere_id_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE geo_unite_fonciere_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE geo_unite_fonciere_id_seq OWNER TO postgres;

--
-- TOC entry 4524 (class 0 OID 0)
-- Dependencies: 331
-- Name: geo_unite_fonciere_id_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE geo_unite_fonciere_id_seq OWNED BY geo_unite_fonciere.id;


--
-- TOC entry 279 (class 1259 OID 53760)
-- Name: geo_voiep; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE geo_voiep (
    geo_voiep integer NOT NULL,
    annee character varying(4) NOT NULL,
    object_rid character varying(80),
    tex character varying,
    creat_date date,
    update_dat date,
    lot character varying,
    geom public.geometry(Point,2154)
);


ALTER TABLE geo_voiep OWNER TO postgres;

--
-- TOC entry 4525 (class 0 OID 0)
-- Dependencies: 279
-- Name: TABLE geo_voiep; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE geo_voiep IS 'Élément ponctuel permettant la gestion de l''ensemble immobilier auquel est associé son libellé.';


--
-- TOC entry 4526 (class 0 OID 0)
-- Dependencies: 279
-- Name: COLUMN geo_voiep.geo_voiep; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_voiep.geo_voiep IS 'Identifiant';


--
-- TOC entry 4527 (class 0 OID 0)
-- Dependencies: 279
-- Name: COLUMN geo_voiep.annee; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_voiep.annee IS 'Année';


--
-- TOC entry 4528 (class 0 OID 0)
-- Dependencies: 279
-- Name: COLUMN geo_voiep.object_rid; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_voiep.object_rid IS 'Numéro d''objet';


--
-- TOC entry 4529 (class 0 OID 0)
-- Dependencies: 279
-- Name: COLUMN geo_voiep.tex; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_voiep.tex IS 'Nom de la voie';


--
-- TOC entry 4530 (class 0 OID 0)
-- Dependencies: 279
-- Name: COLUMN geo_voiep.creat_date; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_voiep.creat_date IS 'Date de création';


--
-- TOC entry 4531 (class 0 OID 0)
-- Dependencies: 279
-- Name: COLUMN geo_voiep.update_dat; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_voiep.update_dat IS 'Date de dernière modification';


--
-- TOC entry 278 (class 1259 OID 53758)
-- Name: geo_voiep_geo_voiep_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE geo_voiep_geo_voiep_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE geo_voiep_geo_voiep_seq OWNER TO postgres;

--
-- TOC entry 4532 (class 0 OID 0)
-- Dependencies: 278
-- Name: geo_voiep_geo_voiep_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE geo_voiep_geo_voiep_seq OWNED BY geo_voiep.geo_voiep;


--
-- TOC entry 291 (class 1259 OID 53813)
-- Name: geo_zoncommuni; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE geo_zoncommuni (
    geo_zoncommuni integer NOT NULL,
    annee character varying(4) NOT NULL,
    object_rid character varying(80),
    tex character varying,
    creat_date date,
    update_dat date,
    lot character varying,
    geom public.geometry(MultiLineString,2154)
);


ALTER TABLE geo_zoncommuni OWNER TO postgres;

--
-- TOC entry 4533 (class 0 OID 0)
-- Dependencies: 291
-- Name: TABLE geo_zoncommuni; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE geo_zoncommuni IS 'Voie du domaine non cadastré (ou passant sur des parcelles non figurées au plan) représentée par un élément linéaire correspondant à son axe.';


--
-- TOC entry 4534 (class 0 OID 0)
-- Dependencies: 291
-- Name: COLUMN geo_zoncommuni.geo_zoncommuni; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_zoncommuni.geo_zoncommuni IS 'Identifiant';


--
-- TOC entry 4535 (class 0 OID 0)
-- Dependencies: 291
-- Name: COLUMN geo_zoncommuni.annee; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_zoncommuni.annee IS 'Année';


--
-- TOC entry 4536 (class 0 OID 0)
-- Dependencies: 291
-- Name: COLUMN geo_zoncommuni.object_rid; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_zoncommuni.object_rid IS 'Numéro d''objet';


--
-- TOC entry 4537 (class 0 OID 0)
-- Dependencies: 291
-- Name: COLUMN geo_zoncommuni.tex; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_zoncommuni.tex IS 'Nom de la voie';


--
-- TOC entry 4538 (class 0 OID 0)
-- Dependencies: 291
-- Name: COLUMN geo_zoncommuni.creat_date; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_zoncommuni.creat_date IS 'Date de création';


--
-- TOC entry 4539 (class 0 OID 0)
-- Dependencies: 291
-- Name: COLUMN geo_zoncommuni.update_dat; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN geo_zoncommuni.update_dat IS 'Date de dernière modification';


--
-- TOC entry 290 (class 1259 OID 53811)
-- Name: geo_zoncommuni_geo_zoncommuni_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE geo_zoncommuni_geo_zoncommuni_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE geo_zoncommuni_geo_zoncommuni_seq OWNER TO postgres;

--
-- TOC entry 4540 (class 0 OID 0)
-- Dependencies: 290
-- Name: geo_zoncommuni_geo_zoncommuni_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE geo_zoncommuni_geo_zoncommuni_seq OWNED BY geo_zoncommuni.geo_zoncommuni;


--
-- TOC entry 240 (class 1259 OID 53509)
-- Name: gnexpl; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE gnexpl (
    gnexpl character varying(2) NOT NULL,
    gnexpl_lib character varying
);


ALTER TABLE gnexpl OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 53397)
-- Name: gnexps; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE gnexps (
    gnexps character varying(2) NOT NULL,
    gnexps_lib character varying
);


ALTER TABLE gnexps OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 53517)
-- Name: gnextl; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE gnextl (
    gnextl character varying(2) NOT NULL,
    gnextl_lib character varying
);


ALTER TABLE gnextl OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 53437)
-- Name: gnexts; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE gnexts (
    gnexts character varying(2) NOT NULL,
    gnexts_lib character varying
);


ALTER TABLE gnexts OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 53389)
-- Name: gpdl; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE gpdl (
    gpdl character varying(1) NOT NULL,
    gpdl_lib character varying
);


ALTER TABLE gpdl OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 53565)
-- Name: gtoper; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE gtoper (
    gtoper character varying(1) NOT NULL,
    gtoper_lib character varying
);


ALTER TABLE gtoper OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 53597)
-- Name: gtyp3; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE gtyp3 (
    gtyp3 character varying(1) NOT NULL,
    gtyp3_lib character varying
);


ALTER TABLE gtyp3 OWNER TO postgres;

--
-- TOC entry 252 (class 1259 OID 53605)
-- Name: gtyp4; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE gtyp4 (
    gtyp4 character varying(1) NOT NULL,
    gtyp4_lib character varying
);


ALTER TABLE gtyp4 OWNER TO postgres;

--
-- TOC entry 253 (class 1259 OID 53613)
-- Name: gtyp5; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE gtyp5 (
    gtyp5 character varying(1) NOT NULL,
    gtyp5_lib character varying
);


ALTER TABLE gtyp5 OWNER TO postgres;

--
-- TOC entry 254 (class 1259 OID 53621)
-- Name: gtyp6; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE gtyp6 (
    gtyp6 character varying(1) NOT NULL,
    gtyp6_lib character varying
);


ALTER TABLE gtyp6 OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 53493)
-- Name: hlmsem; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE hlmsem (
    hlmsem character varying(1) NOT NULL,
    hlmsem_lib character varying
);


ALTER TABLE hlmsem OWNER TO postgres;

--
-- TOC entry 344 (class 1259 OID 54035)
-- Name: id_s_obj_z_1_2_2; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE id_s_obj_z_1_2_2 (
    ogc_fid integer NOT NULL,
    object_rid character varying,
    fon character varying,
    hei double precision,
    tyu character varying,
    cef double precision,
    csp double precision,
    di1 double precision,
    di2 double precision,
    di3 double precision,
    di4 double precision,
    tpa character varying,
    hta character varying,
    vta character varying,
    atr character varying,
    ogr_obj_lnk character varying,
    ogr_obj_lnk_layer character varying,
    ogr_atr_val character varying,
    ogr_angle double precision,
    ogr_font_size double precision,
    geom public.geometry(Point,2154)
);


ALTER TABLE id_s_obj_z_1_2_2 OWNER TO postgres;

--
-- TOC entry 343 (class 1259 OID 54033)
-- Name: id_s_obj_z_1_2_2_ogc_fid_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE id_s_obj_z_1_2_2_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE id_s_obj_z_1_2_2_ogc_fid_seq OWNER TO postgres;

--
-- TOC entry 4541 (class 0 OID 0)
-- Dependencies: 343
-- Name: id_s_obj_z_1_2_2_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE id_s_obj_z_1_2_2_ogc_fid_seq OWNED BY id_s_obj_z_1_2_2.ogc_fid;


--
-- TOC entry 260 (class 1259 OID 53669)
-- Name: indldnbat; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE indldnbat (
    indldnbat character varying(1) NOT NULL,
    indldnbat_lib character varying
);


ALTER TABLE indldnbat OWNER TO postgres;

--
-- TOC entry 346 (class 1259 OID 54044)
-- Name: lieudit_id; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE lieudit_id (
    ogc_fid integer NOT NULL,
    object_rid character varying,
    tex10 character varying,
    tex2 character varying,
    tex3 character varying,
    tex4 character varying,
    tex5 character varying,
    tex6 character varying,
    tex7 character varying,
    tex8 character varying,
    tex9 character varying,
    tex character varying,
    creat_date integer,
    update_date integer,
    geom public.geometry(Geometry,2154)
);


ALTER TABLE lieudit_id OWNER TO postgres;

--
-- TOC entry 345 (class 1259 OID 54042)
-- Name: lieudit_id_ogc_fid_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE lieudit_id_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE lieudit_id_ogc_fid_seq OWNER TO postgres;

--
-- TOC entry 4542 (class 0 OID 0)
-- Dependencies: 345
-- Name: lieudit_id_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE lieudit_id_ogc_fid_seq OWNED BY lieudit_id.ogc_fid;


--
-- TOC entry 200 (class 1259 OID 53239)
-- Name: lloc; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE lloc (
    tmp character varying(550)
);


ALTER TABLE lloc OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 53287)
-- Name: local00; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE local00 (
    local00 character varying(14),
    annee character varying(4),
    ccodep character varying(2),
    ccodir character varying(1),
    ccocom character varying(3),
    invar character varying(10),
    ccopre character varying(3),
    ccosec character varying(2),
    dnupla character varying(4),
    parcelle character varying(19),
    dnubat character varying(2),
    descr character varying(2),
    dniv character varying(2),
    dpor character varying(5),
    ccoriv character varying(4),
    voie character varying(19),
    ccovoi character varying(5),
    dnvoiri character varying(4),
    dindic character varying(1),
    ccocif character varying(4),
    dvoilib character varying(30),
    cleinvar character varying(1),
    locinc character varying(1),
    lot character varying
);


ALTER TABLE local00 OWNER TO postgres;

--
-- TOC entry 4543 (class 0 OID 0)
-- Dependencies: 208
-- Name: TABLE local00; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE local00 IS 'Article identifiant du local';


--
-- TOC entry 4544 (class 0 OID 0)
-- Dependencies: 208
-- Name: COLUMN local00.ccodep; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local00.ccodep IS 'code département - ';


--
-- TOC entry 4545 (class 0 OID 0)
-- Dependencies: 208
-- Name: COLUMN local00.ccodir; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local00.ccodir IS 'code direction - ';


--
-- TOC entry 4546 (class 0 OID 0)
-- Dependencies: 208
-- Name: COLUMN local00.ccocom; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local00.ccocom IS 'code commune INSEE - ';


--
-- TOC entry 4547 (class 0 OID 0)
-- Dependencies: 208
-- Name: COLUMN local00.invar; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local00.invar IS 'numéro invariant - ';


--
-- TOC entry 4548 (class 0 OID 0)
-- Dependencies: 208
-- Name: COLUMN local00.ccopre; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local00.ccopre IS 'préfixe de section ou quartier servi pour les communes associées, - ';


--
-- TOC entry 4549 (class 0 OID 0)
-- Dependencies: 208
-- Name: COLUMN local00.ccosec; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local00.ccosec IS 'lettres de section - ';


--
-- TOC entry 4550 (class 0 OID 0)
-- Dependencies: 208
-- Name: COLUMN local00.dnupla; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local00.dnupla IS 'numéro de plan - ';


--
-- TOC entry 4551 (class 0 OID 0)
-- Dependencies: 208
-- Name: COLUMN local00.dnubat; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local00.dnubat IS 'lettre de bâtiment - ';


--
-- TOC entry 4552 (class 0 OID 0)
-- Dependencies: 208
-- Name: COLUMN local00.descr; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local00.descr IS 'numéro d’entrée - ';


--
-- TOC entry 4553 (class 0 OID 0)
-- Dependencies: 208
-- Name: COLUMN local00.dniv; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local00.dniv IS 'niveau étage - ';


--
-- TOC entry 4554 (class 0 OID 0)
-- Dependencies: 208
-- Name: COLUMN local00.dpor; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local00.dpor IS 'numéro de local - ';


--
-- TOC entry 4555 (class 0 OID 0)
-- Dependencies: 208
-- Name: COLUMN local00.ccoriv; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local00.ccoriv IS 'Code Rivoli de la voie - ';


--
-- TOC entry 4556 (class 0 OID 0)
-- Dependencies: 208
-- Name: COLUMN local00.ccovoi; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local00.ccovoi IS 'Code Majic2 de la voie - ';


--
-- TOC entry 4557 (class 0 OID 0)
-- Dependencies: 208
-- Name: COLUMN local00.dnvoiri; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local00.dnvoiri IS 'Numéro de voirie - ';


--
-- TOC entry 4558 (class 0 OID 0)
-- Dependencies: 208
-- Name: COLUMN local00.dindic; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local00.dindic IS 'indice de répétition - ';


--
-- TOC entry 4559 (class 0 OID 0)
-- Dependencies: 208
-- Name: COLUMN local00.ccocif; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local00.ccocif IS 'code du cdi/cdif (code topad) - ';


--
-- TOC entry 4560 (class 0 OID 0)
-- Dependencies: 208
-- Name: COLUMN local00.dvoilib; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local00.dvoilib IS 'libelle de la voie - ';


--
-- TOC entry 4561 (class 0 OID 0)
-- Dependencies: 208
-- Name: COLUMN local00.cleinvar; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local00.cleinvar IS 'clé alpha no invariant - ';


--
-- TOC entry 4562 (class 0 OID 0)
-- Dependencies: 208
-- Name: COLUMN local00.locinc; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local00.locinc IS 'code local sans évaluation - INDISPONIBLE';


--
-- TOC entry 209 (class 1259 OID 53293)
-- Name: local10; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE local10 (
    local10 character varying(14),
    annee character varying(4),
    ccodep character varying(2),
    ccodir character varying(1),
    ccocom character varying(3),
    invar character varying(10),
    local00 character varying(14),
    ccopre character varying(3),
    ccosec character varying(2),
    dnupla character varying(4),
    parcelle character varying(19),
    ccoriv character varying(4),
    voie character varying(19),
    ccovoi character varying(5),
    dnvoiri character varying(4),
    gpdl character varying(1),
    dsrpar character varying(1),
    dnupro character varying(6),
    comptecommunal character varying(15),
    jdatat date,
    dnufnl character varying(6),
    ccoeva character varying(1),
    ccitlv character varying(1),
    dteloc character varying(1),
    gtauom character varying(2),
    dcomrd character varying(3),
    ccoplc character varying(1),
    cconlc character varying(2),
    dvltrt integer,
    ccoape character varying(4),
    cc48lc character varying(2),
    dloy48a integer,
    top48a character varying(1),
    dnatlc character varying(1),
    dnupas character varying(8),
    gnexcf character varying(2),
    dtaucf character varying(3),
    cchpr character varying(1),
    jannat character varying(4),
    dnbniv character varying(2),
    hlmsem character varying(1),
    postel character varying(1),
    dnatcg character varying(2),
    jdatcgl date,
    dnutbx character varying(6),
    dvltla character varying(9),
    janloc character varying(4),
    ccsloc character varying(2),
    fburx integer,
    gimtom character varying(1),
    cbtabt character varying(2),
    jdtabt character varying(4),
    jrtabt character varying(4),
    jacloc character varying(4),
    cconac character varying(5),
    lot character varying
);


ALTER TABLE local10 OWNER TO postgres;

--
-- TOC entry 4563 (class 0 OID 0)
-- Dependencies: 209
-- Name: TABLE local10; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE local10 IS 'Article identifiant du local';


--
-- TOC entry 4564 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN local10.ccodep; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local10.ccodep IS 'code département - ';


--
-- TOC entry 4565 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN local10.ccodir; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local10.ccodir IS 'code direction - ';


--
-- TOC entry 4566 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN local10.ccocom; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local10.ccocom IS 'code commune INSEE - ';


--
-- TOC entry 4567 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN local10.invar; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local10.invar IS 'numéro invariant - ';


--
-- TOC entry 4568 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN local10.gpdl; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local10.gpdl IS 'indicateur d’appartenance à un lot de pdl - 1 = oui, sinon 0';


--
-- TOC entry 4569 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN local10.dsrpar; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local10.dsrpar IS 'lettre de série rôle - ';


--
-- TOC entry 4570 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN local10.dnupro; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local10.dnupro IS 'compte communal de propriétaire - ';


--
-- TOC entry 4571 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN local10.jdatat; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local10.jdatat IS 'date d’acte de mutation - jjmmaaaa';


--
-- TOC entry 4572 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN local10.dnufnl; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local10.dnufnl IS 'compte communal de fonctionnaire logé - redevable de la tom';


--
-- TOC entry 4573 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN local10.ccoeva; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local10.ccoeva IS 'code évaluation - A B C D E T tableau 2.3.1';


--
-- TOC entry 4574 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN local10.ccitlv; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local10.ccitlv IS 'local imposable à la taxe sur les locaux vacants - indisponible';


--
-- TOC entry 4575 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN local10.dteloc; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local10.dteloc IS 'type de local - 1 à 8 tableau 2.3.2';


--
-- TOC entry 4576 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN local10.gtauom; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local10.gtauom IS 'zone de ramassage des ordures ménagères - P RA RB RC RD ou blanc';


--
-- TOC entry 4577 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN local10.dcomrd; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local10.dcomrd IS 'Pourcentage de réduction sur tom - ';


--
-- TOC entry 4578 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN local10.ccoplc; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local10.ccoplc IS 'Code de construction particulière - R U V W X Y Z ou blanc tabl. 2.3.3';


--
-- TOC entry 4579 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN local10.cconlc; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local10.cconlc IS 'Code nature de local - voir tableau 2.3.4';


--
-- TOC entry 4580 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN local10.dvltrt; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local10.dvltrt IS 'Valeur locative totale retenue pour le local - ';


--
-- TOC entry 4581 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN local10.ccoape; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local10.ccoape IS 'Code NAF pour les locaux professionnels - ';


--
-- TOC entry 4582 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN local10.cc48lc; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local10.cc48lc IS 'Catégorie de loi de 48 - ';


--
-- TOC entry 4583 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN local10.dloy48a; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local10.dloy48a IS 'Loyer de 48 en valeur de l’année - ';


--
-- TOC entry 4584 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN local10.top48a; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local10.top48a IS 'top taxation indiquant si la pev est impose au loyer ou a la vl - 1 = loyer o = vl';


--
-- TOC entry 4585 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN local10.dnatlc; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local10.dnatlc IS 'Nature d occupation - A P V L T D tableau 2.3.6';


--
-- TOC entry 4586 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN local10.dnupas; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local10.dnupas IS 'no passerelle TH/TP - INDISPONIBLE';


--
-- TOC entry 4587 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN local10.gnexcf; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local10.gnexcf IS 'code nature exo ecf - INDISPONIBLE';


--
-- TOC entry 4588 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN local10.dtaucf; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local10.dtaucf IS 'taux exo ecf - INDISPONIBLE';


--
-- TOC entry 4589 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN local10.cchpr; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local10.cchpr IS 'Top indiquant une mutation propriétaire - * ou blanc';


--
-- TOC entry 4590 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN local10.jannat; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local10.jannat IS 'Année de construction - ';


--
-- TOC entry 4591 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN local10.dnbniv; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local10.dnbniv IS 'Nombre de niveaux de la construction - ';


--
-- TOC entry 4592 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN local10.hlmsem; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local10.hlmsem IS 'Local appartenant à hlm ou sem - 5 = hlm, 6 = sem, sinon blanc';


--
-- TOC entry 4593 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN local10.postel; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local10.postel IS 'Local de Poste ou France Telecom - X, Y, Z, ou blanc ';


--
-- TOC entry 4594 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN local10.dnatcg; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local10.dnatcg IS 'Code nature du changement d’évaluation (depuis 2013)';


--
-- TOC entry 4595 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN local10.jdatcgl; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local10.jdatcgl IS 'Date changement évaluation - JJMMSSAA (Depuis 2013)';


--
-- TOC entry 4596 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN local10.dnutbx; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local10.dnutbx IS 'no gestionnaire déclarant taxe bureaux - INDISPONIBLE';


--
-- TOC entry 4597 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN local10.dvltla; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local10.dvltla IS 'VL totale du local actualisée - INDISPONIBLE';


--
-- TOC entry 4598 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN local10.janloc; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local10.janloc IS 'Année de création du local - INDISPONIBLE';


--
-- TOC entry 4599 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN local10.ccsloc; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local10.ccsloc IS 'Code cause création du local - INDISPONIBLE';


--
-- TOC entry 4600 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN local10.fburx; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local10.fburx IS 'Indicateur présence bureaux - INDISPONIBLE';


--
-- TOC entry 4601 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN local10.gimtom; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local10.gimtom IS 'Indicateur imposition OM exploitable à partir de 2002  - D, E, V ou blanc';


--
-- TOC entry 4602 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN local10.cbtabt; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local10.cbtabt IS 'Code exonération HLM zone sensible - ZS, ZT ou blanc';


--
-- TOC entry 4603 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN local10.jdtabt; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local10.jdtabt IS 'Année début d’exonération ZS - ';


--
-- TOC entry 4604 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN local10.jrtabt; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local10.jrtabt IS 'Année fin d’exonération ZS - ';


--
-- TOC entry 4605 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN local10.jacloc; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local10.jacloc IS 'Année d’achèvement du local - INDISPONIBLE';


--
-- TOC entry 4606 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN local10.cconac; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN local10.cconac IS 'Code NACE pour les locaux professionnels';


--
-- TOC entry 220 (class 1259 OID 53359)
-- Name: lots; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE lots (
    lots character varying(29),
    annee character varying(4),
    ccodep character varying(2),
    ccodir character varying(1),
    ccocom character varying(3),
    ccopre character varying(3),
    ccosec character varying(2),
    dnupla character varying(4),
    parcelle character varying(19),
    dnupdl character varying(3),
    pdl character varying(22),
    dnulot character varying(7),
    cconlo character varying(1),
    dcntlo integer,
    dnumql integer,
    ddenql integer,
    dfilot character varying(20),
    datact date,
    dnuprol character varying(6),
    comptecommunal character varying(15),
    dreflf character varying(5),
    ccocif character varying(4),
    lot character varying
);


ALTER TABLE lots OWNER TO postgres;

--
-- TOC entry 4607 (class 0 OID 0)
-- Dependencies: 220
-- Name: TABLE lots; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE lots IS 'Article descriptif du lot';


--
-- TOC entry 4608 (class 0 OID 0)
-- Dependencies: 220
-- Name: COLUMN lots.ccodep; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN lots.ccodep IS 'code département - ';


--
-- TOC entry 4609 (class 0 OID 0)
-- Dependencies: 220
-- Name: COLUMN lots.ccodir; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN lots.ccodir IS 'code direction - ';


--
-- TOC entry 4610 (class 0 OID 0)
-- Dependencies: 220
-- Name: COLUMN lots.ccocom; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN lots.ccocom IS 'code commune INSEE - ';


--
-- TOC entry 4611 (class 0 OID 0)
-- Dependencies: 220
-- Name: COLUMN lots.ccopre; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN lots.ccopre IS 'code du préfixe - ';


--
-- TOC entry 4612 (class 0 OID 0)
-- Dependencies: 220
-- Name: COLUMN lots.ccosec; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN lots.ccosec IS 'lettres de section - ';


--
-- TOC entry 4613 (class 0 OID 0)
-- Dependencies: 220
-- Name: COLUMN lots.dnupla; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN lots.dnupla IS 'numéro de plan - ';


--
-- TOC entry 4614 (class 0 OID 0)
-- Dependencies: 220
-- Name: COLUMN lots.dnupdl; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN lots.dnupdl IS 'no de pdl - ';


--
-- TOC entry 4615 (class 0 OID 0)
-- Dependencies: 220
-- Name: COLUMN lots.dnulot; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN lots.dnulot IS 'Numéro de lot - ';


--
-- TOC entry 4616 (class 0 OID 0)
-- Dependencies: 220
-- Name: COLUMN lots.cconlo; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN lots.cconlo IS 'Code nature du lot - ';


--
-- TOC entry 4617 (class 0 OID 0)
-- Dependencies: 220
-- Name: COLUMN lots.dcntlo; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN lots.dcntlo IS 'Superficie du lot - ';


--
-- TOC entry 4618 (class 0 OID 0)
-- Dependencies: 220
-- Name: COLUMN lots.dnumql; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN lots.dnumql IS 'Numérateur - ';


--
-- TOC entry 4619 (class 0 OID 0)
-- Dependencies: 220
-- Name: COLUMN lots.ddenql; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN lots.ddenql IS 'Dénominateur - ';


--
-- TOC entry 4620 (class 0 OID 0)
-- Dependencies: 220
-- Name: COLUMN lots.dfilot; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN lots.dfilot IS 'pdl-fille du lot - ';


--
-- TOC entry 4621 (class 0 OID 0)
-- Dependencies: 220
-- Name: COLUMN lots.datact; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN lots.datact IS 'date de l''acte - ';


--
-- TOC entry 4622 (class 0 OID 0)
-- Dependencies: 220
-- Name: COLUMN lots.dnuprol; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN lots.dnuprol IS 'Compte du lot - ';


--
-- TOC entry 4623 (class 0 OID 0)
-- Dependencies: 220
-- Name: COLUMN lots.dreflf; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN lots.dreflf IS 'Référence livre foncier - ';


--
-- TOC entry 4624 (class 0 OID 0)
-- Dependencies: 220
-- Name: COLUMN lots.ccocif; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN lots.ccocif IS 'code cdif - ';


--
-- TOC entry 221 (class 1259 OID 53365)
-- Name: lotslocaux; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE lotslocaux (
    lotslocaux character varying(39),
    annee character varying(4),
    ccodepl character varying(2),
    ccodirl character varying(1),
    ccocoml character varying(3),
    ccoprel character varying(3),
    ccosecl character varying(2),
    dnuplal character varying(4),
    dnupdl character varying(3),
    dnulot character varying(7),
    lots character varying(29),
    ccodebpb character varying(2),
    ccodird character varying(1),
    ccocomb character varying(3),
    ccopreb character varying(3),
    invloc character varying(10),
    local00 character varying(14),
    local10 character varying(14),
    dnumql character varying(7),
    ddenql character varying(7),
    lot character varying
);


ALTER TABLE lotslocaux OWNER TO postgres;

--
-- TOC entry 4625 (class 0 OID 0)
-- Dependencies: 221
-- Name: TABLE lotslocaux; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE lotslocaux IS 'Article descriptif du lot';


--
-- TOC entry 4626 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN lotslocaux.ccodepl; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN lotslocaux.ccodepl IS 'Lot - Code département - ';


--
-- TOC entry 4627 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN lotslocaux.ccodirl; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN lotslocaux.ccodirl IS 'Lot - Code direction - ';


--
-- TOC entry 4628 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN lotslocaux.ccocoml; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN lotslocaux.ccocoml IS 'Lot - Code INSEE de la commune - ';


--
-- TOC entry 4629 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN lotslocaux.ccoprel; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN lotslocaux.ccoprel IS 'Lot - Code préfixe - ';


--
-- TOC entry 4630 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN lotslocaux.ccosecl; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN lotslocaux.ccosecl IS 'Lot - Code section - ';


--
-- TOC entry 4631 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN lotslocaux.dnuplal; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN lotslocaux.dnuplal IS 'Lot - Numéro du plan - ';


--
-- TOC entry 4632 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN lotslocaux.dnupdl; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN lotslocaux.dnupdl IS 'Lot - Numéro de PDL - ';


--
-- TOC entry 4633 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN lotslocaux.dnulot; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN lotslocaux.dnulot IS 'Lot - Numéro de lot - ';


--
-- TOC entry 4634 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN lotslocaux.ccodebpb; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN lotslocaux.ccodebpb IS 'Local - Code département - ';


--
-- TOC entry 4635 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN lotslocaux.ccodird; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN lotslocaux.ccodird IS 'Local - Code direction - ';


--
-- TOC entry 4636 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN lotslocaux.ccocomb; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN lotslocaux.ccocomb IS 'Local - Code commune - ';


--
-- TOC entry 4637 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN lotslocaux.ccopreb; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN lotslocaux.ccopreb IS 'Local - Code préfixe - ';


--
-- TOC entry 4638 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN lotslocaux.invloc; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN lotslocaux.invloc IS 'Local - Numéro invariant du local - ';


--
-- TOC entry 4639 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN lotslocaux.dnumql; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN lotslocaux.dnumql IS 'Local - Numérateur du lot - ';


--
-- TOC entry 4640 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN lotslocaux.ddenql; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN lotslocaux.ddenql IS 'Local - Dénominateur du lot - ';


--
-- TOC entry 256 (class 1259 OID 53637)
-- Name: natvoiriv; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE natvoiriv (
    natvoiriv character varying(1) NOT NULL,
    natvoiriv_lib character varying
);


ALTER TABLE natvoiriv OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 53245)
-- Name: nbat; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE nbat (
    tmp character varying(550)
);


ALTER TABLE nbat OWNER TO postgres;

--
-- TOC entry 348 (class 1259 OID 54053)
-- Name: numvoie_id; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE numvoie_id (
    ogc_fid integer NOT NULL,
    object_rid character varying,
    tex character varying,
    creat_date integer,
    update_date integer,
    geom public.geometry(Geometry,2154)
);


ALTER TABLE numvoie_id OWNER TO postgres;

--
-- TOC entry 347 (class 1259 OID 54051)
-- Name: numvoie_id_ogc_fid_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE numvoie_id_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE numvoie_id_ogc_fid_seq OWNER TO postgres;

--
-- TOC entry 4641 (class 0 OID 0)
-- Dependencies: 347
-- Name: numvoie_id_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE numvoie_id_ogc_fid_seq OWNED BY numvoie_id.ogc_fid;


--
-- TOC entry 204 (class 1259 OID 53263)
-- Name: parcelle; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE parcelle (
    parcelle character varying(19),
    annee character varying(4),
    ccodep character varying(2),
    ccodir character varying(1),
    ccocom character varying(3),
    ccopre character varying(3),
    ccosec character varying(2),
    dnupla character varying(4),
    dcntpa integer,
    dsrpar character varying(1),
    dnupro character varying(6),
    comptecommunal character varying(15),
    jdatat date,
    dreflf character varying(5),
    gpdl character varying(1),
    cprsecr character varying(3),
    ccosecr character varying(2),
    dnuplar character varying(4),
    dnupdl character varying(3),
    pdl character varying(22),
    gurbpa character varying(1),
    dparpi character varying(4),
    ccoarp character varying(1),
    gparnf character varying(1),
    gparbat character varying(1),
    parrev character varying(12),
    gpardp character varying(1),
    fviti character varying(1),
    dnvoiri character varying(4),
    dindic character varying(1),
    ccovoi character varying(5),
    ccoriv character varying(4),
    voie character varying(19),
    ccocif character varying(4),
    gpafpd character varying(1),
    ajoutcoherence character varying(1),
    cconvo character varying(4),
    dvoilib character varying(26),
    ccocomm character varying(3),
    ccoprem character varying(3),
    ccosecm character varying(2),
    dnuplam character varying(4),
    parcellefiliation character varying(19),
    type_filiation character varying(1),
    lot character varying
);


ALTER TABLE parcelle OWNER TO postgres;

--
-- TOC entry 4642 (class 0 OID 0)
-- Dependencies: 204
-- Name: TABLE parcelle; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE parcelle IS 'Article descriptif de parcelle';


--
-- TOC entry 4643 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN parcelle.ccodep; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcelle.ccodep IS 'Code département - ';


--
-- TOC entry 4644 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN parcelle.ccodir; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcelle.ccodir IS 'Code direction - ';


--
-- TOC entry 4645 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN parcelle.ccocom; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcelle.ccocom IS 'Code commune INSEE ou DGI d’arrondissement - ';


--
-- TOC entry 4646 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN parcelle.ccopre; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcelle.ccopre IS 'Préfixe de section ou quartier servi pour les communes associées. - ';


--
-- TOC entry 4647 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN parcelle.ccosec; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcelle.ccosec IS 'Section cadastrale - ';


--
-- TOC entry 4648 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN parcelle.dnupla; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcelle.dnupla IS 'Numéro de plan - ';


--
-- TOC entry 4649 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN parcelle.dcntpa; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcelle.dcntpa IS 'Contenance de la parcelle - en centiares';


--
-- TOC entry 4650 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN parcelle.dsrpar; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcelle.dsrpar IS 'Lettre de série-role - ';


--
-- TOC entry 4651 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN parcelle.dnupro; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcelle.dnupro IS 'Compte communal du propriétaire de la parcelle - ';


--
-- TOC entry 4652 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN parcelle.jdatat; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcelle.jdatat IS 'Date de l acte - jjmmaaaa';


--
-- TOC entry 4653 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN parcelle.dreflf; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcelle.dreflf IS 'Référence au Livre Foncier en Alsace-Moselle - ';


--
-- TOC entry 4654 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN parcelle.gpdl; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcelle.gpdl IS 'Indicateur d’appartenance à pdl Identifiant de la pdl - cf. détail supra si gpdl =2';


--
-- TOC entry 4655 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN parcelle.cprsecr; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcelle.cprsecr IS 'Préfixe de la parcelle de référence - ';


--
-- TOC entry 4656 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN parcelle.ccosecr; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcelle.ccosecr IS 'Section de la parcelle de référence - ';


--
-- TOC entry 4657 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN parcelle.dnuplar; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcelle.dnuplar IS 'N° de plan de la parcelle de référence - ';


--
-- TOC entry 4658 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN parcelle.dnupdl; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcelle.dnupdl IS 'Numéro d’ordre de la pdl - en général, 001';


--
-- TOC entry 4659 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN parcelle.gurbpa; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcelle.gurbpa IS 'Caractère Urbain de la parcelle - U, * ou blanc';


--
-- TOC entry 4660 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN parcelle.dparpi; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcelle.dparpi IS 'Numéro de parcelle primitive - ';


--
-- TOC entry 4661 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN parcelle.ccoarp; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcelle.ccoarp IS 'Indicateur d’arpentage - A ou blanc';


--
-- TOC entry 4662 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN parcelle.gparnf; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcelle.gparnf IS 'Indicateur de parcelle non figurée au plan - 1 = figurée, 0 = non figurée';


--
-- TOC entry 4663 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN parcelle.gparbat; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcelle.gparbat IS 'Indicateur de parcelle référençant un bâtiment - 1 = oui, sinon 0';


--
-- TOC entry 4664 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN parcelle.parrev; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcelle.parrev IS 'Info de la révision - INDISPONIBLE';


--
-- TOC entry 4665 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN parcelle.gpardp; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcelle.gpardp IS 'parcelle n''appartenant pas au domaine public - INDISPONIBLE';


--
-- TOC entry 4666 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN parcelle.fviti; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcelle.fviti IS 'parcelle au casier viticole  Adresse de la parcelle - INDISPONIBLE';


--
-- TOC entry 4667 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN parcelle.dnvoiri; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcelle.dnvoiri IS 'Numéro de voirie - ';


--
-- TOC entry 4668 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN parcelle.dindic; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcelle.dindic IS 'Indice de répétition - ';


--
-- TOC entry 4669 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN parcelle.ccovoi; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcelle.ccovoi IS 'Code Majic2 de la voie - ';


--
-- TOC entry 4670 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN parcelle.ccoriv; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcelle.ccoriv IS 'Code Rivoli de la voie - ';


--
-- TOC entry 4671 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN parcelle.ccocif; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcelle.ccocif IS 'Code du cdif (code topad) - ';


--
-- TOC entry 4672 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN parcelle.gpafpd; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcelle.gpafpd IS 'Domanialité, représentation au plan - INDISPONIBLE';


--
-- TOC entry 4673 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN parcelle.cconvo; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcelle.cconvo IS 'Code nature de la voie';


--
-- TOC entry 4674 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN parcelle.dvoilib; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcelle.dvoilib IS 'Libellé de la voie';


--
-- TOC entry 4675 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN parcelle.ccocomm; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcelle.ccocomm IS 'Code INSEE de la commune de la parcelle mère';


--
-- TOC entry 4676 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN parcelle.ccoprem; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcelle.ccoprem IS 'Code du préfixe de section de la parcelle mère';


--
-- TOC entry 4677 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN parcelle.ccosecm; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcelle.ccosecm IS 'Code section de la parcelle mère';


--
-- TOC entry 4678 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN parcelle.dnuplam; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcelle.dnuplam IS 'Numéro de plan de la parcelle mère';


--
-- TOC entry 4679 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN parcelle.parcellefiliation; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcelle.parcellefiliation IS 'Parcelle en filiation';


--
-- TOC entry 4680 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN parcelle.type_filiation; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcelle.type_filiation IS 'Type de filiation (D, R, T ou blanc)';


--
-- TOC entry 350 (class 1259 OID 54062)
-- Name: parcelle_id; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE parcelle_id (
    ogc_fid integer NOT NULL,
    object_rid character varying,
    coar character varying,
    codm character varying,
    idu character varying,
    indp character varying,
    supf double precision,
    tex2 character varying,
    tex character varying,
    creat_date integer,
    update_date integer,
    geom public.geometry(Geometry,2154)
);


ALTER TABLE parcelle_id OWNER TO postgres;

--
-- TOC entry 349 (class 1259 OID 54060)
-- Name: parcelle_id_ogc_fid_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE parcelle_id_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE parcelle_id_ogc_fid_seq OWNER TO postgres;

--
-- TOC entry 4681 (class 0 OID 0)
-- Dependencies: 349
-- Name: parcelle_id_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE parcelle_id_ogc_fid_seq OWNED BY parcelle_id.ogc_fid;


--
-- TOC entry 219 (class 1259 OID 53353)
-- Name: parcellecomposante; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE parcellecomposante (
    parcellecomposante character varying(31),
    annee character varying(4),
    ccodep character varying(2),
    ccodir character varying(1),
    ccocom character varying(3),
    ccopre character varying(3),
    ccosec character varying(2),
    dnupla character varying(4),
    parcelle character varying(19),
    dnupdl character varying(3),
    pdl character varying(22),
    ccoprea character varying(3),
    ccoseca character varying(2),
    dnuplaa character varying(4),
    parcellea character varying(19),
    ccocif character varying(4),
    lot character varying
);


ALTER TABLE parcellecomposante OWNER TO postgres;

--
-- TOC entry 4682 (class 0 OID 0)
-- Dependencies: 219
-- Name: TABLE parcellecomposante; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE parcellecomposante IS 'Parcelle composante de la pdl autre que la parcelle de référence';


--
-- TOC entry 4683 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN parcellecomposante.ccodep; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcellecomposante.ccodep IS 'code département - ';


--
-- TOC entry 4684 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN parcellecomposante.ccodir; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcellecomposante.ccodir IS 'code direction - ';


--
-- TOC entry 4685 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN parcellecomposante.ccocom; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcellecomposante.ccocom IS 'code commune INSEE - ';


--
-- TOC entry 4686 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN parcellecomposante.ccopre; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcellecomposante.ccopre IS 'code du préfixe - ';


--
-- TOC entry 4687 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN parcellecomposante.ccosec; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcellecomposante.ccosec IS 'lettres de section - ';


--
-- TOC entry 4688 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN parcellecomposante.dnupla; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcellecomposante.dnupla IS 'numéro de plan - ';


--
-- TOC entry 4689 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN parcellecomposante.dnupdl; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcellecomposante.dnupdl IS 'no de pdl - ';


--
-- TOC entry 4690 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN parcellecomposante.ccoprea; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcellecomposante.ccoprea IS 'code du préfixe - ';


--
-- TOC entry 4691 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN parcellecomposante.ccoseca; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcellecomposante.ccoseca IS 'lettres de section - ';


--
-- TOC entry 4692 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN parcellecomposante.dnuplaa; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcellecomposante.dnuplaa IS 'numéro de plan - ';


--
-- TOC entry 4693 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN parcellecomposante.ccocif; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN parcellecomposante.ccocif IS 'code cdif - ';


--
-- TOC entry 218 (class 1259 OID 53347)
-- Name: pdl; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE pdl (
    pdl character varying(22),
    annee character varying(4),
    ccodep character varying(2),
    ccodir character varying(1),
    ccocom character varying(3),
    ccopre character varying(3),
    ccosec character varying(2),
    dnupla character varying(4),
    parcelle character varying(19),
    dnupdl character varying(3),
    dnivim character varying(1),
    ctpdl character varying(3),
    dmrpdl character varying(20),
    gprmut character varying(1),
    dnupro character varying(6),
    comptecommunal character varying(15),
    ccocif character varying(4),
    lot character varying
);


ALTER TABLE pdl OWNER TO postgres;

--
-- TOC entry 4694 (class 0 OID 0)
-- Dependencies: 218
-- Name: TABLE pdl; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE pdl IS 'Propriétés divisées en lots';


--
-- TOC entry 4695 (class 0 OID 0)
-- Dependencies: 218
-- Name: COLUMN pdl.ccodep; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pdl.ccodep IS 'code département - ';


--
-- TOC entry 4696 (class 0 OID 0)
-- Dependencies: 218
-- Name: COLUMN pdl.ccodir; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pdl.ccodir IS 'code direction - ';


--
-- TOC entry 4697 (class 0 OID 0)
-- Dependencies: 218
-- Name: COLUMN pdl.ccocom; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pdl.ccocom IS 'code commune INSEE - ';


--
-- TOC entry 4698 (class 0 OID 0)
-- Dependencies: 218
-- Name: COLUMN pdl.ccopre; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pdl.ccopre IS 'code du préfixe - ';


--
-- TOC entry 4699 (class 0 OID 0)
-- Dependencies: 218
-- Name: COLUMN pdl.ccosec; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pdl.ccosec IS 'lettres de section - ';


--
-- TOC entry 4700 (class 0 OID 0)
-- Dependencies: 218
-- Name: COLUMN pdl.dnupla; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pdl.dnupla IS 'numéro de plan - ';


--
-- TOC entry 4701 (class 0 OID 0)
-- Dependencies: 218
-- Name: COLUMN pdl.dnupdl; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pdl.dnupdl IS 'no de pdl - ';


--
-- TOC entry 4702 (class 0 OID 0)
-- Dependencies: 218
-- Name: COLUMN pdl.dnivim; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pdl.dnivim IS 'niveau imbrication - ';


--
-- TOC entry 4703 (class 0 OID 0)
-- Dependencies: 218
-- Name: COLUMN pdl.ctpdl; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pdl.ctpdl IS 'type de pdl - bnd, cl, cv, tf, clv, mp.';


--
-- TOC entry 4704 (class 0 OID 0)
-- Dependencies: 218
-- Name: COLUMN pdl.dmrpdl; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pdl.dmrpdl IS 'lot mère(plan+pdl+lot) - ';


--
-- TOC entry 4705 (class 0 OID 0)
-- Dependencies: 218
-- Name: COLUMN pdl.gprmut; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pdl.gprmut IS 'top ''1ere mut effectuée - ';


--
-- TOC entry 4706 (class 0 OID 0)
-- Dependencies: 218
-- Name: COLUMN pdl.dnupro; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pdl.dnupro IS 'compte de la pdl - ';


--
-- TOC entry 4707 (class 0 OID 0)
-- Dependencies: 218
-- Name: COLUMN pdl.ccocif; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pdl.ccocif IS 'code cdif - ';


--
-- TOC entry 202 (class 1259 OID 53251)
-- Name: pdll; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE pdll (
    tmp character varying(550)
);


ALTER TABLE pdll OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 53299)
-- Name: pev; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE pev (
    pev character varying(17),
    annee character varying(4),
    ccodep character varying(2),
    ccodir character varying(1),
    ccocom character varying(3),
    invar character varying(10),
    local10 character varying(14),
    dnupev character varying(3),
    ccoaff character varying(1),
    ccostb character varying(1),
    dcapec character varying(2),
    dcetlc numeric(3,2),
    dcsplc character varying(3),
    dsupot integer,
    dvlper integer,
    dvlpera integer,
    gnexpl character varying(2),
    libocc character varying(30),
    ccthp character varying(1),
    retimp character varying(1),
    dnuref character varying(3),
    rclsst character varying(32),
    gnidom character varying(1),
    dcsglc character varying(3),
    ccogrb character varying(1),
    cocdi character varying(4),
    cosatp character varying(3),
    gsatp character varying(1),
    clocv character varying(1),
    dvltpe integer,
    dcralc character varying(3),
    dcsplca character varying(5),
    dcsglca character varying(5),
    dcralca character varying(5),
    topcn integer,
    tpevtieom integer,
    lot character varying
);


ALTER TABLE pev OWNER TO postgres;

--
-- TOC entry 4708 (class 0 OID 0)
-- Dependencies: 210
-- Name: TABLE pev; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE pev IS 'Article descriptif de pev';


--
-- TOC entry 4709 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN pev.ccodep; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pev.ccodep IS 'Code département - ';


--
-- TOC entry 4710 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN pev.ccodir; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pev.ccodir IS 'Code direction - ';


--
-- TOC entry 4711 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN pev.ccocom; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pev.ccocom IS 'Code commune INSEE - ';


--
-- TOC entry 4712 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN pev.invar; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pev.invar IS 'Numéro invariant - ';


--
-- TOC entry 4713 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN pev.dnupev; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pev.dnupev IS 'Numéro de pev - ';


--
-- TOC entry 4714 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN pev.ccoaff; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pev.ccoaff IS 'Affectation de la pev - H P L S K tableau 2.3.7';


--
-- TOC entry 4715 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN pev.ccostb; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pev.ccostb IS 'lettre de série tarif bâtie ou secteur locatif - A à Z sauf';


--
-- TOC entry 4716 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN pev.dcapec; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pev.dcapec IS 'Catégorie - Commentaires 2.2.3';


--
-- TOC entry 4717 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN pev.dcetlc; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pev.dcetlc IS 'Coefficient d entretien - 9V99';


--
-- TOC entry 4718 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN pev.dcsplc; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pev.dcsplc IS 'Coefficient de situation particulière - S9V99 - INDISPONIBLE';


--
-- TOC entry 4719 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN pev.dsupot; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pev.dsupot IS 'Surface pondérée - Présence non systématique';


--
-- TOC entry 4720 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN pev.dvlper; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pev.dvlper IS 'Valeur locative de la pev, en valeur de référence (1970) sauf pour les établissements de code évaluation A - ';


--
-- TOC entry 4721 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN pev.dvlpera; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pev.dvlpera IS 'Valeur locative de la pev, en valeur de l’année - ';


--
-- TOC entry 4722 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN pev.gnexpl; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pev.gnexpl IS 'Nature d’exonération permanente - Gérée dans pour les tableau 2.3.8';


--
-- TOC entry 4723 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN pev.libocc; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pev.libocc IS 'nom de l occupant INDISPONIBLE - ';


--
-- TOC entry 4724 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN pev.ccthp; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pev.ccthp IS 'Code occupation à la Th ou à la TP - ';


--
-- TOC entry 4725 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN pev.retimp; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pev.retimp IS 'Top : retour partiel ou total à imposition - ';


--
-- TOC entry 4726 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN pev.dnuref; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pev.dnuref IS 'Numéro de local type - ';


--
-- TOC entry 4727 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN pev.rclsst; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pev.rclsst IS 'Données reclassement - INDISPONIBLE';


--
-- TOC entry 4728 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN pev.gnidom; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pev.gnidom IS 'Top : pev non imposable (Dom) - ';


--
-- TOC entry 4729 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN pev.dcsglc; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pev.dcsglc IS 'Coefficient de situation générale - S9V99';


--
-- TOC entry 4730 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN pev.ccogrb; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pev.ccogrb IS 'Code groupe bâti révisé - INDISPONIBLE';


--
-- TOC entry 4731 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN pev.cocdi; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pev.cocdi IS 'Code cdi topad - INDISPONIBLE';


--
-- TOC entry 4732 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN pev.cosatp; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pev.cosatp IS 'Code service topad - INDISPONIBLE';


--
-- TOC entry 4733 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN pev.gsatp; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pev.gsatp IS 'Nature service gérant tp - INDISPONIBLE';


--
-- TOC entry 4734 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN pev.clocv; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pev.clocv IS 'Indicateur local vacant - INDISPONIBLE';


--
-- TOC entry 4735 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN pev.dvltpe; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pev.dvltpe IS 'VL TOTALE DE LA PEV MAJIC2 - ';


--
-- TOC entry 4736 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN pev.dcralc; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pev.dcralc IS 'correctif d’ascenseur - format S9V99 - INDISPONIBLE';


--
-- TOC entry 4737 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN pev.dcsplca; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pev.dcsplca IS 'Coefficient de situation particulière';


--
-- TOC entry 4738 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN pev.dcsglca; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pev.dcsglca IS 'Coefficient de situation générale';


--
-- TOC entry 4739 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN pev.dcralca; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pev.dcralca IS 'Correctif d’ascenseur';


--
-- TOC entry 4740 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN pev.topcn; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pev.topcn IS 'Top construction nouvelle (à partir de 2013)';


--
-- TOC entry 4741 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN pev.tpevtieom; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pev.tpevtieom IS 'Top Local passible de la TEOM (à partir de 2013)';


--
-- TOC entry 215 (class 1259 OID 53329)
-- Name: pevdependances; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE pevdependances (
    pevdependances character varying(20),
    annee character varying(4),
    ccodep character varying(2),
    ccodir character varying(1),
    ccocom character varying(3),
    invar character varying(10),
    dnupev character varying(3),
    pev character varying(17),
    dnudes character varying(3),
    dsudep integer,
    cconad character varying(2),
    asitet character varying(6),
    dmatgm character varying(2),
    dmatto character varying(2),
    detent character varying(1),
    geaulc character varying(1),
    gelelc character varying(1),
    gchclc character varying(1),
    dnbbai character varying(2),
    dnbdou character varying(2),
    dnblav character varying(2),
    dnbwc character varying(2),
    deqtlc integer,
    dcimlc numeric(2,1),
    dcetde numeric(3,2),
    dcspde character varying(3),
    dcspdea character varying(6),
    lot character varying
);


ALTER TABLE pevdependances OWNER TO postgres;

--
-- TOC entry 4742 (class 0 OID 0)
-- Dependencies: 215
-- Name: TABLE pevdependances; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE pevdependances IS 'Article descriptif de dépendance';


--
-- TOC entry 4743 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN pevdependances.ccodep; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevdependances.ccodep IS 'Code département - ';


--
-- TOC entry 4744 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN pevdependances.ccodir; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevdependances.ccodir IS 'Code direction - ';


--
-- TOC entry 4745 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN pevdependances.ccocom; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevdependances.ccocom IS 'Code commune INSEE - ';


--
-- TOC entry 4746 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN pevdependances.invar; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevdependances.invar IS 'Numéro invariant - ';


--
-- TOC entry 4747 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN pevdependances.dnupev; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevdependances.dnupev IS 'Numéro de pev - ';


--
-- TOC entry 4748 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN pevdependances.dnudes; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevdependances.dnudes IS 'Numéro d’ordre de descriptif - 001, 002';


--
-- TOC entry 4749 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN pevdependances.dsudep; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevdependances.dsudep IS 'Surface réelle de la dépendance - ';


--
-- TOC entry 4750 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN pevdependances.cconad; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevdependances.cconad IS 'Nature de dépendance - cf tableau des codes';


--
-- TOC entry 4751 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN pevdependances.asitet; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevdependances.asitet IS 'Localisation (bat, esc, niv) - ';


--
-- TOC entry 4752 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN pevdependances.dmatgm; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevdependances.dmatgm IS 'Matériaux des gros murs - 0 à 9 cf art 40';


--
-- TOC entry 4753 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN pevdependances.dmatto; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevdependances.dmatto IS 'Matériaux des toitures - 0 à 4 cf art 40';


--
-- TOC entry 4754 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN pevdependances.detent; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevdependances.detent IS 'état d''entretien - 1 à 5 cf art 40';


--
-- TOC entry 4755 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN pevdependances.geaulc; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevdependances.geaulc IS 'Présence d''eau - O = oui, N = non';


--
-- TOC entry 4756 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN pevdependances.gelelc; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevdependances.gelelc IS 'Présence d’électricité - O = oui, N = non';


--
-- TOC entry 4757 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN pevdependances.gchclc; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevdependances.gchclc IS 'Présence du chauffage central - O = oui, N = non';


--
-- TOC entry 4758 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN pevdependances.dnbbai; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevdependances.dnbbai IS 'Nombre de baignoires - ';


--
-- TOC entry 4759 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN pevdependances.dnbdou; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevdependances.dnbdou IS 'Nombre de douches - ';


--
-- TOC entry 4760 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN pevdependances.dnblav; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevdependances.dnblav IS 'Nombre de lavabos - ';


--
-- TOC entry 4761 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN pevdependances.dnbwc; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevdependances.dnbwc IS 'Nombre de WC - ';


--
-- TOC entry 4762 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN pevdependances.deqtlc; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevdependances.deqtlc IS 'Equivalence superficielle des - ';


--
-- TOC entry 4763 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN pevdependances.dcimlc; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevdependances.dcimlc IS 'Coefficient de pondération - 1,0 - 0,2 à 0,6';


--
-- TOC entry 4764 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN pevdependances.dcetde; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevdependances.dcetde IS 'Coefficient d entretien - 9V99';


--
-- TOC entry 4765 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN pevdependances.dcspde; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevdependances.dcspde IS 'Coefficient de situation particulière - S9V99 de -0,10 à +0,10  -- INDISPONIBLE';


--
-- TOC entry 4766 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN pevdependances.dcspdea; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevdependances.dcspdea IS 'Coefficient de situation particulière';


--
-- TOC entry 211 (class 1259 OID 53305)
-- Name: pevexoneration; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE pevexoneration (
    pevexoneration character varying(24),
    annee character varying(4),
    ccodep character varying(2),
    ccodir character varying(1),
    ccocom character varying(3),
    invar character varying(10),
    janbil character varying(4),
    dnupev character varying(3),
    pev character varying(17),
    dnuexb character varying(3),
    ccolloc character varying(2),
    pexb numeric(5,2),
    gnextl character varying(2),
    jandeb character varying(4),
    janimp character varying(4),
    vecdif character varying(9),
    vecdifa character varying(9),
    fcexb character varying(9),
    fcexba character varying(9),
    rcexba character varying(9),
    dvldif2 integer,
    dvldif2a integer,
    fcexb2 integer,
    fcexba2 integer,
    rcexba2 integer,
    lot character varying
);


ALTER TABLE pevexoneration OWNER TO postgres;

--
-- TOC entry 4767 (class 0 OID 0)
-- Dependencies: 211
-- Name: TABLE pevexoneration; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE pevexoneration IS 'Article exonération de pev';


--
-- TOC entry 4768 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN pevexoneration.ccodep; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevexoneration.ccodep IS 'Code département - ';


--
-- TOC entry 4769 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN pevexoneration.ccodir; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevexoneration.ccodir IS 'Code direction - ';


--
-- TOC entry 4770 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN pevexoneration.ccocom; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevexoneration.ccocom IS 'Code commune INSEE - ';


--
-- TOC entry 4771 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN pevexoneration.invar; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevexoneration.invar IS 'Numéro invariant - ';


--
-- TOC entry 4772 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN pevexoneration.janbil; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevexoneration.janbil IS 'Année d’immobilisation - servie pour ets. industriels';


--
-- TOC entry 4773 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN pevexoneration.dnupev; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevexoneration.dnupev IS 'Numéro de pev - ';


--
-- TOC entry 4774 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN pevexoneration.dnuexb; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevexoneration.dnuexb IS 'Numéro d’ordre de l’article - 001 à 015';


--
-- TOC entry 4775 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN pevexoneration.ccolloc; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevexoneration.ccolloc IS 'Code de collectivité locale accordant l’exonération - C D R TC tableau 2.3.9';


--
-- TOC entry 4776 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN pevexoneration.pexb; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevexoneration.pexb IS 'Taux d’exonération accordée - 999V99';


--
-- TOC entry 4777 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN pevexoneration.gnextl; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevexoneration.gnextl IS 'Nature d’exonération temporaire (et permanente pour ets. Industriels) - tableau des codes 2.3.10 et 2.3.8';


--
-- TOC entry 4778 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN pevexoneration.jandeb; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevexoneration.jandeb IS 'année de début d’exonération - ';


--
-- TOC entry 4779 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN pevexoneration.janimp; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevexoneration.janimp IS 'année de retour à imposition - ';


--
-- TOC entry 4780 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN pevexoneration.vecdif; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevexoneration.vecdif IS 'montant saisi de l’EC bénéficiant exo - INDISPONIBLE';


--
-- TOC entry 4781 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN pevexoneration.vecdifa; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevexoneration.vecdifa IS 'vecdif multiplié par coeff - INDISPONIBLE';


--
-- TOC entry 4782 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN pevexoneration.fcexb; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevexoneration.fcexb IS 'Fraction EC exonérée - INDISPONIBLE';


--
-- TOC entry 4783 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN pevexoneration.fcexba; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevexoneration.fcexba IS 'fcexb multiplié par coeff - INDISPONIBLE';


--
-- TOC entry 4784 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN pevexoneration.rcexba; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevexoneration.rcexba IS 'revenu cadastral exonéré - INDISPONIBLE';


--
-- TOC entry 4785 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN pevexoneration.dvldif2; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevexoneration.dvldif2 IS 'Montant de VL exonérée (valeur 70) - ';


--
-- TOC entry 4786 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN pevexoneration.dvldif2a; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevexoneration.dvldif2a IS 'Montant de VL exonérée (valeur de l’année) - ';


--
-- TOC entry 4787 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN pevexoneration.fcexb2; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevexoneration.fcexb2 IS 'Fraction de VL exonérée (valeur 70) - ';


--
-- TOC entry 4788 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN pevexoneration.fcexba2; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevexoneration.fcexba2 IS 'Fraction de VL exonérée (valeur de l’année) - ';


--
-- TOC entry 4789 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN pevexoneration.rcexba2; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevexoneration.rcexba2 IS 'Revenu cadastral exonéré (valeur de l’année) - ';


--
-- TOC entry 213 (class 1259 OID 53317)
-- Name: pevprincipale; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE pevprincipale (
    pevprincipale character varying(20),
    annee character varying(4),
    ccodep character varying(2),
    ccodir character varying(1),
    ccocom character varying(3),
    invar character varying(10),
    dnupev character varying(3),
    pev character varying(17),
    dnudes character varying(3),
    dep1_cconad character varying(2),
    dep1_dsueic integer,
    dep1_dcimei numeric(2,1),
    dep2_cconad character varying(2),
    dep2_dsueic integer,
    dep2_dcimei numeric(2,1),
    dep3_cconad character varying(2),
    dep3_dsueic integer,
    dep3_dcimei numeric(2,1),
    dep4_cconad character varying(2),
    dep4_dsueic integer,
    dep4_dcimei numeric(2,1),
    geaulc character varying(1),
    gelelc character varying(1),
    gesclc character varying(1),
    ggazlc character varying(1),
    gasclc character varying(1),
    gchclc character varying(1),
    gvorlc character varying(1),
    gteglc character varying(1),
    dnbbai character varying(2),
    dnbdou character varying(2),
    dnblav character varying(2),
    dnbwc character varying(2),
    deqdha integer,
    dnbppr character varying(2),
    dnbsam character varying(2),
    dnbcha character varying(2),
    dnbcu8 character varying(2),
    dnbcu9 character varying(2),
    dnbsea character varying(2),
    dnbann character varying(2),
    dnbpdc character varying(2),
    dsupdc integer,
    dmatgm character varying(2),
    dmatto character varying(2),
    jannat character varying(4),
    detent character varying(1),
    dnbniv character varying(2),
    lot character varying
);


ALTER TABLE pevprincipale OWNER TO postgres;

--
-- TOC entry 4790 (class 0 OID 0)
-- Dependencies: 213
-- Name: TABLE pevprincipale; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE pevprincipale IS 'Article descriptif partie principale habitation';


--
-- TOC entry 4791 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN pevprincipale.ccodep; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprincipale.ccodep IS 'Code département - ';


--
-- TOC entry 4792 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN pevprincipale.ccodir; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprincipale.ccodir IS 'Code direction - ';


--
-- TOC entry 4793 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN pevprincipale.ccocom; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprincipale.ccocom IS 'Code commune INSEE - ';


--
-- TOC entry 4794 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN pevprincipale.invar; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprincipale.invar IS 'Numéro invariant - ';


--
-- TOC entry 4795 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN pevprincipale.dnupev; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprincipale.dnupev IS 'Numéro de pev - ';


--
-- TOC entry 4796 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN pevprincipale.dnudes; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprincipale.dnudes IS 'Numéro d’ordre de descriptif - bHb, bHA...';


--
-- TOC entry 4797 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN pevprincipale.dep1_cconad; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprincipale.dep1_cconad IS 'Dépendance 1 - Nature de dépendance - Tableau 2.3.5';


--
-- TOC entry 4798 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN pevprincipale.dep1_dsueic; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprincipale.dep1_dsueic IS 'Dépendance 1 - Surface réelle de l’élément incorporé - ';


--
-- TOC entry 4799 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN pevprincipale.dep1_dcimei; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprincipale.dep1_dcimei IS 'Dépendance 1 - Coefficient de pondération - 9V9';


--
-- TOC entry 4800 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN pevprincipale.dep2_cconad; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprincipale.dep2_cconad IS 'Dépendance 2 - Nature de dépendance - Tableau 2.3.5';


--
-- TOC entry 4801 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN pevprincipale.dep2_dsueic; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprincipale.dep2_dsueic IS 'Dépendance 2 - Surface réelle de l’élément incorporé - ';


--
-- TOC entry 4802 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN pevprincipale.dep2_dcimei; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprincipale.dep2_dcimei IS 'Dépendance 2 - Coefficient de pondération - 9V9';


--
-- TOC entry 4803 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN pevprincipale.dep3_cconad; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprincipale.dep3_cconad IS 'Dépendance 3 - Nature de dépendance - Tableau 2.3.5';


--
-- TOC entry 4804 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN pevprincipale.dep3_dsueic; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprincipale.dep3_dsueic IS 'Dépendance 3 - Surface réelle de l’élément incorporé - ';


--
-- TOC entry 4805 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN pevprincipale.dep3_dcimei; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprincipale.dep3_dcimei IS 'Dépendance 3 - Coefficient de pondération - 9V9';


--
-- TOC entry 4806 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN pevprincipale.dep4_cconad; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprincipale.dep4_cconad IS 'Dépendance 4 - Nature de dépendance - Tableau 2.3.5';


--
-- TOC entry 4807 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN pevprincipale.dep4_dsueic; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprincipale.dep4_dsueic IS 'Dépendance 4 - Surface réelle de l’élément incorporé - ';


--
-- TOC entry 4808 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN pevprincipale.dep4_dcimei; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprincipale.dep4_dcimei IS 'Dépendance 4 - Coefficient de pondération - 9V9';


--
-- TOC entry 4809 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN pevprincipale.geaulc; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprincipale.geaulc IS 'Présence d’eau - O = oui, N = non';


--
-- TOC entry 4810 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN pevprincipale.gelelc; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprincipale.gelelc IS 'Présence d’électricité - O = oui, N = non';


--
-- TOC entry 4811 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN pevprincipale.gesclc; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprincipale.gesclc IS 'Présence d’escalier de service (appartement) - O = oui, N = non, blanc';


--
-- TOC entry 4812 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN pevprincipale.ggazlc; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprincipale.ggazlc IS 'Présence du gaz - O = oui, N = non';


--
-- TOC entry 4813 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN pevprincipale.gasclc; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprincipale.gasclc IS 'Présence d’ascenseur (appartement) - O = oui, N = non, blanc';


--
-- TOC entry 4814 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN pevprincipale.gchclc; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprincipale.gchclc IS 'Présence du chauffage central - O = oui, N = non';


--
-- TOC entry 4815 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN pevprincipale.gvorlc; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprincipale.gvorlc IS 'Présence de vide-ordures (appartement)  - O = oui, N = non, blanc';


--
-- TOC entry 4816 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN pevprincipale.gteglc; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprincipale.gteglc IS 'Présence du tout à l’égout - O = oui, N = non';


--
-- TOC entry 4817 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN pevprincipale.dnbbai; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprincipale.dnbbai IS 'Nombre de baignoires - ';


--
-- TOC entry 4818 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN pevprincipale.dnbdou; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprincipale.dnbdou IS 'Nombre de douches - ';


--
-- TOC entry 4819 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN pevprincipale.dnblav; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprincipale.dnblav IS 'Nombre de lavabos - ';


--
-- TOC entry 4820 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN pevprincipale.dnbwc; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprincipale.dnbwc IS 'Nombre de WC - ';


--
-- TOC entry 4821 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN pevprincipale.deqdha; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprincipale.deqdha IS 'Equivalence superficielle des éléments de confort Répartition des pièces - ';


--
-- TOC entry 4822 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN pevprincipale.dnbppr; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprincipale.dnbppr IS 'Nombre de pièces principales - ';


--
-- TOC entry 4823 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN pevprincipale.dnbsam; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprincipale.dnbsam IS 'Nombre de salles à manger - ';


--
-- TOC entry 4824 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN pevprincipale.dnbcha; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprincipale.dnbcha IS 'Nombre de chambres - ';


--
-- TOC entry 4825 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN pevprincipale.dnbcu8; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprincipale.dnbcu8 IS 'Nombre de cuisines de moins de 9 m2 - ';


--
-- TOC entry 4826 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN pevprincipale.dnbcu9; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprincipale.dnbcu9 IS 'Nombre de cuisines d’au moins 9 m2 - ';


--
-- TOC entry 4827 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN pevprincipale.dnbsea; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprincipale.dnbsea IS 'Nombre de salles d’eau - ';


--
-- TOC entry 4828 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN pevprincipale.dnbann; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprincipale.dnbann IS 'Nombre de pièces annexes - ';


--
-- TOC entry 4829 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN pevprincipale.dnbpdc; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprincipale.dnbpdc IS 'Nombre de pièces - ';


--
-- TOC entry 4830 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN pevprincipale.dsupdc; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprincipale.dsupdc IS 'Superficie des pièces - ';


--
-- TOC entry 4831 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN pevprincipale.dmatgm; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprincipale.dmatgm IS 'Matériaux des gros murs - 0 indéterminé 1 pierre 2 meulière 3 béton 4 briques 5 aggloméré 6 bois 9 autres ';


--
-- TOC entry 4832 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN pevprincipale.dmatto; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprincipale.dmatto IS 'Matériaux des toitures - 0 indéterminé 1 tuiles 2 ardoises 3 zinc aluminium 4 béton';


--
-- TOC entry 4833 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN pevprincipale.jannat; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprincipale.jannat IS 'Année d’achèvement - ';


--
-- TOC entry 4834 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN pevprincipale.detent; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprincipale.detent IS 'état d’entretien - 1 bon 2 assez bon 3 passable 4 médiocre 5 mauvais';


--
-- TOC entry 4835 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN pevprincipale.dnbniv; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprincipale.dnbniv IS 'Nombre de niveaux - ';


--
-- TOC entry 214 (class 1259 OID 53323)
-- Name: pevprofessionnelle; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE pevprofessionnelle (
    pevprofessionnelle character varying(20),
    annee character varying(4),
    ccodep character varying(2),
    ccodir character varying(1),
    ccocom character varying(3),
    invar character varying(10),
    dnupev character varying(3),
    pev character varying(17),
    dnudes character varying(3),
    vsupot character varying(9),
    vsurz1 character varying(9),
    vsurz2 character varying(9),
    vsurz3 character varying(9),
    vsurzt integer,
    vsurb1 character varying(9),
    vsurb2 character varying(9),
    lot character varying
);


ALTER TABLE pevprofessionnelle OWNER TO postgres;

--
-- TOC entry 4836 (class 0 OID 0)
-- Dependencies: 214
-- Name: TABLE pevprofessionnelle; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE pevprofessionnelle IS 'Article descriptif professionnel';


--
-- TOC entry 4837 (class 0 OID 0)
-- Dependencies: 214
-- Name: COLUMN pevprofessionnelle.ccodep; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprofessionnelle.ccodep IS 'Code département - ';


--
-- TOC entry 4838 (class 0 OID 0)
-- Dependencies: 214
-- Name: COLUMN pevprofessionnelle.ccodir; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprofessionnelle.ccodir IS 'Code direction - ';


--
-- TOC entry 4839 (class 0 OID 0)
-- Dependencies: 214
-- Name: COLUMN pevprofessionnelle.ccocom; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprofessionnelle.ccocom IS 'Code commune INSEE - ';


--
-- TOC entry 4840 (class 0 OID 0)
-- Dependencies: 214
-- Name: COLUMN pevprofessionnelle.invar; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprofessionnelle.invar IS 'Numéro invariant - ';


--
-- TOC entry 4841 (class 0 OID 0)
-- Dependencies: 214
-- Name: COLUMN pevprofessionnelle.dnupev; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprofessionnelle.dnupev IS 'Numéro de pev - ';


--
-- TOC entry 4842 (class 0 OID 0)
-- Dependencies: 214
-- Name: COLUMN pevprofessionnelle.dnudes; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprofessionnelle.dnudes IS 'Numéro d’ordre de descriptif - P01';


--
-- TOC entry 4843 (class 0 OID 0)
-- Dependencies: 214
-- Name: COLUMN pevprofessionnelle.vsupot; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprofessionnelle.vsupot IS 'surface pondérée - INDISPONIBLE';


--
-- TOC entry 4844 (class 0 OID 0)
-- Dependencies: 214
-- Name: COLUMN pevprofessionnelle.vsurz1; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprofessionnelle.vsurz1 IS 'Surface réelle totale zone 1 - INDISPONIBLE';


--
-- TOC entry 4845 (class 0 OID 0)
-- Dependencies: 214
-- Name: COLUMN pevprofessionnelle.vsurz2; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprofessionnelle.vsurz2 IS 'Surface réelle totale zone 2 - INDISPONIBLE';


--
-- TOC entry 4846 (class 0 OID 0)
-- Dependencies: 214
-- Name: COLUMN pevprofessionnelle.vsurz3; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprofessionnelle.vsurz3 IS 'Surface réelle totale zone 3 - INDISPONIBLE';


--
-- TOC entry 4847 (class 0 OID 0)
-- Dependencies: 214
-- Name: COLUMN pevprofessionnelle.vsurzt; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprofessionnelle.vsurzt IS 'Surface réelle totale - ';


--
-- TOC entry 4848 (class 0 OID 0)
-- Dependencies: 214
-- Name: COLUMN pevprofessionnelle.vsurb1; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprofessionnelle.vsurb1 IS 'surface réelle des bureaux 1 - INDISPONIBLE';


--
-- TOC entry 4849 (class 0 OID 0)
-- Dependencies: 214
-- Name: COLUMN pevprofessionnelle.vsurb2; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevprofessionnelle.vsurb2 IS 'surface réelle des bureaux 2 - INDISPONIBLE';


--
-- TOC entry 212 (class 1259 OID 53311)
-- Name: pevtaxation; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE pevtaxation (
    pevtaxation character varying(17),
    annee character varying(4),
    ccodep character varying(2),
    ccodir character varying(1),
    ccocom character varying(3),
    invar character varying(10),
    janbil character varying(4),
    dnupev character varying(3),
    pev character varying(17),
    co_vlbai integer,
    co_vlbaia integer,
    co_bipevla integer,
    de_vlbai integer,
    de_vlbaia integer,
    de_bipevla integer,
    re_vlbai integer,
    re_vlbaia integer,
    re_bipevla integer,
    gp_vlbai integer,
    gp_vlbaia integer,
    gp_bipevla integer,
    bateom integer,
    baomec integer,
    tse_vlbai integer,
    tse_vlbaia integer,
    tse_bipevla integer,
    mvltieomx integer,
    pvltieom bigint,
    lot character varying
);


ALTER TABLE pevtaxation OWNER TO postgres;

--
-- TOC entry 4850 (class 0 OID 0)
-- Dependencies: 212
-- Name: TABLE pevtaxation; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE pevtaxation IS 'Article taxation de pev';


--
-- TOC entry 4851 (class 0 OID 0)
-- Dependencies: 212
-- Name: COLUMN pevtaxation.ccodep; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevtaxation.ccodep IS 'Code département - ';


--
-- TOC entry 4852 (class 0 OID 0)
-- Dependencies: 212
-- Name: COLUMN pevtaxation.ccodir; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevtaxation.ccodir IS 'Code direction - ';


--
-- TOC entry 4853 (class 0 OID 0)
-- Dependencies: 212
-- Name: COLUMN pevtaxation.ccocom; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevtaxation.ccocom IS 'Code commune INSEE - ';


--
-- TOC entry 4854 (class 0 OID 0)
-- Dependencies: 212
-- Name: COLUMN pevtaxation.invar; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevtaxation.invar IS 'Numéro invariant - ';


--
-- TOC entry 4855 (class 0 OID 0)
-- Dependencies: 212
-- Name: COLUMN pevtaxation.janbil; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevtaxation.janbil IS 'Année d’immobilisation - High value pour ets. Industriels';


--
-- TOC entry 4856 (class 0 OID 0)
-- Dependencies: 212
-- Name: COLUMN pevtaxation.dnupev; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevtaxation.dnupev IS 'Numéro de pev - ';


--
-- TOC entry 4857 (class 0 OID 0)
-- Dependencies: 212
-- Name: COLUMN pevtaxation.co_vlbai; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevtaxation.co_vlbai IS 'Commune - Part de VL imposée (valeur70) - ';


--
-- TOC entry 4858 (class 0 OID 0)
-- Dependencies: 212
-- Name: COLUMN pevtaxation.co_vlbaia; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevtaxation.co_vlbaia IS 'Commune - Part de VL imposée (valeur de l’année) - ';


--
-- TOC entry 4859 (class 0 OID 0)
-- Dependencies: 212
-- Name: COLUMN pevtaxation.co_bipevla; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevtaxation.co_bipevla IS 'Commune - Base d’imposition de la pev(valeur de l’année) - ';


--
-- TOC entry 4860 (class 0 OID 0)
-- Dependencies: 212
-- Name: COLUMN pevtaxation.de_vlbai; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevtaxation.de_vlbai IS 'Département - Part de VL imposée (valeur70) - ';


--
-- TOC entry 4861 (class 0 OID 0)
-- Dependencies: 212
-- Name: COLUMN pevtaxation.de_vlbaia; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevtaxation.de_vlbaia IS 'Département - Part de VL imposée (valeur de l’année) - ';


--
-- TOC entry 4862 (class 0 OID 0)
-- Dependencies: 212
-- Name: COLUMN pevtaxation.de_bipevla; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevtaxation.de_bipevla IS 'Département - Base d’imposition de la pev(valeur de l’année) - ';


--
-- TOC entry 4863 (class 0 OID 0)
-- Dependencies: 212
-- Name: COLUMN pevtaxation.re_vlbai; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevtaxation.re_vlbai IS 'Région (avant 2012) - Part de VL imposée (valeur70) - ';


--
-- TOC entry 4864 (class 0 OID 0)
-- Dependencies: 212
-- Name: COLUMN pevtaxation.re_vlbaia; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevtaxation.re_vlbaia IS 'Région (avant 2012) - Part de VL imposée (valeur de l’année) - ';


--
-- TOC entry 4865 (class 0 OID 0)
-- Dependencies: 212
-- Name: COLUMN pevtaxation.re_bipevla; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevtaxation.re_bipevla IS 'Région (avant 2012) - Base d’imposition de la pev(valeur de l’année) - ';


--
-- TOC entry 4866 (class 0 OID 0)
-- Dependencies: 212
-- Name: COLUMN pevtaxation.gp_vlbai; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevtaxation.gp_vlbai IS 'Groupement de commune - Part de VL imposée (valeur70) - ';


--
-- TOC entry 4867 (class 0 OID 0)
-- Dependencies: 212
-- Name: COLUMN pevtaxation.gp_vlbaia; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevtaxation.gp_vlbaia IS 'Groupement de commune - Part de VL imposée (valeur de l’année) - ';


--
-- TOC entry 4868 (class 0 OID 0)
-- Dependencies: 212
-- Name: COLUMN pevtaxation.gp_bipevla; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevtaxation.gp_bipevla IS 'Groupement de commune - Base d’imposition de la pev(valeur de l’année) - ';


--
-- TOC entry 4869 (class 0 OID 0)
-- Dependencies: 212
-- Name: COLUMN pevtaxation.bateom; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevtaxation.bateom IS 'BASE ORDURES MENAGERES - ';


--
-- TOC entry 4870 (class 0 OID 0)
-- Dependencies: 212
-- Name: COLUMN pevtaxation.baomec; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevtaxation.baomec IS 'BASE ORDURES MENAGERES ECRETEE - ';


--
-- TOC entry 4871 (class 0 OID 0)
-- Dependencies: 212
-- Name: COLUMN pevtaxation.tse_vlbai; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevtaxation.tse_vlbai IS 'TSE (à partir de 2012) - Part de VL imposée (valeur70) - ';


--
-- TOC entry 4872 (class 0 OID 0)
-- Dependencies: 212
-- Name: COLUMN pevtaxation.tse_vlbaia; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevtaxation.tse_vlbaia IS 'TSE (à partir de 2012) - Part de VL imposée (valeur de l’année) - ';


--
-- TOC entry 4873 (class 0 OID 0)
-- Dependencies: 212
-- Name: COLUMN pevtaxation.tse_bipevla; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevtaxation.tse_bipevla IS 'TSE (à partir de 2012) - Base d’imposition de la pev(valeur de l’année) - ';


--
-- TOC entry 4874 (class 0 OID 0)
-- Dependencies: 212
-- Name: COLUMN pevtaxation.mvltieomx; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevtaxation.mvltieomx IS 'Montant TIEOM (depuis 2013)';


--
-- TOC entry 4875 (class 0 OID 0)
-- Dependencies: 212
-- Name: COLUMN pevtaxation.pvltieom; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN pevtaxation.pvltieom IS 'Ratio VL n-1 de la PEV / VL n-1 collectivité - 9v999999999999999 (Depuis 2013 mais supprimée en 2014)';


--
-- TOC entry 203 (class 1259 OID 53257)
-- Name: prop; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE prop (
    tmp character varying
);


ALTER TABLE prop OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 53335)
-- Name: proprietaire; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE proprietaire (
    proprietaire character varying(20),
    annee character varying(4),
    ccodep character varying(2),
    ccodir character varying(1),
    ccocom character varying(3),
    dnupro character varying(6),
    comptecommunal character varying(15),
    dnulp character varying(2),
    ccocif character varying(4),
    dnuper character varying(6),
    ccodro character varying(1),
    ccodem character varying(1),
    gdesip character varying(1),
    gtoper character varying(1),
    ccoqua character varying(1),
    gnexcf character varying(2),
    dtaucf character varying(3),
    dnatpr character varying(3),
    ccogrm character varying(2),
    dsglpm character varying(10),
    dforme character varying(7),
    ddenom character varying(60),
    gtyp3 character varying(1),
    dlign3 character varying(30),
    gtyp4 character varying(1),
    dlign4 character varying(36),
    gtyp5 character varying(1),
    dlign5 character varying(30),
    gtyp6 character varying(1),
    dlign6 character varying(32),
    ccopay character varying(3),
    ccodep1a2 character varying(2),
    ccodira character varying(1),
    ccocom_adr character varying(3),
    ccovoi character varying(5),
    ccoriv character varying(4),
    dnvoiri character varying(4),
    dindic character varying(1),
    ccopos character varying(5),
    dnirpp character varying(10),
    dqualp character varying(3),
    dnomlp character varying(30),
    dprnlp character varying(15),
    jdatnss date,
    dldnss character varying(58),
    epxnee character varying(3),
    dnomcp character varying(30),
    dprncp character varying(15),
    topcdi character varying(1),
    oriard character varying(1),
    fixard character varying(1),
    datadr character varying(8),
    topdec character varying(1),
    datdec character varying(4),
    dsiren character varying(10),
    ccmm character varying(1),
    topja character varying(1),
    datja date,
    anospi character varying(3),
    cblpmo character varying(1),
    gtodge character varying(1),
    gpctf character varying(1),
    gpctsb character varying(1),
    jmodge character varying(2),
    jandge character varying(4),
    jantfc character varying(4),
    jantbc character varying(4),
    dformjur character varying(4),
    dnomus character varying,
    dprnus character varying,
    lot character varying
);


ALTER TABLE proprietaire OWNER TO postgres;

--
-- TOC entry 4876 (class 0 OID 0)
-- Dependencies: 216
-- Name: TABLE proprietaire; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE proprietaire IS 'Propriétaire';


--
-- TOC entry 4877 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.ccodep; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.ccodep IS 'code département - ';


--
-- TOC entry 4878 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.ccodir; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.ccodir IS 'code direction - ';


--
-- TOC entry 4879 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.ccocom; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.ccocom IS 'code commune INSEE - ';


--
-- TOC entry 4880 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.dnupro; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.dnupro IS 'compte communal - cgroup groupe de compte communal + * A B .. - ';


--
-- TOC entry 4881 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.dnulp; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.dnulp IS 'numéro de libellé partiel - 01 à 06';


--
-- TOC entry 4882 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.ccocif; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.ccocif IS 'code cdif - ';


--
-- TOC entry 4883 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.dnuper; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.dnuper IS 'numéro de personne dans le cdif - Il s’agit du numéro de personne ';


--
-- TOC entry 4884 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.ccodro; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.ccodro IS 'code du droit réel ou particulier - Nouveau code en 2009 : C (fiduciaire)';


--
-- TOC entry 4885 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.ccodem; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.ccodem IS 'code du démembrement/indivision - C S L I V';


--
-- TOC entry 4886 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.gdesip; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.gdesip IS 'indicateur du destinataire de l’avis d’imposition - 1 = oui, 0 = non';


--
-- TOC entry 4887 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.gtoper; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.gtoper IS 'indicateur de personne physique ou morale - 1 = physique, 2 = morale';


--
-- TOC entry 4888 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.ccoqua; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.ccoqua IS 'Code qualité de personne physique - 1, 2 ou 3';


--
-- TOC entry 4889 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.gnexcf; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.gnexcf IS 'code exo ecf - INDISPONIBLE';


--
-- TOC entry 4890 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.dtaucf; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.dtaucf IS 'taux exo ecf - INDISPONIBLE';


--
-- TOC entry 4891 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.dnatpr; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.dnatpr IS 'Code nature de personne physique ou morale - Voir $ 2.2.7';


--
-- TOC entry 4892 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.ccogrm; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.ccogrm IS 'Code groupe de personne morale - 0 à 9 - 0A à 9A';


--
-- TOC entry 4893 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.dsglpm; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.dsglpm IS 'sigle de personne morale - ';


--
-- TOC entry 4894 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.dforme; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.dforme IS 'forme juridique abrégée majic2 X Données Générales - ';


--
-- TOC entry 4895 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.ddenom; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.ddenom IS 'Dénomination de personne physique ou morale - ';


--
-- TOC entry 4896 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.gtyp3; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.gtyp3 IS 'type de la 3eme ligne d’adresse - ';


--
-- TOC entry 4897 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.dlign3; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.dlign3 IS '3eme ligne d’adresse - ';


--
-- TOC entry 4898 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.gtyp4; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.gtyp4 IS 'Type de la 4eme ligne d’adresse - ';


--
-- TOC entry 4899 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.dlign4; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.dlign4 IS '4eme ligne d’adresse - ';


--
-- TOC entry 4900 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.gtyp5; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.gtyp5 IS 'type de la 5eme ligne d’adresse - ';


--
-- TOC entry 4901 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.dlign5; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.dlign5 IS '5eme ligne d’adresse - ';


--
-- TOC entry 4902 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.gtyp6; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.gtyp6 IS 'type de la 6eme ligne d’adresse - ';


--
-- TOC entry 4903 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.dlign6; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.dlign6 IS '6eme ligne d’adresse X Codification de l’adresse - ';


--
-- TOC entry 4904 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.ccopay; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.ccopay IS 'code de pays étranger et TOM - non servi pour France métropole et Dom';


--
-- TOC entry 4905 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.ccodep1a2; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.ccodep1a2 IS 'Code département de l’adresse - ';


--
-- TOC entry 4906 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.ccodira; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.ccodira IS 'Code direction de l’adresse - ';


--
-- TOC entry 4907 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.ccocom_adr; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.ccocom_adr IS 'Code commune de l’adresse - ';


--
-- TOC entry 4908 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.ccovoi; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.ccovoi IS 'Code majic2 de la voie - ';


--
-- TOC entry 4909 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.ccoriv; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.ccoriv IS 'Code rivoli de la voie - ';


--
-- TOC entry 4910 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.dnvoiri; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.dnvoiri IS 'numéro de voirie - ';


--
-- TOC entry 4911 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.dindic; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.dindic IS 'indice de répétition de voirie - ';


--
-- TOC entry 4912 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.ccopos; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.ccopos IS 'Code postal X Dénomination formatée de personne physique - ';


--
-- TOC entry 4913 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.dnirpp; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.dnirpp IS 'zone à blanc - INDISPONIBLE';


--
-- TOC entry 4914 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.dqualp; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.dqualp IS 'Qualité abrégée - M, MME ou MLE';


--
-- TOC entry 4915 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.dnomlp; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.dnomlp IS 'Nom d’usage - ';


--
-- TOC entry 4916 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.dprnlp; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.dprnlp IS 'Prénoms associés au nom d’usage - ';


--
-- TOC entry 4917 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.jdatnss; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.jdatnss IS 'date de naissance - sous la forme jj/mm/aaaa';


--
-- TOC entry 4918 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.dldnss; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.dldnss IS 'lieu de naissance - ';


--
-- TOC entry 4919 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.epxnee; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.epxnee IS 'mention du complément - EPX ou NEE si complément';


--
-- TOC entry 4920 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.dnomcp; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.dnomcp IS 'Nom complément - ';


--
-- TOC entry 4921 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.dprncp; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.dprncp IS 'Prénoms associés au complément - ';


--
-- TOC entry 4922 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.topcdi; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.topcdi IS 'top transalp - INDISPONIBLE';


--
-- TOC entry 4923 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.oriard; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.oriard IS 'origine adresse - INDISPONIBLE';


--
-- TOC entry 4924 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.fixard; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.fixard IS 'pérennité adresse - INDISPONIBLE';


--
-- TOC entry 4925 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.datadr; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.datadr IS 'date adresse - INDISPONIBLE';


--
-- TOC entry 4926 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.topdec; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.topdec IS 'origine décès - INDISPONIBLE';


--
-- TOC entry 4927 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.datdec; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.datdec IS 'date de décès - INDISPONIBLE';


--
-- TOC entry 4928 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.dsiren; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.dsiren IS 'numéro siren - ';


--
-- TOC entry 4929 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.ccmm; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.ccmm IS 'création compte cadastral - INDISPONIBLE';


--
-- TOC entry 4930 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.topja; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.topja IS 'indic jeune agriculteur - INDISPONIBLE';


--
-- TOC entry 4931 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.datja; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.datja IS 'date jeune agriculteur - INDISPONIBLE';


--
-- TOC entry 4932 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.anospi; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.anospi IS 'ano transalp - INDISPONIBLE';


--
-- TOC entry 4933 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.cblpmo; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.cblpmo IS 'code blocage caractère personne morale - INDISPONIBLE';


--
-- TOC entry 4934 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.gtodge; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.gtodge IS 'top appartenance à la DGE - INDISPONIBLE';


--
-- TOC entry 4935 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.gpctf; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.gpctf IS 'top paiement centralisé à la taxe foncière - INDISPONIBLE';


--
-- TOC entry 4936 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.gpctsb; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.gpctsb IS 'top paiement centralisé à la TSBCS - INDISPONIBLE';


--
-- TOC entry 4937 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.jmodge; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.jmodge IS 'mois d’entrée à la DGE - INDISPONIBLE';


--
-- TOC entry 4938 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.jandge; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.jandge IS 'année d’entrée à la DGE - INDISPONIBLE';


--
-- TOC entry 4939 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.jantfc; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.jantfc IS 'année d’entrée paiement TF - INDISPONIBLE';


--
-- TOC entry 4940 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.jantbc; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.jantbc IS 'année d’entrée paiement TSBCS - INDISPONIBLE';


--
-- TOC entry 4941 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.dformjur; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.dformjur IS 'Forme juridique (Depuis 2013)';


--
-- TOC entry 4942 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.dnomus; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.dnomus IS 'Nom d''usage (Depuis 2015)';


--
-- TOC entry 4943 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN proprietaire.dprnus; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN proprietaire.dprnus IS 'Prénom d''usage (Depuis 2015)';


--
-- TOC entry 352 (class 1259 OID 54071)
-- Name: ptcanv_id; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE ptcanv_id (
    ogc_fid integer NOT NULL,
    object_rid character varying,
    can character varying,
    idu character varying,
    map character varying,
    palt character varying,
    ppln character varying,
    sym character varying,
    creat_date integer,
    update_date integer,
    geom public.geometry(Geometry,2154)
);


ALTER TABLE ptcanv_id OWNER TO postgres;

--
-- TOC entry 351 (class 1259 OID 54069)
-- Name: ptcanv_id_ogc_fid_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE ptcanv_id_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ptcanv_id_ogc_fid_seq OWNER TO postgres;

--
-- TOC entry 4944 (class 0 OID 0)
-- Dependencies: 351
-- Name: ptcanv_id_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE ptcanv_id_ogc_fid_seq OWNED BY ptcanv_id.ogc_fid;


--
-- TOC entry 354 (class 1259 OID 54080)
-- Name: section_id; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE section_id (
    ogc_fid integer NOT NULL,
    object_rid character varying,
    idu character varying,
    tex character varying,
    creat_date integer,
    update_date integer,
    geom public.geometry(Geometry,2154)
);


ALTER TABLE section_id OWNER TO postgres;

--
-- TOC entry 353 (class 1259 OID 54078)
-- Name: section_id_ogc_fid_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE section_id_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE section_id_ogc_fid_seq OWNER TO postgres;

--
-- TOC entry 4945 (class 0 OID 0)
-- Dependencies: 353
-- Name: section_id_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE section_id_ogc_fid_seq OWNED BY section_id.ogc_fid;


--
-- TOC entry 356 (class 1259 OID 54089)
-- Name: subdfisc_id; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE subdfisc_id (
    ogc_fid integer NOT NULL,
    object_rid character varying,
    tex character varying,
    creat_date integer,
    update_date integer,
    geom public.geometry(Geometry,2154)
);


ALTER TABLE subdfisc_id OWNER TO postgres;

--
-- TOC entry 355 (class 1259 OID 54087)
-- Name: subdfisc_id_ogc_fid_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE subdfisc_id_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE subdfisc_id_ogc_fid_seq OWNER TO postgres;

--
-- TOC entry 4946 (class 0 OID 0)
-- Dependencies: 355
-- Name: subdfisc_id_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE subdfisc_id_ogc_fid_seq OWNED BY subdfisc_id.ogc_fid;


--
-- TOC entry 358 (class 1259 OID 54098)
-- Name: subdsect_id; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE subdsect_id (
    ogc_fid integer NOT NULL,
    object_rid character varying,
    copl character varying,
    dedi character varying,
    dis character varying,
    dred character varying,
    eor character varying,
    icl double precision,
    idu character varying,
    inp character varying,
    qupl character varying,
    creat_date integer,
    update_date integer,
    geom public.geometry(Geometry,2154)
);


ALTER TABLE subdsect_id OWNER TO postgres;

--
-- TOC entry 357 (class 1259 OID 54096)
-- Name: subdsect_id_ogc_fid_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE subdsect_id_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE subdsect_id_ogc_fid_seq OWNER TO postgres;

--
-- TOC entry 4947 (class 0 OID 0)
-- Dependencies: 357
-- Name: subdsect_id_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE subdsect_id_ogc_fid_seq OWNED BY subdsect_id.ogc_fid;


--
-- TOC entry 205 (class 1259 OID 53269)
-- Name: suf; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE suf (
    suf character varying(21),
    annee character varying(4),
    ccodep character varying(2),
    ccodir character varying(1),
    ccocom character varying(3),
    ccopre character varying(3),
    ccosec character varying(2),
    dnupla character varying(4),
    parcelle character varying(19),
    ccosub character varying(2),
    dcntsf integer,
    dnupro character varying(6),
    comptecommunal character varying(15),
    gnexps character varying(2),
    drcsub numeric(10,2),
    drcsuba numeric(10,2),
    ccostn character varying(1),
    cgrnum character varying(2),
    dsgrpf character varying(2),
    dclssf character varying(2),
    cnatsp character varying(5),
    drgpos character varying(1),
    ccoprel character varying(3),
    ccosecl character varying(2),
    dnuplal character varying(4),
    dnupdl character varying(3),
    pdl character varying(22),
    dnulot character varying(7),
    rclsi character varying(46),
    gnidom character varying(1),
    topja character varying(1),
    datja date,
    postel character varying(1),
    lot character varying
);


ALTER TABLE suf OWNER TO postgres;

--
-- TOC entry 4948 (class 0 OID 0)
-- Dependencies: 205
-- Name: TABLE suf; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE suf IS 'Article descriptif de suf';


--
-- TOC entry 4949 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN suf.ccodep; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN suf.ccodep IS 'Code département - ';


--
-- TOC entry 4950 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN suf.ccodir; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN suf.ccodir IS 'Code direction - ';


--
-- TOC entry 4951 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN suf.ccocom; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN suf.ccocom IS 'Code commune INSEE ou DGI d’arrondissement - ';


--
-- TOC entry 4952 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN suf.ccopre; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN suf.ccopre IS 'Préfixe de section ou quartier servi pour les communes associées - ';


--
-- TOC entry 4953 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN suf.ccosec; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN suf.ccosec IS 'Section cadastrale - ';


--
-- TOC entry 4954 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN suf.dnupla; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN suf.dnupla IS 'Numéro de plan - ';


--
-- TOC entry 4955 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN suf.ccosub; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN suf.ccosub IS 'Lettres indicatives de suf - ';


--
-- TOC entry 4956 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN suf.dcntsf; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN suf.dcntsf IS 'Contenance de la suf - en centiares';


--
-- TOC entry 4957 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN suf.dnupro; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN suf.dnupro IS 'Compte communal du propriétaire de la suf - ';


--
-- TOC entry 4958 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN suf.gnexps; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN suf.gnexps IS 'Code exonération permanente - ep cd cr dr ni rt';


--
-- TOC entry 4959 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN suf.drcsub; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN suf.drcsub IS 'Revenu cadastral en valeur actualise référence 1980 - Exprimé Euros';


--
-- TOC entry 4960 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN suf.drcsuba; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN suf.drcsuba IS 'Revenu cadastral revalorisé en valeur du 01-01 de l’année - Exprimé en Euros';


--
-- TOC entry 4961 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN suf.ccostn; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN suf.ccostn IS 'Série-tarif - A à Z, sauf I,O,Q';


--
-- TOC entry 4962 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN suf.cgrnum; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN suf.cgrnum IS 'Groupe de nature de culture - 01 à 13';


--
-- TOC entry 4963 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN suf.dsgrpf; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN suf.dsgrpf IS 'Sous-groupe alphabétique - ';


--
-- TOC entry 4964 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN suf.dclssf; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN suf.dclssf IS 'Classe dans le groupe et la série-tarif - ';


--
-- TOC entry 4965 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN suf.cnatsp; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN suf.cnatsp IS 'code nature de culture spéciale - ';


--
-- TOC entry 4966 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN suf.drgpos; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN suf.drgpos IS 'Top terrain constructible Liaison avec un lot de pdl - « 0 » ou « 9 » ';


--
-- TOC entry 4967 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN suf.ccoprel; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN suf.ccoprel IS 'Préfixe de la parcelle identifiant le lot - ';


--
-- TOC entry 4968 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN suf.ccosecl; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN suf.ccosecl IS 'Section de la parcelle identifiant le lot - ';


--
-- TOC entry 4969 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN suf.dnuplal; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN suf.dnuplal IS 'N° de plan de la parcelle de référence - ';


--
-- TOC entry 4970 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN suf.dnupdl; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN suf.dnupdl IS 'Numéro d ordre de la pdl - en général, 001';


--
-- TOC entry 4971 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN suf.dnulot; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN suf.dnulot IS 'Numéro du lot - Le lot de BND se présente sous la forme 00Axxxx - ';


--
-- TOC entry 4972 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN suf.rclsi; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN suf.rclsi IS 'Données classement révisé - INDISPONIBLE';


--
-- TOC entry 4973 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN suf.gnidom; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN suf.gnidom IS 'Indicateur de suf non imposable - * ou blanc';


--
-- TOC entry 4974 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN suf.topja; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN suf.topja IS 'Indicateur jeune agriculteur - J ou blanc';


--
-- TOC entry 4975 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN suf.datja; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN suf.datja IS 'Date d’installation jeune agriculteur - peut être servie si topja = J';


--
-- TOC entry 4976 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN suf.postel; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN suf.postel IS 'Indicateur de bien appartenant à la Poste - X ou blanc';


--
-- TOC entry 206 (class 1259 OID 53275)
-- Name: sufexoneration; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE sufexoneration (
    sufexoneration character varying(23),
    annee character varying(4),
    ccodep character varying(2),
    ccodir character varying(1),
    ccocom character varying(3),
    ccopre character varying(3),
    ccosec character varying(2),
    dnupla character varying(4),
    ccosub character varying(2),
    suf character varying(21),
    rnuexn character varying(2),
    vecexn numeric(10,2),
    ccolloc character varying(2),
    pexn integer,
    gnexts character varying(2),
    jandeb character varying(4),
    jfinex character varying(4),
    fcexn character varying(10),
    fcexna character varying(10),
    rcexna character varying(10),
    rcexnba numeric(10,2),
    mpexnba character varying(10),
    lot character varying
);


ALTER TABLE sufexoneration OWNER TO postgres;

--
-- TOC entry 4977 (class 0 OID 0)
-- Dependencies: 206
-- Name: TABLE sufexoneration; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE sufexoneration IS 'Article exonération de suf';


--
-- TOC entry 4978 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN sufexoneration.ccodep; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN sufexoneration.ccodep IS 'Code département - ';


--
-- TOC entry 4979 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN sufexoneration.ccodir; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN sufexoneration.ccodir IS 'Code direction - ';


--
-- TOC entry 4980 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN sufexoneration.ccocom; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN sufexoneration.ccocom IS 'Code commune INSEE ou DGI d’arrondissement - ';


--
-- TOC entry 4981 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN sufexoneration.ccopre; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN sufexoneration.ccopre IS 'Préfixe de section ou quartier servi pour les communes associées - ';


--
-- TOC entry 4982 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN sufexoneration.ccosec; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN sufexoneration.ccosec IS 'Section cadastrale - ';


--
-- TOC entry 4983 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN sufexoneration.dnupla; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN sufexoneration.dnupla IS 'Numéro de plan - ';


--
-- TOC entry 4984 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN sufexoneration.ccosub; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN sufexoneration.ccosub IS 'Lettres indicatives de suf - ';


--
-- TOC entry 4985 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN sufexoneration.rnuexn; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN sufexoneration.rnuexn IS 'Numéro d ordre d’exonération temporaire - 01 à 04';


--
-- TOC entry 4986 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN sufexoneration.vecexn; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN sufexoneration.vecexn IS 'Montant de VL sur lequel porte l’exonération - en Euros';


--
-- TOC entry 4987 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN sufexoneration.ccolloc; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN sufexoneration.ccolloc IS 'Collectivité accordant l’exonération - TC, C, R d OU GC';


--
-- TOC entry 4988 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN sufexoneration.pexn; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN sufexoneration.pexn IS 'Pourcentage d’exonération - 100';


--
-- TOC entry 4989 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN sufexoneration.gnexts; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN sufexoneration.gnexts IS 'Code d’exonération temporaire - TA TR NO PB PP PR PF ER TU OL HP HR ou NA';


--
-- TOC entry 4990 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN sufexoneration.jandeb; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN sufexoneration.jandeb IS 'Année de début d’exonération - à blanc';


--
-- TOC entry 4991 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN sufexoneration.jfinex; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN sufexoneration.jfinex IS 'Année de retour à imposition - à blanc';


--
-- TOC entry 4992 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN sufexoneration.fcexn; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN sufexoneration.fcexn IS 'Fraction de vecsuf exonérée - INDISPONIBLE';


--
-- TOC entry 4993 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN sufexoneration.fcexna; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN sufexoneration.fcexna IS 'fcexn en année N - INDISPONIBLE';


--
-- TOC entry 4994 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN sufexoneration.rcexna; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN sufexoneration.rcexna IS 'revenu (4/5 fcexna) correspondant - INDISPONIBLE';


--
-- TOC entry 4995 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN sufexoneration.rcexnba; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN sufexoneration.rcexnba IS 'Revenu cadastral exonéré, en valeur de l’année - Exprimé en Euros';


--
-- TOC entry 4996 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN sufexoneration.mpexnba; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN sufexoneration.mpexnba IS 'Fraction majo TC exonérée, en valeur de l’année - INDISPONIBLE';


--
-- TOC entry 207 (class 1259 OID 53281)
-- Name: suftaxation; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE suftaxation (
    suftaxation character varying(21),
    annee character varying(4),
    ccodep character varying(2),
    ccodir character varying(1),
    ccocom character varying(3),
    ccopre character varying(3),
    ccosec character varying(2),
    dnupla character varying(4),
    ccosub character varying(2),
    suf character varying(21),
    c1majposa numeric(10,2),
    c1bisufad numeric(10,2),
    c2majposa numeric(10,2),
    c2bisufad numeric(10,2),
    c3majposa numeric(10,2),
    c3bisufad numeric(10,2),
    c4majposa numeric(10,2),
    c4bisufad numeric(10,2),
    cntmajtc integer,
    majposca numeric(10,2),
    lot character varying
);


ALTER TABLE suftaxation OWNER TO postgres;

--
-- TOC entry 4997 (class 0 OID 0)
-- Dependencies: 207
-- Name: TABLE suftaxation; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE suftaxation IS 'Article taxation de suf';


--
-- TOC entry 4998 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN suftaxation.ccodep; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN suftaxation.ccodep IS 'Code département - ';


--
-- TOC entry 4999 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN suftaxation.ccodir; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN suftaxation.ccodir IS 'Code direction - ';


--
-- TOC entry 5000 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN suftaxation.ccocom; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN suftaxation.ccocom IS 'Code commune INSEE ou DGI d’arrondissement - ';


--
-- TOC entry 5001 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN suftaxation.ccopre; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN suftaxation.ccopre IS 'Préfixe de section ou quartier servi pour les communes associées - ';


--
-- TOC entry 5002 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN suftaxation.ccosec; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN suftaxation.ccosec IS 'Section cadastrale - ';


--
-- TOC entry 5003 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN suftaxation.dnupla; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN suftaxation.dnupla IS 'Numéro de plan - ';


--
-- TOC entry 5004 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN suftaxation.ccosub; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN suftaxation.ccosub IS 'Lettres indicatives de suf - ';


--
-- TOC entry 5005 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN suftaxation.c1majposa; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN suftaxation.c1majposa IS 'c1 - Montant de la majoration terrain constructible. Servi pour la part communale. Toujours à zéro pour autres collectivités. - exprimé en Euros';


--
-- TOC entry 5006 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN suftaxation.c1bisufad; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN suftaxation.c1bisufad IS 'c1 - Base d’imposition de la suf en valeur de l’année - exprimé en Euros';


--
-- TOC entry 5007 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN suftaxation.c2majposa; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN suftaxation.c2majposa IS 'c2 - Montant de la majoration terrain constructible. Servi pour la part communale. Toujours à zéro pour autres collectivités. - exprimé en Euros';


--
-- TOC entry 5008 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN suftaxation.c2bisufad; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN suftaxation.c2bisufad IS 'c2 - Base d’imposition de la suf en valeur de l’année - exprimé en Euros';


--
-- TOC entry 5009 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN suftaxation.c3majposa; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN suftaxation.c3majposa IS 'c3 - Montant de la majoration terrain constructible. Servi pour la part communale. Toujours à zéro pour autres collectivités. - exprimé en Euros';


--
-- TOC entry 5010 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN suftaxation.c3bisufad; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN suftaxation.c3bisufad IS 'c3 - Base d’imposition de la suf en valeur de l’année - exprimé en Euros';


--
-- TOC entry 5011 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN suftaxation.c4majposa; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN suftaxation.c4majposa IS 'c4 - Montant de la majoration terrain constructible. Servi pour la part communale. Toujours à zéro pour autres collectivités. - exprimé en Euros';


--
-- TOC entry 5012 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN suftaxation.c4bisufad; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN suftaxation.c4bisufad IS 'c4 - Base d’imposition de la suf en valeur de l’année - exprimé en Euros';


--
-- TOC entry 5013 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN suftaxation.cntmajtc; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN suftaxation.cntmajtc IS 'Nouvelle contenance suf pour calcul majorationn TC';


--
-- TOC entry 5014 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN suftaxation.majposca; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN suftaxation.majposca IS 'Majoration TC pour les chambres d’agriculture, exprimé en centimes d’Euros (à partir de 2014)';


--
-- TOC entry 360 (class 1259 OID 54107)
-- Name: symblim_id; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE symblim_id (
    ogc_fid integer NOT NULL,
    object_rid character varying,
    ori double precision,
    sym character varying,
    tex character varying,
    creat_date integer,
    update_date integer,
    geom public.geometry(Geometry,2154)
);


ALTER TABLE symblim_id OWNER TO postgres;

--
-- TOC entry 359 (class 1259 OID 54105)
-- Name: symblim_id_ogc_fid_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE symblim_id_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE symblim_id_ogc_fid_seq OWNER TO postgres;

--
-- TOC entry 5015 (class 0 OID 0)
-- Dependencies: 359
-- Name: symblim_id_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE symblim_id_ogc_fid_seq OWNED BY symblim_id.ogc_fid;


--
-- TOC entry 362 (class 1259 OID 54116)
-- Name: tline_id; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE tline_id (
    ogc_fid integer NOT NULL,
    object_rid character varying,
    sym character varying,
    tex character varying,
    creat_date integer,
    update_date integer,
    geom public.geometry(Geometry,2154)
);


ALTER TABLE tline_id OWNER TO postgres;

--
-- TOC entry 361 (class 1259 OID 54114)
-- Name: tline_id_ogc_fid_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE tline_id_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tline_id_ogc_fid_seq OWNER TO postgres;

--
-- TOC entry 5016 (class 0 OID 0)
-- Dependencies: 361
-- Name: tline_id_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE tline_id_ogc_fid_seq OWNED BY tline_id.ogc_fid;


--
-- TOC entry 236 (class 1259 OID 53477)
-- Name: top48a; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE top48a (
    top48a character varying(1) NOT NULL,
    top48a_lib character varying
);


ALTER TABLE top48a OWNER TO postgres;

--
-- TOC entry 364 (class 1259 OID 54125)
-- Name: tpoint_id; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE tpoint_id (
    ogc_fid integer NOT NULL,
    object_rid character varying,
    ori double precision,
    sym character varying,
    tex character varying,
    creat_date integer,
    update_date integer,
    geom public.geometry(Geometry,2154)
);


ALTER TABLE tpoint_id OWNER TO postgres;

--
-- TOC entry 363 (class 1259 OID 54123)
-- Name: tpoint_id_ogc_fid_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE tpoint_id_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tpoint_id_ogc_fid_seq OWNER TO postgres;

--
-- TOC entry 5017 (class 0 OID 0)
-- Dependencies: 363
-- Name: tpoint_id_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE tpoint_id_ogc_fid_seq OWNED BY tpoint_id.ogc_fid;


--
-- TOC entry 366 (class 1259 OID 54134)
-- Name: tronfluv_id; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE tronfluv_id (
    ogc_fid integer NOT NULL,
    object_rid character varying,
    tex10 character varying,
    tex2 character varying,
    tex3 character varying,
    tex4 character varying,
    tex5 character varying,
    tex6 character varying,
    tex7 character varying,
    tex8 character varying,
    tex9 character varying,
    tex character varying,
    creat_date integer,
    update_date integer,
    geom public.geometry(Geometry,2154)
);


ALTER TABLE tronfluv_id OWNER TO postgres;

--
-- TOC entry 365 (class 1259 OID 54132)
-- Name: tronfluv_id_ogc_fid_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE tronfluv_id_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tronfluv_id_ogc_fid_seq OWNER TO postgres;

--
-- TOC entry 5018 (class 0 OID 0)
-- Dependencies: 365
-- Name: tronfluv_id_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE tronfluv_id_ogc_fid_seq OWNED BY tronfluv_id.ogc_fid;


--
-- TOC entry 368 (class 1259 OID 54143)
-- Name: tronroute_id; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE tronroute_id (
    ogc_fid integer NOT NULL,
    object_rid character varying,
    rcad character varying,
    tex10 character varying,
    tex2 character varying,
    tex3 character varying,
    tex4 character varying,
    tex5 character varying,
    tex6 character varying,
    tex7 character varying,
    tex8 character varying,
    tex9 character varying,
    tex character varying,
    creat_date integer,
    update_date integer,
    geom public.geometry(Geometry,2154)
);


ALTER TABLE tronroute_id OWNER TO postgres;

--
-- TOC entry 367 (class 1259 OID 54141)
-- Name: tronroute_id_ogc_fid_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE tronroute_id_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tronroute_id_ogc_fid_seq OWNER TO postgres;

--
-- TOC entry 5019 (class 0 OID 0)
-- Dependencies: 367
-- Name: tronroute_id_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE tronroute_id_ogc_fid_seq OWNED BY tronroute_id.ogc_fid;


--
-- TOC entry 370 (class 1259 OID 54152)
-- Name: tsurf_id; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE tsurf_id (
    ogc_fid integer NOT NULL,
    object_rid character varying,
    sym character varying,
    tex character varying,
    creat_date integer,
    update_date integer,
    geom public.geometry(Geometry,2154)
);


ALTER TABLE tsurf_id OWNER TO postgres;

--
-- TOC entry 369 (class 1259 OID 54150)
-- Name: tsurf_id_ogc_fid_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE tsurf_id_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tsurf_id_ogc_fid_seq OWNER TO postgres;

--
-- TOC entry 5020 (class 0 OID 0)
-- Dependencies: 369
-- Name: tsurf_id_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE tsurf_id_ogc_fid_seq OWNED BY tsurf_id.ogc_fid;


--
-- TOC entry 255 (class 1259 OID 53629)
-- Name: typcom; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE typcom (
    typcom character varying(1) NOT NULL,
    typcom_lib character varying
);


ALTER TABLE typcom OWNER TO postgres;

--
-- TOC entry 259 (class 1259 OID 53661)
-- Name: typvoi; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE typvoi (
    typvoi character varying(1) NOT NULL,
    typvoi_lib character varying
);


ALTER TABLE typvoi OWNER TO postgres;

--
-- TOC entry 273 (class 1259 OID 53738)
-- Name: v_geo_parcelle; Type: VIEW; Schema: cadastre; Owner: postgres
--

CREATE VIEW v_geo_parcelle AS
 SELECT g.geo_parcelle,
    g.annee,
    g.object_rid,
    g.idu,
    g.geo_section,
    g.geo_subdsect,
    g.supf,
    g.geo_indp,
    g.coar,
    g.tex,
    g.tex2,
    g.codm,
    g.creat_date,
    g.update_dat,
    g.lot,
    g.ogc_fid,
    g.geom,
    p.comptecommunal,
    p.voie
   FROM (geo_parcelle g
     LEFT JOIN parcelle p ON (((g.geo_parcelle)::text = (p.parcelle)::text)));


ALTER TABLE v_geo_parcelle OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 53383)
-- Name: voie; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE voie (
    voie character varying(19),
    annee character varying(4),
    ccodep character varying(2),
    ccodir character varying(1),
    ccocom character varying(3),
    commune character varying(10),
    natvoiriv character varying(1),
    ccoriv character varying(4),
    clerivili character varying(1),
    natvoi character varying(4),
    libvoi character varying(26),
    typcom character varying(1),
    ruract character varying(1),
    carvoi character varying(1),
    indpop character varying(1),
    poprel character varying(7),
    poppart integer,
    popfict integer,
    annul character varying(1),
    dteannul character varying(7),
    dtecreart character varying(7),
    codvoi character varying(5),
    typvoi character varying(1),
    indldnbat character varying(1),
    motclas character varying(8),
    lot character varying
);


ALTER TABLE voie OWNER TO postgres;

--
-- TOC entry 5021 (class 0 OID 0)
-- Dependencies: 224
-- Name: TABLE voie; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON TABLE voie IS 'Voie (Fantoir)';


--
-- TOC entry 5022 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN voie.ccodep; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN voie.ccodep IS 'Code département - Code département INSEE';


--
-- TOC entry 5023 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN voie.ccodir; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN voie.ccodir IS 'Code direction - Code direction dge';


--
-- TOC entry 5024 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN voie.ccocom; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN voie.ccocom IS 'Code commune - code commune définie par Majic2';


--
-- TOC entry 5025 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN voie.natvoiriv; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN voie.natvoiriv IS 'Nature de voie rivoli - ';


--
-- TOC entry 5026 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN voie.ccoriv; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN voie.ccoriv IS 'Code voie Rivoli - identifiant de voie dans la commune';


--
-- TOC entry 5027 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN voie.clerivili; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN voie.clerivili IS 'Clé RIVOLI - zone alphabétique fournie par MAJIC2';


--
-- TOC entry 5028 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN voie.natvoi; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN voie.natvoi IS 'nature de voie - ';


--
-- TOC entry 5029 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN voie.libvoi; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN voie.libvoi IS 'libellé de voie - ';


--
-- TOC entry 5030 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN voie.typcom; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN voie.typcom IS 'Type de commune actuel (R ou N) - N - commune rurale, R - commune rencencée';


--
-- TOC entry 5031 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN voie.ruract; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN voie.ruract IS 'RUR actuel - indique si la commune est pseudo-recensée ou non (3-commune pseudo-recensée, blanc si rien)';


--
-- TOC entry 5032 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN voie.carvoi; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN voie.carvoi IS 'caractère de voie - zone indiquant si la voie est privée (1) ou publique (0)';


--
-- TOC entry 5033 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN voie.indpop; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN voie.indpop IS 'indicateur de population - Précise la dernière situation connue de la commune au regard de la limite de 3000 habitants (= blanc si < 3000 h sinon = *).';


--
-- TOC entry 5034 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN voie.poprel; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN voie.poprel IS 'population réelle - dénombre la population recencée lors du dernier recensement';


--
-- TOC entry 5035 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN voie.poppart; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN voie.poppart IS 'population à part - dénombre la population comptée à part dans la commune';


--
-- TOC entry 5036 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN voie.popfict; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN voie.popfict IS 'population fictive - population fictive de la commune';


--
-- TOC entry 5037 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN voie.annul; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN voie.annul IS 'Annulation Cet article indique que plus aucune entité topo n’est représentée par ce code. - O - voie annulée sans transfert, Q - voie annulée avec transfert, Q - commune annulée avec transfert.';


--
-- TOC entry 5038 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN voie.dteannul; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN voie.dteannul IS 'date d''annulation - ';


--
-- TOC entry 5039 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN voie.dtecreart; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN voie.dtecreart IS 'Date de création de l''article - Date à laquelle l''article a été créé par création MAJIC2.';


--
-- TOC entry 5040 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN voie.codvoi; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN voie.codvoi IS 'Code identifiant la voie dans MAJIC2. - Permet de faire le lien entre le code voie RIVOLI et le code voie MAJIC2.';


--
-- TOC entry 5041 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN voie.typvoi; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN voie.typvoi IS 'Type de voie - Indicateur de la classe de la voie. - 1 - voie, 2 - ensemble immobilier, 3 - lieu-dit, 4 -  pseudo-voie, 5 - voie provisoire.';


--
-- TOC entry 5042 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN voie.indldnbat; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN voie.indldnbat IS 'Indicateur lieu-dit non bâti - Zone servie uniquement pour les lieux-dits.Permet d’indiquer si le lieu-dit comporte ou non un bâtiment dans MAJIC.1 pour lieu-dit non bâti, 0 sinon.';


--
-- TOC entry 5043 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN voie.motclas; Type: COMMENT; Schema: cadastre; Owner: postgres
--

COMMENT ON COLUMN voie.motclas IS 'Mot classant - Dernier mot entièrement alphabétique du libellé de voie - Permet de restituer l''ordre alphabétique.';


--
-- TOC entry 372 (class 1259 OID 54161)
-- Name: voiep_id; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE voiep_id (
    ogc_fid integer NOT NULL,
    object_rid character varying,
    tex character varying,
    creat_date integer,
    update_date integer,
    geom public.geometry(Geometry,2154)
);


ALTER TABLE voiep_id OWNER TO postgres;

--
-- TOC entry 371 (class 1259 OID 54159)
-- Name: voiep_id_ogc_fid_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE voiep_id_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE voiep_id_ogc_fid_seq OWNER TO postgres;

--
-- TOC entry 5044 (class 0 OID 0)
-- Dependencies: 371
-- Name: voiep_id_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE voiep_id_ogc_fid_seq OWNED BY voiep_id.ogc_fid;


--
-- TOC entry 374 (class 1259 OID 54170)
-- Name: zoncommuni_id; Type: TABLE; Schema: cadastre; Owner: postgres
--

CREATE TABLE zoncommuni_id (
    ogc_fid integer NOT NULL,
    object_rid character varying,
    tex10 character varying,
    tex2 character varying,
    tex3 character varying,
    tex4 character varying,
    tex5 character varying,
    tex6 character varying,
    tex7 character varying,
    tex8 character varying,
    tex9 character varying,
    tex character varying,
    creat_date integer,
    update_date integer,
    geom public.geometry(Geometry,2154)
);


ALTER TABLE zoncommuni_id OWNER TO postgres;

--
-- TOC entry 373 (class 1259 OID 54168)
-- Name: zoncommuni_id_ogc_fid_seq; Type: SEQUENCE; Schema: cadastre; Owner: postgres
--

CREATE SEQUENCE zoncommuni_id_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE zoncommuni_id_ogc_fid_seq OWNER TO postgres;

--
-- TOC entry 5045 (class 0 OID 0)
-- Dependencies: 373
-- Name: zoncommuni_id_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: cadastre; Owner: postgres
--

ALTER SEQUENCE zoncommuni_id_ogc_fid_seq OWNED BY zoncommuni_id.ogc_fid;


--
-- TOC entry 4006 (class 2604 OID 53993)
-- Name: ogc_fid; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY batiment_id ALTER COLUMN ogc_fid SET DEFAULT nextval('batiment_id_ogc_fid_seq'::regclass);


--
-- TOC entry 4007 (class 2604 OID 54002)
-- Name: ogc_fid; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY borne_id ALTER COLUMN ogc_fid SET DEFAULT nextval('borne_id_ogc_fid_seq'::regclass);


--
-- TOC entry 4008 (class 2604 OID 54011)
-- Name: ogc_fid; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY boulon_id ALTER COLUMN ogc_fid SET DEFAULT nextval('boulon_id_ogc_fid_seq'::regclass);


--
-- TOC entry 4009 (class 2604 OID 54020)
-- Name: ogc_fid; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY commune_id ALTER COLUMN ogc_fid SET DEFAULT nextval('commune_id_ogc_fid_seq'::regclass);


--
-- TOC entry 4010 (class 2604 OID 54029)
-- Name: ogc_fid; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY croix_id ALTER COLUMN ogc_fid SET DEFAULT nextval('croix_id_ogc_fid_seq'::regclass);


--
-- TOC entry 4004 (class 2604 OID 53976)
-- Name: edigeo_rel; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY edigeo_rel ALTER COLUMN edigeo_rel SET DEFAULT nextval('edigeo_rel_edigeo_rel_seq'::regclass);


--
-- TOC entry 3986 (class 2604 OID 53807)
-- Name: geo_batiment_parcelle; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY geo_batiment_parcelle ALTER COLUMN geo_batiment_parcelle SET DEFAULT nextval('geo_batiment_parcelle_geo_batiment_parcelle_seq'::regclass);


--
-- TOC entry 3991 (class 2604 OID 53877)
-- Name: geo_borne; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY geo_borne ALTER COLUMN geo_borne SET DEFAULT nextval('geo_borne_geo_borne_seq'::regclass);


--
-- TOC entry 3992 (class 2604 OID 53886)
-- Name: geo_borne_parcelle; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY geo_borne_parcelle ALTER COLUMN geo_borne_parcelle SET DEFAULT nextval('geo_borne_parcelle_geo_borne_parcelle_seq'::regclass);


--
-- TOC entry 3977 (class 2604 OID 53690)
-- Name: ogc_fid; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY geo_commune ALTER COLUMN ogc_fid SET DEFAULT nextval('geo_commune_ogc_fid_seq'::regclass);


--
-- TOC entry 3993 (class 2604 OID 53892)
-- Name: geo_croix; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY geo_croix ALTER COLUMN geo_croix SET DEFAULT nextval('geo_croix_geo_croix_seq'::regclass);


--
-- TOC entry 3994 (class 2604 OID 53901)
-- Name: geo_croix_parcelle; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY geo_croix_parcelle ALTER COLUMN geo_croix_parcelle SET DEFAULT nextval('geo_croix_parcelle_geo_croix_parcelle_seq'::regclass);


--
-- TOC entry 4003 (class 2604 OID 53967)
-- Name: ogc_fid; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY geo_label ALTER COLUMN ogc_fid SET DEFAULT nextval('geo_label_ogc_fid_seq'::regclass);


--
-- TOC entry 3985 (class 2604 OID 53787)
-- Name: geo_lieudit; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY geo_lieudit ALTER COLUMN geo_lieudit SET DEFAULT nextval('geo_lieudit_geo_lieudit_seq'::regclass);


--
-- TOC entry 3983 (class 2604 OID 53772)
-- Name: geo_numvoie; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY geo_numvoie ALTER COLUMN geo_numvoie SET DEFAULT nextval('geo_numvoie_geo_numvoie_seq'::regclass);


--
-- TOC entry 3984 (class 2604 OID 53781)
-- Name: geo_numvoie_parcelle; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY geo_numvoie_parcelle ALTER COLUMN geo_numvoie_parcelle SET DEFAULT nextval('geo_numvoie_parcelle_geo_numvoie_parcelle_seq'::regclass);


--
-- TOC entry 3979 (class 2604 OID 53734)
-- Name: ogc_fid; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY geo_parcelle ALTER COLUMN ogc_fid SET DEFAULT nextval('geo_parcelle_ogc_fid_seq'::regclass);


--
-- TOC entry 3990 (class 2604 OID 53868)
-- Name: geo_ptcanv; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY geo_ptcanv ALTER COLUMN geo_ptcanv SET DEFAULT nextval('geo_ptcanv_geo_ptcanv_seq'::regclass);


--
-- TOC entry 3978 (class 2604 OID 53699)
-- Name: ogc_fid; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY geo_section ALTER COLUMN ogc_fid SET DEFAULT nextval('geo_section_ogc_fid_seq'::regclass);


--
-- TOC entry 3980 (class 2604 OID 53748)
-- Name: geo_subdfisc; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY geo_subdfisc ALTER COLUMN geo_subdfisc SET DEFAULT nextval('geo_subdfisc_geo_subdfisc_seq'::regclass);


--
-- TOC entry 3981 (class 2604 OID 53757)
-- Name: geo_subdfisc_parcelle; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY geo_subdfisc_parcelle ALTER COLUMN geo_subdfisc_parcelle SET DEFAULT nextval('geo_subdfisc_parcelle_geo_subdfisc_parcelle_seq'::regclass);


--
-- TOC entry 3995 (class 2604 OID 53907)
-- Name: geo_symblim; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY geo_symblim ALTER COLUMN geo_symblim SET DEFAULT nextval('geo_symblim_geo_symblim_seq'::regclass);


--
-- TOC entry 3996 (class 2604 OID 53916)
-- Name: geo_symblim_parcelle; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY geo_symblim_parcelle ALTER COLUMN geo_symblim_parcelle SET DEFAULT nextval('geo_symblim_parcelle_geo_symblim_parcelle_seq'::regclass);


--
-- TOC entry 3999 (class 2604 OID 53937)
-- Name: geo_tline; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY geo_tline ALTER COLUMN geo_tline SET DEFAULT nextval('geo_tline_geo_tline_seq'::regclass);


--
-- TOC entry 4000 (class 2604 OID 53946)
-- Name: geo_tline_commune; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY geo_tline_commune ALTER COLUMN geo_tline_commune SET DEFAULT nextval('geo_tline_commune_geo_tline_commune_seq'::regclass);


--
-- TOC entry 3997 (class 2604 OID 53922)
-- Name: geo_tpoint; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY geo_tpoint ALTER COLUMN geo_tpoint SET DEFAULT nextval('geo_tpoint_geo_tpoint_seq'::regclass);


--
-- TOC entry 3998 (class 2604 OID 53931)
-- Name: geo_tpoint_commune; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY geo_tpoint_commune ALTER COLUMN geo_tpoint_commune SET DEFAULT nextval('geo_tpoint_commune_geo_tpoint_commune_seq'::regclass);


--
-- TOC entry 3988 (class 2604 OID 53825)
-- Name: geo_tronfluv; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY geo_tronfluv ALTER COLUMN geo_tronfluv SET DEFAULT nextval('geo_tronfluv_geo_tronfluv_seq'::regclass);


--
-- TOC entry 3989 (class 2604 OID 53834)
-- Name: geo_tronroute; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY geo_tronroute ALTER COLUMN geo_tronroute SET DEFAULT nextval('geo_tronroute_geo_tronroute_seq'::regclass);


--
-- TOC entry 4001 (class 2604 OID 53952)
-- Name: geo_tsurf; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY geo_tsurf ALTER COLUMN geo_tsurf SET DEFAULT nextval('geo_tsurf_geo_tsurf_seq'::regclass);


--
-- TOC entry 4002 (class 2604 OID 53961)
-- Name: geo_tsurf_commune; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY geo_tsurf_commune ALTER COLUMN geo_tsurf_commune SET DEFAULT nextval('geo_tsurf_commune_geo_tsurf_commune_seq'::regclass);


--
-- TOC entry 4005 (class 2604 OID 53984)
-- Name: id; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY geo_unite_fonciere ALTER COLUMN id SET DEFAULT nextval('geo_unite_fonciere_id_seq'::regclass);


--
-- TOC entry 3982 (class 2604 OID 53763)
-- Name: geo_voiep; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY geo_voiep ALTER COLUMN geo_voiep SET DEFAULT nextval('geo_voiep_geo_voiep_seq'::regclass);


--
-- TOC entry 3987 (class 2604 OID 53816)
-- Name: geo_zoncommuni; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY geo_zoncommuni ALTER COLUMN geo_zoncommuni SET DEFAULT nextval('geo_zoncommuni_geo_zoncommuni_seq'::regclass);


--
-- TOC entry 4011 (class 2604 OID 54038)
-- Name: ogc_fid; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY id_s_obj_z_1_2_2 ALTER COLUMN ogc_fid SET DEFAULT nextval('id_s_obj_z_1_2_2_ogc_fid_seq'::regclass);


--
-- TOC entry 4012 (class 2604 OID 54047)
-- Name: ogc_fid; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY lieudit_id ALTER COLUMN ogc_fid SET DEFAULT nextval('lieudit_id_ogc_fid_seq'::regclass);


--
-- TOC entry 4013 (class 2604 OID 54056)
-- Name: ogc_fid; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY numvoie_id ALTER COLUMN ogc_fid SET DEFAULT nextval('numvoie_id_ogc_fid_seq'::regclass);


--
-- TOC entry 4014 (class 2604 OID 54065)
-- Name: ogc_fid; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY parcelle_id ALTER COLUMN ogc_fid SET DEFAULT nextval('parcelle_id_ogc_fid_seq'::regclass);


--
-- TOC entry 4015 (class 2604 OID 54074)
-- Name: ogc_fid; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY ptcanv_id ALTER COLUMN ogc_fid SET DEFAULT nextval('ptcanv_id_ogc_fid_seq'::regclass);


--
-- TOC entry 4016 (class 2604 OID 54083)
-- Name: ogc_fid; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY section_id ALTER COLUMN ogc_fid SET DEFAULT nextval('section_id_ogc_fid_seq'::regclass);


--
-- TOC entry 4017 (class 2604 OID 54092)
-- Name: ogc_fid; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY subdfisc_id ALTER COLUMN ogc_fid SET DEFAULT nextval('subdfisc_id_ogc_fid_seq'::regclass);


--
-- TOC entry 4018 (class 2604 OID 54101)
-- Name: ogc_fid; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY subdsect_id ALTER COLUMN ogc_fid SET DEFAULT nextval('subdsect_id_ogc_fid_seq'::regclass);


--
-- TOC entry 4019 (class 2604 OID 54110)
-- Name: ogc_fid; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY symblim_id ALTER COLUMN ogc_fid SET DEFAULT nextval('symblim_id_ogc_fid_seq'::regclass);


--
-- TOC entry 4020 (class 2604 OID 54119)
-- Name: ogc_fid; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY tline_id ALTER COLUMN ogc_fid SET DEFAULT nextval('tline_id_ogc_fid_seq'::regclass);


--
-- TOC entry 4021 (class 2604 OID 54128)
-- Name: ogc_fid; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY tpoint_id ALTER COLUMN ogc_fid SET DEFAULT nextval('tpoint_id_ogc_fid_seq'::regclass);


--
-- TOC entry 4022 (class 2604 OID 54137)
-- Name: ogc_fid; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY tronfluv_id ALTER COLUMN ogc_fid SET DEFAULT nextval('tronfluv_id_ogc_fid_seq'::regclass);


--
-- TOC entry 4023 (class 2604 OID 54146)
-- Name: ogc_fid; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY tronroute_id ALTER COLUMN ogc_fid SET DEFAULT nextval('tronroute_id_ogc_fid_seq'::regclass);


--
-- TOC entry 4024 (class 2604 OID 54155)
-- Name: ogc_fid; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY tsurf_id ALTER COLUMN ogc_fid SET DEFAULT nextval('tsurf_id_ogc_fid_seq'::regclass);


--
-- TOC entry 4025 (class 2604 OID 54164)
-- Name: ogc_fid; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY voiep_id ALTER COLUMN ogc_fid SET DEFAULT nextval('voiep_id_ogc_fid_seq'::regclass);


--
-- TOC entry 4026 (class 2604 OID 54173)
-- Name: ogc_fid; Type: DEFAULT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY zoncommuni_id ALTER COLUMN ogc_fid SET DEFAULT nextval('zoncommuni_id_ogc_fid_seq'::regclass);


--
-- TOC entry 4094 (class 2606 OID 53660)
-- Name: annul_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY annul
    ADD CONSTRAINT annul_pkey PRIMARY KEY (annul);


--
-- TOC entry 4092 (class 2606 OID 53652)
-- Name: carvoi_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY carvoi
    ADD CONSTRAINT carvoi_pkey PRIMARY KEY (carvoi);


--
-- TOC entry 4056 (class 2606 OID 53508)
-- Name: ccoaff_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY ccoaff
    ADD CONSTRAINT ccoaff_pkey PRIMARY KEY (ccoaff);


--
-- TOC entry 4070 (class 2606 OID 53564)
-- Name: ccodem_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY ccodem
    ADD CONSTRAINT ccodem_pkey PRIMARY KEY (ccodem);


--
-- TOC entry 4068 (class 2606 OID 53556)
-- Name: ccodro_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY ccodro
    ADD CONSTRAINT ccodro_pkey PRIMARY KEY (ccodro);


--
-- TOC entry 4042 (class 2606 OID 53452)
-- Name: ccoeva_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY ccoeva
    ADD CONSTRAINT ccoeva_pkey PRIMARY KEY (ccoeva);


--
-- TOC entry 4078 (class 2606 OID 53596)
-- Name: ccogrm_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY ccogrm
    ADD CONSTRAINT ccogrm_pkey PRIMARY KEY (ccogrm);


--
-- TOC entry 4038 (class 2606 OID 53436)
-- Name: ccolloc_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY ccolloc
    ADD CONSTRAINT ccolloc_pkey PRIMARY KEY (ccolloc);


--
-- TOC entry 4062 (class 2606 OID 53532)
-- Name: cconad_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY cconad
    ADD CONSTRAINT cconad_pkey PRIMARY KEY (cconad);


--
-- TOC entry 4048 (class 2606 OID 53476)
-- Name: cconlc_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY cconlc
    ADD CONSTRAINT cconlc_pkey PRIMARY KEY (cconlc);


--
-- TOC entry 4066 (class 2606 OID 53548)
-- Name: cconlo_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY cconlo
    ADD CONSTRAINT cconlo_pkey PRIMARY KEY (cconlo);


--
-- TOC entry 4046 (class 2606 OID 53468)
-- Name: ccoplc_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY ccoplc
    ADD CONSTRAINT ccoplc_pkey PRIMARY KEY (ccoplc);


--
-- TOC entry 4074 (class 2606 OID 53580)
-- Name: ccoqua_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY ccoqua
    ADD CONSTRAINT ccoqua_pkey PRIMARY KEY (ccoqua);


--
-- TOC entry 4032 (class 2606 OID 53412)
-- Name: cgrnum_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY cgrnum
    ADD CONSTRAINT cgrnum_pkey PRIMARY KEY (cgrnum);


--
-- TOC entry 4036 (class 2606 OID 53428)
-- Name: cnatsp_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY cnatsp
    ADD CONSTRAINT cnatsp_pkey PRIMARY KEY (cnatsp);


--
-- TOC entry 4064 (class 2606 OID 53540)
-- Name: ctpdl_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY ctpdl
    ADD CONSTRAINT ctpdl_pkey PRIMARY KEY (ctpdl);


--
-- TOC entry 4100 (class 2606 OID 53684)
-- Name: dformjur_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY dformjur
    ADD CONSTRAINT dformjur_pkey PRIMARY KEY (dformjur);


--
-- TOC entry 4052 (class 2606 OID 53492)
-- Name: dnatlc_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY dnatlc
    ADD CONSTRAINT dnatlc_pkey PRIMARY KEY (dnatlc);


--
-- TOC entry 4076 (class 2606 OID 53588)
-- Name: dnatpr_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY dnatpr
    ADD CONSTRAINT dnatpr_pkey PRIMARY KEY (dnatpr);


--
-- TOC entry 4034 (class 2606 OID 53420)
-- Name: dsgrpf_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY dsgrpf
    ADD CONSTRAINT dsgrpf_pkey PRIMARY KEY (dsgrpf);


--
-- TOC entry 4044 (class 2606 OID 53460)
-- Name: dteloc_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY dteloc
    ADD CONSTRAINT dteloc_pkey PRIMARY KEY (dteloc);


--
-- TOC entry 4122 (class 2606 OID 53978)
-- Name: edigeo_rel_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY edigeo_rel
    ADD CONSTRAINT edigeo_rel_pkey PRIMARY KEY (edigeo_rel);


--
-- TOC entry 4112 (class 2606 OID 53842)
-- Name: geo_can_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY geo_can
    ADD CONSTRAINT geo_can_pkey PRIMARY KEY (geo_can);


--
-- TOC entry 4104 (class 2606 OID 53712)
-- Name: geo_copl_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY geo_copl
    ADD CONSTRAINT geo_copl_pkey PRIMARY KEY (geo_copl);


--
-- TOC entry 4110 (class 2606 OID 53795)
-- Name: geo_dur_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY geo_dur
    ADD CONSTRAINT geo_dur_pkey PRIMARY KEY (geo_dur);


--
-- TOC entry 4108 (class 2606 OID 53728)
-- Name: geo_indp_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY geo_indp
    ADD CONSTRAINT geo_indp_pkey PRIMARY KEY (geo_indp);


--
-- TOC entry 4106 (class 2606 OID 53717)
-- Name: geo_inp_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY geo_inp
    ADD CONSTRAINT geo_inp_pkey PRIMARY KEY (geo_inp);


--
-- TOC entry 4118 (class 2606 OID 53857)
-- Name: geo_map_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY geo_map
    ADD CONSTRAINT geo_map_pkey PRIMARY KEY (geo_map);


--
-- TOC entry 4116 (class 2606 OID 53852)
-- Name: geo_palt_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY geo_palt
    ADD CONSTRAINT geo_palt_pkey PRIMARY KEY (geo_palt);


--
-- TOC entry 4114 (class 2606 OID 53847)
-- Name: geo_ppln_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY geo_ppln
    ADD CONSTRAINT geo_ppln_pkey PRIMARY KEY (geo_ppln);


--
-- TOC entry 4102 (class 2606 OID 53707)
-- Name: geo_qupl_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY geo_qupl
    ADD CONSTRAINT geo_qupl_pkey PRIMARY KEY (geo_qupl);


--
-- TOC entry 4120 (class 2606 OID 53862)
-- Name: geo_sym_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY geo_sym
    ADD CONSTRAINT geo_sym_pkey PRIMARY KEY (geo_sym);


--
-- TOC entry 4058 (class 2606 OID 53516)
-- Name: gnexpl_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY gnexpl
    ADD CONSTRAINT gnexpl_pkey PRIMARY KEY (gnexpl);


--
-- TOC entry 4030 (class 2606 OID 53404)
-- Name: gnexps_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY gnexps
    ADD CONSTRAINT gnexps_pkey PRIMARY KEY (gnexps);


--
-- TOC entry 4060 (class 2606 OID 53524)
-- Name: gnextl_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY gnextl
    ADD CONSTRAINT gnextl_pkey PRIMARY KEY (gnextl);


--
-- TOC entry 4040 (class 2606 OID 53444)
-- Name: gnexts_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY gnexts
    ADD CONSTRAINT gnexts_pkey PRIMARY KEY (gnexts);


--
-- TOC entry 4028 (class 2606 OID 53396)
-- Name: gpdl_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY gpdl
    ADD CONSTRAINT gpdl_pkey PRIMARY KEY (gpdl);


--
-- TOC entry 4072 (class 2606 OID 53572)
-- Name: gtoper_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY gtoper
    ADD CONSTRAINT gtoper_pkey PRIMARY KEY (gtoper);


--
-- TOC entry 4080 (class 2606 OID 53604)
-- Name: gtyp3_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY gtyp3
    ADD CONSTRAINT gtyp3_pkey PRIMARY KEY (gtyp3);


--
-- TOC entry 4082 (class 2606 OID 53612)
-- Name: gtyp4_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY gtyp4
    ADD CONSTRAINT gtyp4_pkey PRIMARY KEY (gtyp4);


--
-- TOC entry 4084 (class 2606 OID 53620)
-- Name: gtyp5_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY gtyp5
    ADD CONSTRAINT gtyp5_pkey PRIMARY KEY (gtyp5);


--
-- TOC entry 4086 (class 2606 OID 53628)
-- Name: gtyp6_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY gtyp6
    ADD CONSTRAINT gtyp6_pkey PRIMARY KEY (gtyp6);


--
-- TOC entry 4054 (class 2606 OID 53500)
-- Name: hlmsem_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY hlmsem
    ADD CONSTRAINT hlmsem_pkey PRIMARY KEY (hlmsem);


--
-- TOC entry 4098 (class 2606 OID 53676)
-- Name: indldnbat_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY indldnbat
    ADD CONSTRAINT indldnbat_pkey PRIMARY KEY (indldnbat);


--
-- TOC entry 4090 (class 2606 OID 53644)
-- Name: natvoiriv_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY natvoiriv
    ADD CONSTRAINT natvoiriv_pkey PRIMARY KEY (natvoiriv);


--
-- TOC entry 4050 (class 2606 OID 53484)
-- Name: top48a_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY top48a
    ADD CONSTRAINT top48a_pkey PRIMARY KEY (top48a);


--
-- TOC entry 4088 (class 2606 OID 53636)
-- Name: typcom_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY typcom
    ADD CONSTRAINT typcom_pkey PRIMARY KEY (typcom);


--
-- TOC entry 4096 (class 2606 OID 53668)
-- Name: typvoi_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY typvoi
    ADD CONSTRAINT typvoi_pkey PRIMARY KEY (typvoi);


-- Completed on 2016-09-15 21:20:37

--
-- PostgreSQL database dump complete
--

