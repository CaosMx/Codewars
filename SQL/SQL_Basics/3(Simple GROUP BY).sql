-- SQL Basics: Simple GROUP BY

/*

For this challenge you need to create a simple GROUP BY statement, you want to group all the people by their age and count the people who have the same age.
people table schema

    id
    name
    age

select table schema

    age [group by]
    people_count (people count)


SOLUTION:
*/

-- Create your SELECT statement here
SELECT COUNT(id) AS people_count, age
FROM people
GROUP BY age;

-- Otras soluciones:

SELECT age, COUNT(*) people_count
FROM people
GROUP BY age;

SELECT age, COUNT(name) AS people_count
FROM people
GROUP BY age;

Select p.age, count(p.age) as people_count 
from people p
group by p.age;



