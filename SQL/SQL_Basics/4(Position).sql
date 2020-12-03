-- SQL Basics - Position

/*

You have access to a table of monsters as follows:

monsters schema

    id
    name
    legs
    arms
    characteristics

In each row, the characteristic column has a single comma. Your job is to find it using position(). You must return a table with the format as follows:

output schema

    id
    name
    comma

The comma column will contain the position of the comma within the characteristics string. Order the results by comma.


SOLUTIONS:
*/

/*  SQL  CaosMx*/
-- Retorna id, name y comma (contiene la posición de comma en characteristics)
SELECT id, name, POSITION(',' IN characteristics) AS comma 
-- De la tabla Monsters
FROM monsters
-- Ordena por la comma
ORDER BY comma;


-- Otra forma:

SELECT m.id, m.name, POSITION(',' IN m.characteristics) AS comma
FROM monsters AS m
ORDER BY comma;
