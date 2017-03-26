DROP TABLE IF EXISTS tech ; 


-- and create the table
CREATE TABLE tech (
   tech_id     integer NOT NULL
 , name        varchar(200) NOT NULL
);

-- and verify that the table exists
select 'table tech' ; 
SELECT EXISTS (
   SELECT 1 
   FROM   pg_tables
   WHERE  schemaname = 'public'
   AND    tablename = 'tech'
 );
