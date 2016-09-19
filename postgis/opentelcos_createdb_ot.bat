@ECHO OFF

REM OpenTelcos / opentelcos_createdb
REM 01/09/2016 - SBY - stephane.byache at aleno.eu : CREATION DU SCRIPT
REM Cible PostgreSQL 9

REM ###########################################################################
REM #                                                                         #
REM #   This program is free software; you can redistribute it and/or modify  #
REM #   it under the terms of the GNU General Public License as published by  #
REM #   the Free Software Foundation; either version 3 of the License, or     #
REM #   (at your option) any later version.                                   #
REM #                                                                         #
REM ###########################################################################



:LAUNCH
ECHO OpenTelcos - ATTENTION ce script considere que vous utilisez un password file. 
PAUSE
CALL:VARIABLES
ECHO OpenTelcos - CREATION DE LA BASE. 
CALL:BASE
REM PAUSE
ECHO OpenTelcos - CREATION DU SCHEMA
CALL:SCHEMA
REM PAUSE
REM ECHO OpenTelcos - CREATION DES TABLES
REM CALL:TABLES
PAUSE
GOTO:EOF

:VARIABLES
CALL config.bat

GOTO:EOF

:BASE
psql -w -U %PGUSER% -c "CREATE DATABASE %PGDB%;"
psql -w -U %PGUSER% -d %PGDB% -c "CREATE EXTENSION postgis;"
GOTO:EOF

:SCHEMA
SET PGSCHEMA=ot
psql -w -U %PGUSER% -d %PGDB% -c "CREATE SCHEMA IF NOT EXISTS %PGSCHEMA% AUTHORIZATION %PGUSER%;"
psql -w -U %PGUSER% -d %PGDB% -c "ALTER DATABASE %PGDB% SET search_path = %PGSCHEMA%, ot, public;"

:TABLES
ECHO OpenTelcos - CREATION DES TABLES - 10_LISTS
psql -w -U %PGUSER% -d %PGDB% -f %OTSCRPATH%\%PGSCHEMA%\%PGSCHEMA%_30_tables.sql
