/*OpenTelcos/otrx*/
/*Version : 0.0.3*/
/*ALENO*/
/*CREATION DE LA STRUCTURE DE DTcode.sqlite*/
/*Licence : GNU GPLv3*/
/*20/02/2015 - SBY - aleno.eu : CREATION DU SCRIPT (DocTekus/dtgdb/dtcode)*/
/*03/03/2015 - SBY : Modifications multiples */
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
DROP TABLE IF EXISTS l_docetat CASCADE;
DROP TABLE IF EXISTS l_gcetat  CASCADE;
DROP TABLE IF EXISTS l_foetat  CASCADE;
DROP TABLE IF EXISTS l_rftype  CASCADE;
DROP TABLE IF EXISTS l_rfcodemask  CASCADE;



/*####################################################*/
/*ENUMERATIONS*/

CREATE TABLE IF NOT EXISTS l_docetat(
	docetatid INTEGER NOT NULL PRIMARY KEY,
	docetatdesc VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS l_gcetat(
	gcetatid INTEGER NOT NULL PRIMARY KEY,
	gcetatdesc VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS l_foetat(
	foetatid INTEGER NOT NULL PRIMARY KEY,
	foetatdesc VARCHAR(50)
);


