-- Countries Capitals for Trivia Night (SQL for Beginners #6)

/* 

Your friends told you that if you keep coding on your computer, you are going to hurt your eyes. They suggested that you go with them to trivia night at the local club.

Once you arrive at the club, you realize the true motive behind your friends' invitation. They know that you are a computer nerd, and they want you to query the countries table and get the answers to the trivia questions.

Schema of the countries table:

    country (String)
    capital (String)
    continent (String)

The first question: from the African countries that start with the character E, get the names of their capitals ordered alphabetically.

    You should only give the names of the capitals. Any additional information is just noise
    If you get more than 3, you will be kicked out, for being too smart
    Also, this database is crowd-sourced, so sometimes Africa is written Africa and in other times Afrika.


SOLUTIONS:
*/

-- CaosMx
/* Solicitan los nombres de las capitales */
SELECT c.capital
/* De la tabla countries*/
FROM countries AS c
/* Donde continente aparezca como Africa o Afrika y de los Paíse que inicien con E*/
WHERE c.continent LIKE 'Afri_a'
  AND c.country LIKE 'E%' 
/* En orden alfabético (o ascendente)*/
ORDER BY capital ASC
/* Máximo 3 resultaddos*/
LIMIT 3;


-- Otras soluciones:

SELECT capital 
FROM countries 
WHERE continent IN ('Africa', 'Afrika') 
  AND country LIKE 'E%' 
ORDER BY capital 
LIMIT 3;


SELECT capital
    FROM countries
   WHERE continent LIKE 'Afri%'
     AND country LIKE 'E%'
ORDER BY capital ASC
   LIMIT 3;
   

SELECT capital
  FROM countries
  WHERE country LIKE 'E%' AND
    continent LIKE 'Af%'
  ORDER BY capital
  FETCH FIRST 3 ROWS ONLY;
  
  
SELECT capital
FROM countries
WHERE SUBSTR(country,1,1)='E' 
  AND continent IN ('Africa', 'Afrika')
ORDER BY capital  
LIMIT 3;








