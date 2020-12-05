-- Easy SQL: Moving Values

/*

You have access to a table of monsters as follows:

** monsters table schema **

    id
    name
    legs
    arms
    characteristics

Your task is to make a new table where each column should contain the length of the string in the column to its right 
(last column should contain length of string in the first column). 
Remember some column values are not currently strings. 

Column order and titles should remain unchanged:

** output table schema **

    id
    name
    legs
    arms
    characteristics


HINT:
Return the length of the string:
SELECT CHAR_LENGTH("SQL Tutorial") AS LengthOfString; 

CHAR_LENGTH(str)
If the argument is not a string value, it is converted into a string.

SOLUTIONS:
*/

/*  SQL CaosMx */
SELECT 
char_length(''||name) as id,
char_length(''||legs) as name,
char_length(''||arms) as legs,
char_length(''||characteristics) as arms,
char_length(''||id) as characteristics
FROM monsters;



-- Otras formas:

SELECT 
  length(name) AS id,
  length(legs::text) AS name,
  length(arms::text) AS legs,
  length(characteristics) AS arms,
  length(id::text) AS characteristics
FROM
  monsters;
  
select length(name) as id, 
       length(legs::varchar) as name, 
       length(arms::varchar) as legs, 
       length(characteristics) as arms, 
       length(id::varchar) as characteristics 
from monsters;


SELECT 
char_length(name) as id,
char_length(legs::text) as name,
char_length(arms::text) as legs,
char_length(characteristics) as arms,
char_length(id::text) as characteristics
FROM monsters;


select 
char_length(name || '') as id, 
char_length(legs || '') as name,
char_length(arms || '') as legs,
char_length(characteristics || '') as arms,
char_length(id || '') as characteristics
from monsters;



select 
  length(name) id,
  floor(log(legs))::int + 1 as name,
  floor(log(arms))::int + 1  as legs,
  length(characteristics) arms,
  floor(log(id))::int + 1  as characteristics
from monsters;


SELECT
    CHAR_LENGTH(name) AS id,
    CHAR_LENGTH(CAST(legs as varchar(10))) AS name, 
    CHAR_LENGTH(CAST(arms as varchar(10))) AS legs, 
    CHAR_LENGTH(characteristics) AS arms, 
    CHAR_LENGTH(CAST(id as varchar(10))) AS characteristics
FROM monsters;



Select 
LENGTH(name) as id,
LENGTH(Cast(legs as varchar)) as name,
LENGTH(Cast(arms as varchar)) as legs,
LENGTH(characteristics) as arms,
LENGTH(Cast(id as varchar)) as characteristics
From monsters;



  

