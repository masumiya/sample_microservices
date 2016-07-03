#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
  -- For api1
  CREATE USER api1_user;
  ALTER ROLE api1_user WITH PASSWORD 'api1_pass';
  ALTER ROLE api1_user CREATEDB;
  CREATE DATABASE api1_db;
  GRANT ALL PRIVILEGES ON DATABASE api1_db TO api1_user;
  ALTER DATABASE api1_db OWNER TO api1_user;
EOSQL
