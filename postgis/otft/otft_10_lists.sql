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

/*TODO: Voir avec GraceTHD*/
/*DTdocs.l_etatdoc*/
DROP TABLE IF EXISTS "l_etatdoc";
CREATE TABLE l_etatdoc
(etatdoc INTEGER PRIMARY KEY NOT NULL,
etatdocval TEXT);
