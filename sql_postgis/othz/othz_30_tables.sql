/*OpenTelcos/othz*/
/*15/09/2016 - SBY - stephane.byache AT aleno DOT eu : CREATION DU SCRIPT */
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

SET search_path TO othz, gracethd, public;

DROP TABLE IF EXISTS t_radiostation CASCADE;
DROP TABLE IF EXISTS t_radiosupport CASCADE;
DROP TABLE IF EXISTS t_radioantenne CASCADE;

CREATE TABLE t_radiostation(	rs_code VARCHAR(254) NOT NULL ,
	rs_codeext VARCHAR(254)  ,
	rs_nd_code VARCHAR(254) NOT NULL UNIQUE, --REFERENCES t_noeud (nd_code),
	rs_nom VARCHAR(254)  ,
	rs_num VARCHAR(254)  ,
	rs_dateimp VARCHAR(254)  ,
	rs_datemod VARCHAR(254)  ,
	rs_creadat TIMESTAMP  ,
	rs_majdate TIMESTAMP  ,
	rs_majsrc VARCHAR(254)  ,
	rs_abddate DATE  ,
	rs_abdsrc VARCHAR(254)  ,
CONSTRAINT "t_radiostation_PK" PRIMARY KEY (rs_code));	
	
	
CREATE TABLE t_radiosupport(	rp_code VARCHAR(254) NOT NULL ,
	rp_codeext VARCHAR(254)  ,
	rp_rs_code VARCHAR(254)  REFERENCES t_radiostation (rs_code),
	rp_num VARCHAR(254)  ,
	rp_rs_num VARCHAR(254),--  REFERENCES t_radiostation (rs_num),
	rp_longitu DOUBLE PRECISION  ,
	rp_latitu DOUBLE PRECISION  ,
	rp_positio VARCHAR(254)  ,
	rp_insee VARCHAR(254)  ,
	rp_lieudit VARCHAR(254)  ,
	rp_adresse VARCHAR(254)  ,
	rp_codepos VARCHAR(254)  ,
	rp_commune VARCHAR(254)  ,
	rp_nature VARCHAR(254)  ,
	rp_hauteur VARCHAR(254)  ,
	rp_prop VARCHAR(254)  ,
	rp_creadat TIMESTAMP  ,
	rp_majdate TIMESTAMP  ,
	rp_majsrc VARCHAR(254)  ,
	rp_abddate DATE  ,
	rp_abdsrc VARCHAR(254)  ,
CONSTRAINT "t_radiosupport_PK" PRIMARY KEY (rp_code));	

	
CREATE TABLE t_radioantenne(	ra_code VARCHAR(254)  ,
	ra_codeext VARCHAR(254)  ,
	ra_rp_code VARCHAR(254)  REFERENCES t_radiosupport (rp_code),
	ra_su_num VARCHAR(254),--  REFERENCES t_radiosupport (rp_num),
	ra_cartora VARCHAR(254)  ,
	ra_exploit VARCHAR(254)  ,
	ra_type VARCHAR(254)  ,
	ra_num VARCHAR(254)  ,
	ra_dimens DOUBLE PRECISION  ,
	ra_directi VARCHAR(254)  ,
	ra_azimut DOUBLE PRECISION  ,
	ra_hauteur DOUBLE PRECISION  ,
	ra_system VARCHAR(254)  ,
	ra_debut DOUBLE PRECISION  ,
	ra_fin DOUBLE PRECISION  ,
	ra_unite VARCHAR(254)  ,
	ra_creadat TIMESTAMP  ,
	ra_majdate TIMESTAMP  ,
	ra_majsrc VARCHAR(254)  ,
	ra_abddate DATE  ,
	ra_abdsrc VARCHAR(254)  ,
CONSTRAINT "t_radioantenne_PK" PRIMARY KEY (ra_code));	
