/*OpenTelcos / OTFT*/
/*01/09/2016 - SBY - stephane.byache at aleno.eu : CREATION DU SCRIPT */
/*Cible PostgreSQL 9*/

/*
###########################################################################
#                                                                         #
#   This program is free software; you can redistribute it and/or modify  #
#   it under the terms of the GNU General Public License as published by  #
#   the Free Software Foundation; either version 3 of the License, or     #
#   (at your option) any later version.                                   #
#                                                                         #
###########################################################################
*/

SET search_path TO otft, otconf, public;

/*DTpit.t_ft_contrats*/
/*Table des contrats FT*/
DROP TABLE IF EXISTS "t_ft_contrats";
CREATE TABLE t_ft_contrats (
	idct BIGSERIAL PRIMARY KEY,
	typect TEXT, --constraint list (RCA, BLO, etc.)
	refct TEXT, --constraint format ? (référence du contrat)
	propct TEXT, --constraint list ? Propriétaire du contrat. 
	datect DATE, --Date du contrat
	etatct INTEGER, --constraint
	comment TEXT,
	createur TEXT, --constraint
	date_crea DATE, --constraint / trigger
	modificatr TEXT, --constraint
	date_modif DATE --constraint / trigger
);


/*DTspecs.t_docstypes*/
DROP TABLE IF EXISTS "t_docstypes";
CREATE TABLE t_docstypes(
	id SERIAL PRIMARY KEY,
	id_spec INTEGER, --foreign key
	name_doctype TEXT,
	desc_doctype TEXT,
	maskniv_sqlite TEXT,
	maskpath_sqlite TEXT, 
	maskfile_sqlite TEXT
);

	
/*DTdocs.t_r_docs*/
/*Table d'historisation des intégrations de fichiers PIT*/
/*Fonctionne avec t_r_files de DTfiles*/
DROP TABLE IF EXISTS "t_r_docs";
CREATE TABLE t_r_docs (
	iddoc SERIAL PRIMARY KEY,
	file_id INTEGER, --FOREIGN KEY ?
	fullpath VARCHAR(254) UNIQUE NOT NULL,
	filename VARCHAR(254),
	extension VARCHAR(15),
	size_oct INTEGER NOT NULL, 
	savedate TIMESTAMP, 
	--savedate DATE NOT NULL, --date texte
	date_crea TIMESTAMP DEFAULT localtimestamp,
	--date_crea DATE DEFAULT ( DATETIME('NOW','localtime') ), 
	date_modif TIMESTAMP, 
	--date_modif DATE,
	typedoc TEXT,
	etatdoc TEXT, --constraint table liste (1,valide/2,mettre a jour/3,obsolete/4,retiré/etc.)
	idcontrat TEXT --id du contrat / FOREIGN KEY ?
);

/*geometry pour l'enveloppe ou l'extent du doc ?*/

/*DTpit.t_ft_arciti*/
/*Itinéraires des PIT*/
DROP TABLE IF EXISTS "t_ft_arciti";
CREATE TABLE t_ft_arciti(
	STATUT	VARCHAR(1),
	MODE_POSE	VARCHAR(1),
	AUT_PASSAG	INTEGER,
	AUT_PASS_1	VARCHAR(254),
	NATURE_CON	VARCHAR(1),
	TYPE_LONGU	VARCHAR(1),
	LONGUEUR	DOUBLE PRECISION,
	--LONGUEUR	DOUBLE,
	NOTE	VARCHAR(254),
	COMPOSITIO	VARCHAR(254),
	ID_PROPRIE	INTEGER,
	INDEX_DOC_	INTEGER,
	ENABLED	INTEGER,
	ORIGINE	INTEGER,
	LABEL_CABL	VARCHAR(254),
	CLASSE	VARCHAR(1),
	SHAPE_LEN	DOUBLE PRECISION,
	--SHAPE_LEN	DOUBLE,
	id BIGSERIAL PRIMARY KEY, 
	typedoc TEXT, --constraint list (PIT départemental, PIT communal, etc.) -> a partir de t_r_docs
	iddoc INTEGER, --trigger + contrainte t_r_docs
	etat_ent INTEGER, --constraint table liste (1,valide/2,mettre a jour/3,obsolete/4,retiré/etc.)
	createur TEXT, --constraint
	date_crea TIMESTAMP, 
	--date_crea DATE, --trigger
	modificatr TEXT, --constraint
	date_modif TIMESTAMP,
	--date_modif DATE, --trigger
	geom Geometry(Linestring,2154) NOT NULL 
);

/*Spatialite*/
/*
SELECT AddGeometryColumn('t_ft_arciti', 'geometry', 2154, 'LINESTRING', 'XY');
SELECT CreateSpatialIndex('t_ft_arciti', 'geometry');
*/

/*DTpit.t_ft_chambre*/
/*Chambres PIT*/
DROP TABLE IF EXISTS "t_ft_chambre";
CREATE TABLE t_ft_chambre(
	STATUT	VARCHAR(1),
	IMPLANT	VARCHAR(1),
	NATURE_CHA	VARCHAR(1),
	REF_CHAMBR	VARCHAR(3), --unique ?
	REF_NOTE	VARCHAR(254),
	CODE_COM	VARCHAR(5),
	CODE_VOIE	VARCHAR(4),
	NUM_VOIE	VARCHAR(5),
	ID_PROPRIE	INTEGER,
	ACC_DEPORT	INTEGER,
	VENTIL	INTEGER,
	PLAFON	INTEGER,
	ID_GESTION	INTEGER,
	TYPE_TRAPP	VARCHAR(1),
	QUANTIFICA	VARCHAR(254),
	INDEX_DOC_	INTEGER,
	ID_NOEUD	INTEGER,
	ROTATION	DOUBLE PRECISION,
	CODE_CH1	VARCHAR(5),
	CODE_CH2	VARCHAR(9),
	NOTE	VARCHAR(254),
	SECURISEE	INTEGER,
	ATTENTE	VARCHAR(254),
	CLE_MKT1	VARCHAR(16),
	CLE_MKT2	VARCHAR(15),
	CODE_CH1_C	VARCHAR(5),
	CODE_CH2_P	VARCHAR(9),
	CLASSE	VARCHAR(1),
	dtid BIGSERIAL PRIMARY KEY,
	--dtid INTEGER PRIMARY KEY AUTOINCREMENT, 
	typedoc TEXT, --constraint list (PIT départemental, PIT communal, etc.) -> a partir de t_r_docs
	iddoc INTEGER, --trigger + contrainte t_r_docs
	etat_ent INTEGER, --constraint table liste (1,valide/2,mettre a jour/3,obsolete/4,retiré/etc.)
	createur TEXT, --constraint
	date_crea TIMESTAMP, 
	--date_crea DATE, --trigger
	modificatr TEXT, --constraint
	date_modif TIMESTAMP, 
	--date_modif DATE ,--trigger
	geom Geometry(Point,2154) NOT NULL  --,
);

/*Spatialite*/
/*
SELECT AddGeometryColumn('t_ft_chambre', 'geometry', 2154, 'POINT', 'XY');
SELECT CreateSpatialIndex('t_ft_chambre', 'geometry');
*/

/*DTpit.t_ft_appui*/
/*Appuis PIT*/
DROP TABLE IF EXISTS "t_ft_appui";
CREATE TABLE t_ft_appui(
	STATUT	VARCHAR(1),
	NUM_APPUI	VARCHAR(10),
	NATURE	VARCHAR(1),
	TYPE	VARCHAR(3), --unique ?
	HAUTEUR	VARCHAR(1),
	CODE_COM	VARCHAR(5),
	CODE_VOIE	VARCHAR(4),
	NUM_VOIE	VARCHAR(5),
	PASSAGE	INTEGER,
	STRATEGIQU	INTEGER,
	ATTENTE	VARCHAR(254),
	NOTE VARCHAR(254),
	INDEX_DOC_	INTEGER,
	ID_NOEUD	INTEGER,
	ROTATION	DOUBLE PRECISION,
	CLE_MKT1	VARCHAR(16),
	dtid BIGSERIAL PRIMARY KEY, 
	--dtid INTEGER PRIMARY KEY AUTOINCREMENT, 
	typedoc TEXT, --constraint list (PIT départemental, PIT communal, etc.) -> a partir de t_r_docs
	iddoc INTEGER, --trigger + contrainte t_r_docs
	etat_ent INTEGER, --constraint table liste (1,valide/2,mettre a jour/3,obsolete/4,retiré/etc.)
	createur TEXT, --constraint
	date_crea TIMESTAMP, 
	--date_crea DATE, --trigger
	modificatr TEXT, --constraint
	date_modif TIMESTAMP, 
	--date_modif DATE, --trigger
	geom Geometry(Point,2154) NOT NULL  --
);
/*Spatialite*/
/*
SELECT AddGeometryColumn('t_ft_appui', 'geometry', 2154, 'POINT', 'XY');
SELECT CreateSpatialIndex('t_ft_appui', 'geometry');
*/
