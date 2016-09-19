/*OpenTelcos/otrx*/
/*24/08/2016 - SBY - stephane.byache AT aleno DOT eu : CREATION DU SCRIPT */
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

SET search_path TO otrx, public;

/*####################################################*/
/*POPULATE ENUMERATIONS*/
BEGIN;

INSERT INTO l_docetat VALUES (1,'APS');
INSERT INTO l_docetat VALUES (2,'APD');
INSERT INTO l_docetat VALUES (3,'DOE');
INSERT INTO l_docetat VALUES (4,'DOE VALIDE');

INSERT INTO l_gcetat VALUES (1,'ETUDE');
INSERT INTO l_gcetat VALUES (2,'TRAVAUX');
INSERT INTO l_gcetat VALUES (3,'REALISE');
INSERT INTO l_gcetat VALUES (4,'EXPLOITATION');
INSERT INTO l_gcetat VALUES (5,'ABANDONNE');

INSERT INTO l_foetat VALUES (1,'ETUDE');
INSERT INTO l_foetat VALUES (2,'TRAVAUX');
INSERT INTO l_foetat VALUES (3,'REALISE');
INSERT INTO l_foetat VALUES (4,'EXPLOITATION');
INSERT INTO l_foetat VALUES (5,'ABANDONNE');

COMMIT;

