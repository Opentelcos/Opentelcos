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

SET search_path TO otft, ot, public;


/*#################################*/
/*VUES DIVERSES*/

/*CREATION DE VUES POUR QUALIFIER LES TYPES DE DOCS*/
/*Ca fait une requête UNION trop grosse, il faut prévoir un traitement complet par type de documents, inclus l'insert dans t_r_docs. En traitant chaque type de document unitairement, ça permet aussi d'adapter plus facilement le code. 
Il faut aussi utiliser une table des types de documents avec les pathmask. 
*/
DROP VIEW IF EXISTS v_r_files_docs;
CREATE VIEW v_r_files_docs AS
SELECT 
fullpath,
filename,
extension,
size_oct,
savedate,
'PIT_communal_FT_Appui' AS typedoc 
FROM v_r_files
WHERE
fullpath like '%\Appui\FT_Appui.shp'
UNION
SELECT 
fullpath,
filename,
extension,
size_oct,
savedate,
'PIT_communal_FT_Chambre' AS typedoc 
FROM v_r_files
WHERE
fullpath like '%\Chambre\FT_chambre.shp'
UNION
SELECT 
fullpath,
filename,
extension,
size_oct,
savedate,
'PIT_communal_FT_ArcIti' AS typedoc 
FROM v_r_files
WHERE
fullpath like '%\Iti\FT_ArcIti.shp'
UNION
SELECT 
fullpath,
filename,
extension,
size_oct,
savedate,
'PIT_communal_FT_NRA' AS typedoc 
FROM v_r_files
WHERE
fullpath like '%\RE\FT_NRA.shp'
UNION
SELECT 
fullpath,
filename,
extension,
size_oct,
savedate,
'PIT_communal_FT_SR' AS typedoc 
FROM v_r_files
WHERE
fullpath like '%\SR\FT_SR.shp'
UNION
SELECT 
fullpath,
filename,
extension,
size_oct,
savedate,
'PIT_communal_FT_ZoneRE' AS typedoc 
FROM v_r_files
WHERE
fullpath like '%\ZoneRE\FT_ZoneRE.shp'
UNION
SELECT 
fullpath,
filename,
extension,
size_oct,
savedate,
'PIT_communal_FT_ZoneSR' AS typedoc 
FROM v_r_files
WHERE
fullpath like '%\ZoneSR\FT_ZoneSR.shp'
UNION
SELECT 
fullpath,
filename,
extension,
size_oct,
savedate,
'PIT_communal_FT_ZoneUt' AS typedoc 
FROM v_r_files
WHERE
fullpath like '%\ZoneUt\FT_ZoneUt.shp'
UNION
SELECT 
fullpath,
filename,
extension,
size_oct,
savedate,
'PIT_communal_FT_Commune' AS typedoc 
FROM v_r_files
WHERE
fullpath like '%\Commune\FT_Commune.shp'
UNION
SELECT 
fullpath,
filename,
extension,
size_oct,
savedate,
'PIT_communal_FT_Commune_Tampon' AS typedoc 
FROM v_r_files
WHERE
fullpath like '%\Commune\FT_Commune_Tampon.shp'
UNION
SELECT 
fullpath,
filename,
extension,
size_oct,
savedate,
'PIT_communal_FT_HabilPo' AS typedoc 
FROM v_r_files
WHERE
fullpath like '%\HabilPo\FT_HabilPo.shp'
UNION
SELECT 
fullpath,
filename,
extension,
size_oct,
savedate,
'PIT_communal_FT_HabilTe' AS typedoc 
FROM v_r_files
WHERE
fullpath like '%\HabilTe\FT_HabilTe.shp'
;

/*Documents à ajouter ou mettre à jour dans t_r_docs*/
DROP VIEW IF EXISTS v_r_files_2_insert;
CREATE VIEW v_r_files_2_insert AS
SELECT 
	"a"."fullpath" AS "fullpath", 
	"a"."filename" AS "filename", 
	"a"."extension" AS "extension", 
	"a"."size_oct" AS "size_oct",
	"a"."savedate" AS "savedate",
	"a"."typedoc" AS "typedoc",
	"b"."iddoc" AS "iddoc"
FROM "v_r_files_docs" AS "a"
LEFT JOIN "t_r_docs" AS "b" USING (fullpath)
WHERE "a"."typedoc" IS NOT NULL
AND "b"."iddoc" IS NULL;

/*Documents à mettre à jour dans t_r_docs*/
DROP VIEW IF EXISTS v_r_files_2_update;
CREATE VIEW v_r_files_2_update AS
SELECT 
	"a"."fullpath" AS "fullpath", 
	"a"."filename" AS "filename", 
	"a"."extension" AS "extension", 
	"a"."size_oct" AS "size_oct",
	"a"."savedate" AS "savedate",
	"a"."typedoc" AS "typedoc",
	"b"."iddoc" AS "iddoc"
FROM "v_r_files_docs" AS "a"
LEFT JOIN "t_r_docs" AS "b" USING (fullpath)
WHERE "a"."typedoc" IS NOT NULL
AND ("a"."size_oct" != "b"."size_oct"
OR "a"."savedate" != "b"."savedate");

/*Documents disparus*/
DROP VIEW IF EXISTS v_r_files_2_remove;
CREATE VIEW v_r_files_2_remove AS
SELECT 
	"a"."fullpath" AS "fullpath", 
	"a"."filename" AS "filename", 
	"a"."extension" AS "extension", 
	"a"."size_oct" AS "size_oct",
	"a"."savedate" AS "savedate",
	"a"."typedoc" AS "typedoc"
FROM "t_r_docs" AS "a"
LEFT JOIN "v_r_files_docs" AS "b" USING (fullpath)
WHERE "b"."typedoc" IS NULL
;


/*#################################*/
/*REQUETES DE CONTROLE*/

/*Controle des doublons*/
