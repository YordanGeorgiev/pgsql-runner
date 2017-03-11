-- OBS !!! drop the db if it already exists 
DROP DATABASE IF EXISTS :pgsql_db ;

-- re-create the db
CREATE DATABASE :pgsql_db ;

-- and check that the db exists
SELECT datname , datcollate FROM pg_database WHERE datname=:'pgsql_db'
