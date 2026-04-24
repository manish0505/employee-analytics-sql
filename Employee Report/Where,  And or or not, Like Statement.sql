-- USING WHERE, AND, OR, OR NOT, LIKE STATEMENT % and _

-- Find the record where the first name is 'Leslie'
SELECT *
FROM empreport.employeedata
WHERE First_Name = 'Leslie';

-- Find the record with a salary of 100,000
SELECT *
FROM empreport.employeedata
WHERE salary = 100000;

-- Find records with a salary greater than 100,000
SELECT *
FROM empreport.employeedata
WHERE salary > 100000;

-- Find records with a salary greater than or equal to 100,000
SELECT *
FROM empreport.employeedata
WHERE salary >= 100000;

-- Find records with a salary less than or equal to 100,000
SELECT *
FROM empreport.employeedata
WHERE salary <= 100000;

-- Find all records with gender 'Female'
SELECT *
FROM empreport.employeedata
WHERE Gender = 'Female';

--  Find all records with gender not equal to 'Female' (shows all males)
SELECT *
FROM empreport.employeedata
WHERE Gender != 'Female';

-- Find records with a birthdate greater than '1991-04-20'
SELECT *
FROM empreport.employeedata
WHERE Birthdate > '1991-04-20';

-- Logical Operators AND OR NOT 

-- Find records with a birthdate greater than '1991-04-20' and gender 'Male'
SELECT *
FROM empreport.employeedata
WHERE Birthdate > '1991-04-20'
AND Gender = 'Male';

-- Find records with a birthdate greater than '1991-04-20' or gender 'Male'
SELECT *
FROM empreport.employeedata
WHERE Birthdate > '1991-04-20'
OR Gender = 'Male';

 -- Find records with a birthdate greater than '1991-04-20' or gender not 'Male'
 -- Or not meaning both Male and Female Gender
 -- Find records of Lisa Age 32 using AND OR
 
SELECT *
FROM empreport.employeedata
WHERE Birthdate > '1991-04-20'
OR NOT Gender = 'Male';

SELECT *
FROM empreport.employeedata
WHERE First_Name = 'LISA' AND Age = 32;

SELECT *
FROM empreport.employeedata
WHERE (First_Name = 'LISA' AND Age = 32) OR Age <= 32;

SELECT *
FROM empreport.employeedata
WHERE (Age = 32 AND Gender ='Male') OR Age >= 64;


-- LIKE STATEMENT 
-- % Anything and Specific Value _
-- % represents zero or more characters, _ represents a single character

-- Find records where the first name is exactly 'James'
SELECT *
FROM empreport.employeedata
WHERE First_Name = 'James';

-- Find records where the first name starts with 'Jam'
SELECT *
FROM empreport.employeedata
WHERE First_Name Like 'Jam%';

-- Find records where 'am' appears anywhere in the first name
SELECT *
FROM empreport.employeedata
WHERE First_Name Like '%am%';

-- Find records where the first name starts with 'J'
SELECT *
FROM empreport.employeedata
WHERE First_Name Like 'J%';

-- Find records where the first name starts with 'L' and is exactly four characters long
SELECT *
FROM empreport.employeedata
WHERE First_Name Like 'L___';

-- Find records where the birthdate is in the year 1992
SELECT *
FROM empreport.employeedata
WHERE birthdate Like '1992%';





