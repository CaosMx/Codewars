-- Best-Selling Books (SQL for Beginners #5)

/* 

You work at a book store. It's the end of the month, and you need to find out the 5 bestselling books at your store. Use a select statement to list names, authors, and number of copies sold of the 5 books which were sold most.

books table schema

    name
    author
    copies_sold

NOTE: Your solution should use pure SQL. Ruby is used within the test cases just to validate your answer.


SOLUTIONS:
*/


-- CaosMx
/* Info que deseamos ver de las columnas:*/
SELECT b.name, b.author, b.copies_sold
/* Tabla de donde deseamos dicha Info:*/
FROM books AS b
/* Ordenando la Info obtenida de Mayor a Menor:*/
ORDER BY b.copies_sold DESC
/* Deseamos solo los 5 Más Vendidos:*/
LIMIT 5;

-- Otras Soluciones:

SELECT * 
FROM books 
ORDER BY copies_sold DESC 
LIMIT 5;


SELECT * FROM books
ORDER BY copies_sold DESC 
FETCH FIRST 5 ROWS ONLY;


SELECT books.name, 
       books.author, 
       books.copies_sold
FROM books
ORDER BY books.copies_sold DESC
LIMIT 5; 


