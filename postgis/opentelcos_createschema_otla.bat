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
CALL:VARIABLES
REM PAUSE
ECHO OpenTelcos - otla - CREATION DU SCHEMA
CALL:SCHEMA
PAUSE
ECHO OpenTelcos - otla - CREATION DES TABLES
CALL:TABLES
PAUSE
GOTO:EOF

:VARIABLES
CALL config.bat

GOTO:EOF


:SCHEMA
SET PGSCHEMA=otla
psql -w -U %PGUSER% -d %PGDB% -c "CREATE SCHEMA IF NOT EXISTS %PGSCHEMA% AUTHORIZATION %PGUSER%;"
REM psql %PGHOSTNAME% %PGPORT% -c "CREATE SCHEMA IF NOT EXISTS %PGSCHEMA% AUTHORIZATION %PGUSER%;" -d %PGDB% -U %PGUSER% 
REM $user sert-il pour la declaration de search_path ? 
psql -w -U %PGUSER% -d %PGDB% -c "ALTER DATABASE %PGDB% SET search_path = %PGSCHEMA%, ot, public;"
REM psql %PGHOSTNAME% %PGPORT% -c "ALTER DATABASE "%PGDB%" SET search_path = "$user", gracethd, public;" %PGUSER% 
REM psql %PGHOSTNAME% %PGPORT% -c "ALTER DATABASE %PGDB% SET search_path = %PGSCHEMA%, ot, public;" -U %PGUSER% 

GOTO:EOF

:TABLES
REM ECHO OpenTelcos - CREATION DES TABLES - 10_LISTS
REM psql -w -U %PGUSER% -d %PGDB% -f %OTSCRPATH%\%PGSCHEMA%\%PGSCHEMA%_10_lists.sql
REM ECHO OpenTelcos - CREATION DES TABLES - 20_INSERTS
REM psql -w -U %PGUSER% -d %PGDB% -f %OTSCRPATH%\%PGSCHEMA%\%PGSCHEMA%_20_insert.sql
ECHO OpenTelcos - CREATION DES TABLES - 30_TABLES
psql -w -U %PGUSER% -d %PGDB% -f %OTSCRPATH%\%PGSCHEMA%\%PGSCHEMA%_30_tables.sql
REM ECHO OpenTelcos - CREATION DES TABLES - 40_POSTGIS
REM psql %PGHOSTNAME% %PGPORT% -f %OTSCRPATH%%PGSCHEMA%_40_postgis.sql -d %PGDB% -U %PGUSER%
REM ECHO OpenTelcos - CREATION DES TABLES - 50_INDEX
REM psql %PGHOSTNAME% %PGPORT% -f %OTSCRPATH%%PGSCHEMA%_50_index.sql -d %PGDB% -U %PGUSER%
REM ECHO OpenTelcos - CREATION DES TRIGGERS - 70_TRIGGERS
REM psql -w -U %PGUSER% -d %PGDB% -f %OTSCRPATH%\%PGSCHEMA%\%PGSCHEMA%_70_triggers.sql
REM ECHO OpenTelcos - CREATION DES TABLES - 90_LABO
REM psql %PGHOSTNAME% %PGPORT% -f %OTSCRPATH%%PGSCHEMA%_90_labo.sql -d %PGDB% -U %PGUSER%

GOTO:EOF
