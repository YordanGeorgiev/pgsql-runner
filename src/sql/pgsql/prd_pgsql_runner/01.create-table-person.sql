-- DROP TABLE IF EXISTS person ; 


SELECT 'create the "person" table' ; 
CREATE TABLE person (
   person_id   integer NOT NULL
 , name        varchar(200) NOT NULL
 );

SELECT 'and verify that the table person exits' ; 
select 'table person' ; 
SELECT EXISTS (
   SELECT 1 
   FROM   pg_tables
   WHERE  schemaname = 'public'
   AND    tablename = 'person'
 );
