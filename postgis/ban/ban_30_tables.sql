
SET search_path TO ban, public;

CREATE TABLE t_ban 
(
	id VARCHAR(80) PRIMARY KEY,
	nom_voie VARCHAR(80),
	id_fantoir VARCHAR(80),
	numero VARCHAR(80),
	rep VARCHAR(80),
	code_insee VARCHAR(80),
	code_post VARCHAR(80),
	alias VARCHAR(80),
	nom_ld VARCHAR(80),
	x DOUBLE PRECISION,
	y DOUBLE PRECISION,
	commune VARCHAR(80),
	fant_voie VARCHAR(80),
	fant_ld VARCHAR(80),
	lat VARCHAR(80),
	lon VARCHAR(80),
	geom Geometry(POINT,2154)
);

CREATE INDEX t_ban_geom_gist ON t_ban USING GIST (geom); 
