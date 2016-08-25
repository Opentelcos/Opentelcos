/*OpenTelcos/otrx*/
/*Version : 0.0.3*/
/*ALENO*/
/*CREATION DE LA STRUCTURE DE DTcode.sqlite*/
/*Licence : GNU GPLv3*/
/*20/02/2015 - SBY - aleno.eu : CREATION DU SCRIPT (DocTekus/dtgdb/dtcode)*/
/*03/03/2015 - SBY : Modifications multiples */
/*24/08/2016 - SBY : passage de DocTekus à OpenTelcos + PostgreSQL*/
/*Cible PostgreSQL 9 */

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


/*NOTE SBY : NOMS DE CHAMPS, 
- minuscules
- pas de caractères francophones ou d'espaces
- idéalement - de 10 caractères pour compatibilité shapefile
- PostGIS permet des descriptions de noms de champs. 
- SQLite, on peut prévoir de stocker la description des champs dans une table t_dico.
*/

/*NOTE SBY : TYPES DE DONNEES
SQLite
http://www.sqlite.org/datatype3.html
Ou PostgreSQL 9 (relativement compatible SQLite avec les affinités)
http://docs.postgresqlfr.org/9.2/datatype.html
*/

SET search_path TO otrx, otconf, public;

/*####################################################*/
/*SUPPRESSIONS TABLES*/
DROP TABLE IF EXISTS t_organisme CASCADE;
DROP TABLE IF EXISTS t_individu CASCADE;
DROP TABLE IF EXISTS t_nomenclature CASCADE;
DROP TABLE IF EXISTS t_referencement CASCADE; 
--DROP TABLE IF EXISTS t_ptechcode CASCADE;


/*####################################################*/
/*TABLES*/


/*ORGANISME*/
CREATE TABLE IF NOT EXISTS t_organisme (
	ogcode VARCHAR(254) PRIMARY KEY NOT NULL, --CHECK(ogcode LIKE '____'), --UNIQUE, 
	ognom VARCHAR(254),
	ogcomment VARCHAR(254),
	ogcreatr VARCHAR(254), 
	ogcreadate TIMESTAMP DEFAULT current_timestamp, --TIMESTAMP NOT NULL DEFAULT current_timestamp,
	ogmodiftr VARCHAR(254),
	ogmodifdat TIMESTAMP
	--FOREIGN KEY(ogcreatr) REFERENCES t_user(uscode)--,
	--FOREIGN KEY(ogmodiftr) REFERENCES t_user(uscode)
);



/*individu ENUM*/
DROP TABLE IF EXISTS t_individu;
CREATE TABLE IF NOT EXISTS t_individu (
	--ivid INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	ivid SERIAL PRIMARY KEY,
	ivcode VARCHAR(254) CHECK(ivcode LIKE '___'), --UNIQUE, 
	ivnom VARCHAR(254),
	ivprenom VARCHAR(254), 
	ivogcode VARCHAR(254),
	--ivmail VARCHAR(254) CHECK (ivmail LIKE '%@%.%'),
	--ivmobile VARCHAR(254) CHECK (ivmobile LIKE '__________' OR ivmobile LIKE '__ __ __ __ __' OR '' OR NULL),
	ivmobile VARCHAR(254) CHECK (ivmobile LIKE '__________' OR ivmobile LIKE '__ __ __ __ __' OR NULL), 
	ivfixe VARCHAR(254) CHECK (ivfixe LIKE '__________' OR ivfixe LIKE '__ __ __ __ __' OR NULL),
	ivcreatr VARCHAR(254),
	ivcreadate TIMESTAMP DEFAULT current_timestamp, -- (TIMESTAMP NOT NULL DEFAULT current_timestamp),
	ivmodiftr VARCHAR(254),
	ivmodifdat TIMESTAMP,
	FOREIGN KEY (ivogcode) REFERENCES t_organisme(ogcode),
	FOREIGN KEY(ivcreatr) REFERENCES t_user(uscode),
	FOREIGN KEY(ivmodiftr) REFERENCES t_user(uscode)
	
);
 

 
/* NOMCLATURE*/
CREATE TABLE IF NOT EXISTS t_nomenclature(
	ncid VARCHAR(254) NOT NULL PRIMARY KEY,
	ncdescript VARCHAR(254), --description
	ncdocument VARCHAR(254), --document décrivant la nomenclature
	ncversion VARCHAR(20) --version de la nomenclature
);

CREATE TABLE IF NOT EXISTS t_mask(
	rx_codemaskid INTEGER NOT NULL PRIMARY KEY,
	rx_codemaskdesc VARCHAR(255) NOT NULL UNIQUE,
	rx_codemaskncid VARCHAR(254),
	FOREIGN KEY (rx_codemaskncid) REFERENCES t_nomenclature(ncid)
);
 
 
/*####################################################*/
	
/*REFERENCEMENTS*/
CREATE TABLE IF NOT EXISTS t_referencement (
  /*ATTRIBUTS DE BASE*/
  --rx_id INTEGER PRIMARY KEY AUTOINCREMENT,
  rx_id SERIAL PRIMARY KEY,
  rx_ncid VARCHAR(254) NOT NULL DEFAULT 'covage', --FK ID Nomenclature
  rx_niveau INTEGER CHECK (rx_niveau >= 0 AND rx_niveau < 4),
  rx_code varchar(254) NOT NULL UNIQUE , --Remplacer le check par un trigger à mettre à part. 
/*		CHECK (
		--rx_code = 'A@' 
		--OR rx_code LIKE 'A@T__' 
		--OR rx_code LIKE 'A@T__S__' 
		--OR rx_code = 'AR' 
		--OR rx_code LIKE 'ART___' 
		--OR rx_code LIKE 'ART___S__'
		rx_code LIKE '__'
		OR rx_code LIKE '__T__'
		OR rx_code LIKE '__T__S__'
		OR rx_code LIKE '__T___'
		OR rx_code LIKE '__T___S__'
		), 
*/
		--Manque trigger de controle de l'existence du referencement superieur. 
		--Manque trigger de cohérence (ou de calcul) rx_niveau

  rx_nom varchar(254), 
  --`Reft_NomComplet` varchar(50) DEFAULT NULL,
  rx_descr varchar(254), 
  /*Ex: raccordement de l'entreprise chose dans le cadre du projet chouette phase 12*/
  --rx_projet varchar(50) DEFAULT NULL, --A ETUDIER
  rx_codesup varchar(254) REFERENCES t_referencement(rx_code), --Correspondance avec le code parent 
  rx_codeold varchar(254) REFERENCES t_referencement(rx_code), --Correspondance avec un ancien code 
  rx_besd VARCHAR(254), --FK
  rx_beaps VARCHAR(254), --FK
  rx_beapd VARCHAR(254), --FK
  rx_bedoe VARCHAR(254), --FK
  rx_docetat INTEGER REFERENCES l_docetat(docetatid) DEFAULT 1, 
  rx_gcets VARCHAR(254), --FK
  rx_gccdp VARCHAR(254), --FK t_individu TODO
  rx_gcetat INTEGER REFERENCES l_gcetat(gcetatid) DEFAULT 1, 
  rx_foets VARCHAR(254), --FK
  rx_focdp VARCHAR(254), --FK t_individu TODO
  rx_foetat INTEGER REFERENCES l_foetat(foetatid) DEFAULT 1, 
  --affecteur VARCHAR(254),
  rx_zone varchar(254) DEFAULT NULL, --A ETUDIER
  rx_comment varchar(254),
  rx_annulwhy varchar(254), --explication annulation du référencement
  rx_annuldat DATE,
  --ATTRIBUTS METADONNEES
  rx_creatr varchar(3), --enumeration et trigger à prévoir
  rx_creadate TIMESTAMP, --trigger à prévoir
  rx_modiftr varchar(3), --enumeration et trigger à prévoir
  rx_modifdat TIMESTAMP, --trigger à prévoir
  
	--CONSTRAINT "rx_id_pk" PRIMARY KEY (rx_id), 
	--Marche pas sur les autoincrement
	FOREIGN KEY(rx_ncid) REFERENCES t_nomenclature(ncid),
  	FOREIGN KEY(rx_besd) REFERENCES t_organisme(ogcode),
  	FOREIGN KEY(rx_beaps) REFERENCES t_organisme(ogcode),
  	FOREIGN KEY(rx_beapd) REFERENCES t_organisme(ogcode),
  	FOREIGN KEY(rx_bedoe) REFERENCES t_organisme(ogcode),
	FOREIGN KEY(rx_gcets) REFERENCES t_organisme(ogcode),
	FOREIGN KEY(rx_foets) REFERENCES t_organisme(ogcode)--,

);

-- CREATE INDEX rx_code_idx ON t_referencement(rx_code); --pas utile, la contrainte UNIQUE implique déjà un index. 
CREATE INDEX rx_codesup_idx ON t_referencement(rx_codesup); 
CREATE INDEX rx_codeold_idx ON t_referencement(rx_codeold);

