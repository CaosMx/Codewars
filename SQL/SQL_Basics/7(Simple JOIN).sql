-- SQL Basics: Simple JOIN

/*

For this challenge you need to create a simple SELECT statement that will return all columns from the products table, and join to the companies table so that you can return the company name.
products table schema

    id
    name
    isbn
    company_id
    price

companies table schema

    id
    name

You should return all product fields as well as the company name as "company_name".


SOLUTIONS:
*/
-- CaosMx
--Retorno simple con SELECT de:
-- 1) todas las columnas de product y 
-- 2) el nombre de la compañía como company_name:
SELECT
p.*, c.name AS company_name
--  De la tabla Products
FROM products AS p
-- JOIN con Companies
JOIN companies AS c
-- Match Keys:
ON  p.company_id = c.id;


-- Otras soluciones:

SELECT products.*, companies.name AS company_name
FROM products JOIN companies ON company_id = companies.id;

SELECT p.*,
       c.name AS company_name
  FROM products p,
       companies c
 WHERE c.id = p.company_id;

SELECT products.*,companies.name as company_name FROM products JOIN companies ON companies.id=products.company_id;
