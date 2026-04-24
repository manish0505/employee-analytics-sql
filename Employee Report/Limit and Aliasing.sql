-- LIMIT AND ALIASING 

-- LIMIT is used to restrict the number of rows returned by a query, and it's often useful for sampling data or pagination.

-- For example, this query selects the first 3 rows from the 'employeedata' table:
SELECT * 
FROM empreport.employeedata
LIMIT 3;

-- This query orders the rows by age in descending order and selects the fourth row (offset 3) from the sorted result set:
SELECT * 
FROM empreport.employeedata
ORDER BY Age DESC
LIMIT 3, 1;

-- This query orders the rows by age in descending order and selects the third row (offset 2) from the sorted result set:
SELECT * 
FROM empreport.employeedata
ORDER BY Age DESC
LIMIT 2, 1;

-- ALIASING allows you to assign a temporary name to a column or table in a query result.

SELECT Gender, AVG(age)
FROM empreport.employeedata
Group By Gender
HAVING AVG(Age) > 40;

-- For instance, this query calculates the average age by gender and applies a filter, aliasing the result as 'Average_Age':
SELECT Gender, AVG(age) as Average_Age
FROM empreport.employeedata
Group By Gender
HAVING AVG(Age) > 40;

-- Even without 'as', the query still works as expected, with 'Average_Age' acting as the alias for the calculated column:
SELECT Gender, AVG(age)  Average_Age
FROM empreport.employeedata
Group By Gender
HAVING AVG(Age) > 40;






