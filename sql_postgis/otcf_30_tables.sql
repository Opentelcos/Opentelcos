/*OpenTelcos */
/*ALENO*/
/*CREATION DE LA STRUCTURE DE DTgdb.sqlite*/
/*Licence : GPLv3*/
/*14/11/2013 - SBY : CREATION DU SCRIPT*/
/*24/08/2016 - SBY : passage de DocTekus à OpenTelcos + PostgreSQL*/
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


SET search_path TO otconf, otrx, public;

/*###################################*/
/*SUPPRESSION TABLES*/
DROP TABLE IF EXISTS t_user CASCADE;
DROP TABLE IF EXISTS t_conf CASCADE;
DROP TABLE IF EXISTS t_mcdtbl CASCADE;
DROP TABLE IF EXISTS t_mcdatt CASCADE;

/*###################################*/
/*CREATION DE LA TABLE DES UTILISATEURS*/

CREATE TABLE t_user (
	--usid INTEGER PRIMARY KEY AUTOINCREMENT,
	usid SERIAL PRIMARY KEY,
	uscode VARCHAR(254) UNIQUE CHECK(uscode LIKE '___'), --UNIQUE, 
	usnom VARCHAR(254),
	usprenom VARCHAR(254), 
	usmail VARCHAR(254) CHECK (usmail LIKE '%@%.%'),
	usmobile VARCHAR(254) CHECK (usmobile LIKE '__________' OR usmobile LIKE '__ __ __ __ __' OR NULL),
	usfixe VARCHAR(254) CHECK (usfixe LIKE '__________' OR usfixe LIKE '__ __ __ __ __' OR NULL),
	uswinlog VARCHAR(254),
	usngolog VARCHAR(254)
	--uscreatr VARCHAR(254),
	--uscreadate VARCHAR(254) DEFAULT ( DATETIME('NOW','localtime') ),-- (TIMESTAMP NOT NULL DEFAULT current_timestamp),
	--usmodiftr VARCHAR(254),
	--usmodifdat VARCHAR(254)
);

/*
CREATE TRIGGER IF NOT EXISTS tr_t_user_date_crea AFTER INSERT ON t_user
 BEGIN
  update t_user SET ivcreadate = datetime('now','localtime')
  WHERE ROWID = new.ROWID;
 END;
*/

/*
CREATE TRIGGER IF NOT EXISTS tr_t_user_date_modif AFTER UPDATE ON t_user
 BEGIN
  UPDATE t_user SET ivmodifdat = datetime('now','localtime')
  WHERE ROWID = new.ROWID;
 END;
*/

/*###################################*/
/*CREATION DE LA TABLE DE CONFIGURATION.*/
CREATE TABLE t_conf (
	--"cfid" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	cfid SERIAL PRIMARY KEY,
	"cfgroup" VARCHAR(254), --groupe de variables, par exemple dtdocs
	"cfkey" VARCHAR(254) UNIQUE, --valeur unique donnant le nom de la clé, par exemple vt_r_edi01_path
	"cfval" VARCHAR(254) --valeur associée à la clé, par exemple c:\ls.csv
);

/*AJOUTER UNE VALEUR DANS t_conf*/
/*
INSERT INTO t_conf(cfgroup, cfkey, cfval)
VALUES ('', '', '');
*/

/*MODIFIER UNE VALEUR DANS t_conf*/
/* 
UPDATE t_conf
SET cfgroup = '', cfkey = '', cfval = ''
WHERE cfgroup = '' AND cfkey = ''[;
*/

/*SUPPRIMER LES VALEURS D'UN GROUPE DANS t_conf*/
--DELETE FROM t_conf WHERE cfgroup = ''

 
/* TABLE TEMPORAIRE EN MEMOIRE POUR STOCKER DES VARIABLES */
/*  BEGIN
    PRAGMA temp_store = 2;
    CREATE TEMP TABLE t_vars(Name VARCHAR(254) PRIMARY KEY, RealValue REAL, IntegerValue INTEGER, BlobValue BLOB, VARCHAR(254)Value VARCHAR(254));

    --Declaring a variable 
    INSERT INTO t_vars (Name) VALUES ('VariableName');

    -- Assigning a variable (pick the right storage class) 
    UPDATE t_vars SET IntegerValue = ... WHERE Name = 'VariableName';

    -- Getting variable value (use within expression) 
    ... (SELECT coalesce(RealValue, IntegerValue, BlobValue, VARCHAR(254)Value) FROM t_vars WHERE Name = 'VariableName' LIMIT 1) ...

    DROP TABLE CASCADE t_vars;
    END;
 */	

/*######################################*/
/* MCD */ 
/*Description de tables*/
CREATE TABLE IF NOT EXISTS t_mcdtbl(
	--mtid INTEGER PRIMARY KEY AUTOINCREMENT,
	mtid SERIAL PRIMARY KEY,
	mttable VARCHAR(254),
	mtname VARCHAR(254),
	mtalias VARCHAR(254),
	mtdesc VARCHAR(254)
);


CREATE TABLE IF NOT EXISTS t_mcdatt(
	--maid INTEGER PRIMARY KEY AUTOINCREMENT,
	maid SERIAL PRIMARY KEY,
	matable VARCHAR(254),
	maordre INTEGER,
	maattname VARCHAR(254),
	maattalias VARCHAR(254),
	maattdesc VARCHAR(254)
);
