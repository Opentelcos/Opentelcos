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

SET search_path TO otrx, otconf, public;

DROP FUNCTION IF EXISTS fn_t_organisme_date_modif() CASCADE;
CREATE OR REPLACE FUNCTION fn_t_organisme_date_modif()	
RETURNS TRIGGER AS $$
BEGIN
    NEW.ogmodifdat = now();
    RETURN NEW;	
END;
$$ language 'plpgsql';

DROP TRIGGER IF EXISTS tr_t_organisme_date_modif ON t_organisme CASCADE;
CREATE TRIGGER tr_t_organisme_date_modif 
BEFORE UPDATE ON t_organisme 
FOR EACH ROW EXECUTE PROCEDURE fn_t_organisme_date_modif();



DROP FUNCTION IF EXISTS fn_t_individu_date_modif() CASCADE;
CREATE OR REPLACE FUNCTION fn_t_individu_date_modif()	
RETURNS TRIGGER AS $$
BEGIN
    NEW.ivmodifdat = now();
    RETURN NEW;	
END;
$$ language 'plpgsql';

DROP TRIGGER IF EXISTS tr_t_individu_date_modif ON t_organisme CASCADE;
CREATE TRIGGER tr_t_individu_date_modif 
BEFORE UPDATE ON t_individu 
FOR EACH ROW EXECUTE PROCEDURE fn_t_individu_date_modif();



DROP FUNCTION IF EXISTS fn_t_referencement_date_modif() CASCADE;
CREATE OR REPLACE FUNCTION fn_t_referencement_date_modif()	
RETURNS TRIGGER AS $$
BEGIN
    NEW.rx_modifdat = now();
    RETURN NEW;	
END;
$$ language 'plpgsql';

DROP TRIGGER IF EXISTS tr_t_referencement_date_modif ON t_organisme CASCADE;
CREATE TRIGGER tr_t_referencement_date_modif 
BEFORE UPDATE ON t_referencement 
FOR EACH ROW EXECUTE PROCEDURE fn_t_referencement_date_modif();

