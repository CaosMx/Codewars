/*
For this challenge you need to create a SELECT statement, this SELECT statement will use an IN to check whether a department has had a sale with a price over 90.00 dollars BUT the sql MUST use the WITH statement which will be used to select all columns from sales where the price is greater than 90.00, you must call this sub-query special_sales.
departments table schema

    id
    name

sales table schema

    id
    department_id (department foreign key)
    name
    price
    card_name
    card_number
    transaction_date

resultant table schema

    id
    name

    NOTE: Your solution should use pure SQL. Ruby is used within the test cases to do the actual testing.

SOLUTION:
*/

WITH special_sales AS (
  SELECT * FROM sales
  WHERE price > 90.00)

SELECT id, name FROM departments
  WHERE id IN ( SELECT department_id 
                FROM sales 
                WHERE price > 90.00); 
                

-- Otras soluciones:

WITH special_sales AS
  (select * from sales where price > 90)
  select id, name from departments
  WHERE id IN (SELECT department_id FROM special_sales)


WITH special_sales AS 
  (
    SELECT * 
    FROM sales 
    WHERE price > 90.00
  )
SELECT * 
FROM departments
WHERE id IN (SELECT department_id
             FROM special_sales)
             

WITH special_sales (id, name)  
AS  
-- Define the CTE query.  
(  
    SELECT d.id, d.name
    FROM sales s
    INNER JOIN departments d
    ON s.department_id = d.id
    WHERE s.price > 90  
)  
-- Define the outer query referencing the CTE name.  
SELECT DISTINCT id, name
FROM special_sales
ORDER BY id
