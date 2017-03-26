DROP TABLE IF EXISTS person ; 


-- and create the table
CREATE TABLE person (
   person_id   integer NOT NULL
 , name        varchar(200) NOT NULL
 );

-- and verify that the table exists
select 'table person' ; 
SELECT EXISTS (
   SELECT 1 
   FROM   pg_tables
   WHERE  schemaname = 'public'
   AND    tablename = 'person'
 );
