-- SQL Basics: Simple JOIN with COUNT

/*

For this challenge you need to create a simple SELECT statement that will return all columns from the people table, and join to the toys table so that you can return the COUNT of the toys
people table schema

    id
    name

toys table schema

    id
    name
    people_id

You should return all people fields as well as the toy count as "toy_count".

SOLUTIONS:
*/

--CaosMx
--Retorna todas las columnas de PEOPLE y el conteo de la tabla TOYS usando AS "toy_count"
SELECT p.*, COUNT(t.id) AS toy_count 
FROM people AS p
-- Join con toys
JOIN toys AS t
-- Match de las KEYS
ON t.people_id = p.id
-- Agrupando por la condición de Match de las KEYS
GROUP BY p.id;


-- Otras soluciones:

SELECT
  P.id,
  P.name,
  (SELECT COUNT(*) FROM toys WHERE people_id = P.id) AS toy_count
FROM people AS P;

SELECT 
  p.id
, p.name
, COUNT(t.id) AS toy_count
FROM people as p
LEFT JOIN toys as t
  ON p.id = t.people_id
GROUP BY
  p.id
, p.name;

SELECT people.*, COUNT(toys.id) AS toy_count
FROM people, toys
WHERE people.id = toys.people_id
GROUP BY people.id;
