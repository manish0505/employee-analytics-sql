-- STRING FUNCTIONS 
-- Manipulate data, performing tasks like determining length, changing case, trimming spaces, extracting substrings, replacing text, finding positions, and concatenating strings.

SELECT * FROM empreport.employeedata;

-- LENGTH returns the length of a string.
SELECT LENGTH('Sample');

-- Retrieves the first name and its length for each employee.
 SELECT First_Name, LENGTH(First_Name)
 FROM empreport.employeedata;   

-- Order BY start with 3 Letter and if exceeds need to clean 
 SELECT First_Name, LENGTH(First_Name)
 FROM empreport.employeedata
 ORDER BY 3;   
 
-- Converts first names to uppercase.
SELECT First_Name, UPPER(First_Name)
FROM employeedata;

-- Converts first names to lowercase.
SELECT First_Name, LOWER(First_Name)
FROM employeedata;

-- TRIM removes leading and trailing spaces.
SELECT TRIM('     sample     ');

-- RTRIM removes trailing spaces.
SELECT RTRIM('     sample     ');

-- Retrieves first two and last two letters of first name, and the 3rd and 4th letters.
SELECT First_Name, 
Left(First_Name, 2),
Right(First_Name, 2),
substring(First_Name, 3,2)
FROM empreport.employeedata;

-- Retrieves first two and last two letters of first name, the 3rd and 4th letters, and extracts birth month from birthdate.
SELECT First_Name, 
Left(First_Name, 2),
Right(First_Name, 2),
substring(First_Name, 3,2),
Birthdate,
substring(Birthdate, 6,2) AS Birth_Month
FROM empreport.employeedata;


-- Replaces 'A' with 'Z' in first names.
SELECT First_Name, REPLACE(First_Name, 'A', 'Z')
FROM empreport.employeedata;

-- Locates 'SA' in first names.
SELECT First_Name, LOCATE('SA', First_Name)
FROM empreport.employeedata;

-- Concatenates first and last names with a space in between.
SELECT First_Name, Last_Name,
CONCAT(First_Name, ' ',Last_Name) AS Full_Name
FROM empreport.employeedata;






