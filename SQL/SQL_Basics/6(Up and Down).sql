-- SQL Basics: Up and Down

/*

Given a table of random numbers as follows:

** numbers table schema **

    id
    number1
    number2

Your job is to return table with similar structure and headings, where if the sum of a column is odd, the column shows the minimum value for that column, and when the sum is even, it shows the max value. You must use a case statement.

** output table schema **

    number1
    number2



SOLUTIONS:
*/

--CaosMx
-- Retornar resultado:
SELECT 
-- 1) Usando CASE:
  CASE
    -- 2) Si la suma de la columna (number1) es impar, retornar el valor menor:
    WHEN  SUM(number1)%2!=0 THEN MIN(number1)
    -- 3) Si la suma de la columna (number1) es par, retorna el valor mayor:
    ELSE MAX(number1)
    -- Resultado de la columna number1 que se retorna y con el nombre number1
  END as number1,
  -- 1) Usando CASE:
  CASE 
    -- -- 2) Si la suma de la columna (number2) es impar, retornar el valor menor:
    WHEN  SUM(number2)%2!=0 THEN MIN(number2)
    -- 3) Si la suma de la columna (number2) es par, retorna el valor mayor:
    ELSE MAX(number2)
    -- Resultado de la columna number2 que se retorna y con el nombre number2
  END as number2
-- Tabla de donde trabaja los datos:
FROM numbers;



-- Otras formas:

select 
  case when sum(number1)%2=1 then min(number1) else max(number1) end as number1, 
  case when sum(number2)%2=1 then min(number2) else max(number2) end as number2
from numbers;

SELECT
  CASE WHEN(sum(number1)%2=0) THEN max(number1) ELSE min(number1) END as number1,
  CASE WHEN(sum(number2)%2=0) THEN max(number2) ELSE min(number2) END as number2
FROM numbers;

SELECT
  CASE WHEN (SELECT SUM(number1) FROM numbers) % 2 <> 0 THEN MIN(number1) ELSE MAX(number1) END AS number1
  ,CASE WHEN (SELECT SUM(number2) FROM numbers) % 2 <> 0 THEN MIN(number2) ELSE MAX(number2) END AS number2
FROM numbers;

SELECT 
   CASE 
      WHEN SUM(number1) % 2 != 0
      THEN  MIN(number1)
      ELSE  MAX(number1)
   END as number1,
   CASE
      WHEN SUM(number2) % 2 != 0
      THEN  MIN(number2)
      ELSE  MAX(number2)
   END as number2

FROM numbers;

select
      (CASE WHEN sum(number1) % 2 != 0 THEN min(number1) else max(number1) end) as number1,
      (CASE WHEN sum(number2) % 2 != 0 THEN min(number2) else max(number2) end) as number2
from numbers;
