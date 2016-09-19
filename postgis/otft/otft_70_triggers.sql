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


/*Spatialite*/

CREATE TRIGGER IF NOT EXISTS tr_t_ft_contrats_date_crea AFTER INSERT ON t_ft_contrats
 BEGIN
  update t_ft_contrats SET date_crea = datetime('now','localtime')
  WHERE ROWID = new.ROWID;
 END;


CREATE TRIGGER IF NOT EXISTS tr_t_ft_contrats_date_modif AFTER UPDATE ON t_ft_contrats
 BEGIN
  UPDATE t_ft_contrats SET date_modif = datetime('now','localtime') 
  WHERE ROWID = new.ROWID;
 END;

 
 
 CREATE TRIGGER IF NOT EXISTS tr_t_r_docs_date_crea AFTER INSERT ON t_r_docs
 BEGIN
  update t_r_docs SET date_crea = datetime('now','localtime')
  WHERE ROWID = new.ROWID;
 END;

 
CREATE TRIGGER IF NOT EXISTS tr_t_r_docs_date_modif AFTER UPDATE ON t_r_docs
 BEGIN
  UPDATE t_r_docs SET date_modif = datetime('now','localtime') 
  WHERE ROWID = new.ROWID;
 END;
 
 
 
 CREATE TRIGGER IF NOT EXISTS tr_t_ft_arciti_date_crea AFTER INSERT ON t_ft_arciti
 BEGIN
  update t_ft_arciti SET date_crea = datetime('now','localtime')
  WHERE ROWID = new.ROWID;
 END;

CREATE TRIGGER IF NOT EXISTS tr_t_ft_arciti_date_modif AFTER UPDATE ON t_ft_arciti
 BEGIN
  UPDATE t_ft_arciti SET date_modif = datetime('now','localtime') 
  WHERE ROWID = new.ROWID;
 END;

 
 
 CREATE TRIGGER IF NOT EXISTS tr_t_ft_chambre_date_crea AFTER INSERT ON t_ft_chambre
 BEGIN
  update t_ft_chambre SET date_crea = datetime('now','localtime')
  WHERE ROWID = new.ROWID;
 END;


CREATE TRIGGER IF NOT EXISTS tr_t_ft_chambre_date_modif AFTER UPDATE ON t_ft_chambre
 BEGIN
  UPDATE t_ft_chambre SET date_modif = datetime('now','localtime') 
  WHERE ROWID = new.ROWID;
 END;

 
 
 CREATE TRIGGER IF NOT EXISTS tr_t_ft_appui_date_crea AFTER INSERT ON t_ft_appui
 BEGIN
  update t_ft_appui SET date_crea = datetime('now','localtime')
  WHERE ROWID = new.ROWID;
 END;


CREATE TRIGGER IF NOT EXISTS tr_t_ft_appui_date_modif AFTER UPDATE ON t_ft_appui
 BEGIN
  UPDATE t_ft_appui SET date_modif = datetime('now','localtime') 
  WHERE ROWID = new.ROWID;
 END;
 
