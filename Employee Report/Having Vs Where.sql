-- HAVING AND WHERE

SELECT * FROM empreport.employeedata;

-- Selects 'Gender' along with the average age for each gender group, filtering out groups with average age greater than 40.
SELECT Gender, AVG(Age)
FROM employeedata
GROUP BY Gender
HAVING AVG(Age) > 40;

-- Selects 'Job_Title' along with the average salary for each job title.
SELECT Job_Title, AVG(Salary)
FROM employeedata
GROUP BY Job_Title;

-- Selects 'Job_Title', 'Experience_Level', and the average salary for senior-level positions, filtering the results to include only senior-level positions.
SELECT Job_Title, Experience_Level, AVG(Salary)
FROM employeedata
WHERE Experience_Level Like '%Senior%'
GROUP BY Job_Title, Experience_Level;


-- The WHERE clause filters rows before the grouping operation, whereas the HAVING clause filters groups after the grouping operation. 

-- For example, in this query, WHERE filters rows based on 'Experience_Level' before grouping:
SELECT Job_Title, Experience_Level, AVG(Salary)
FROM employeedata
WHERE Experience_Level LIKE '%Senior%'
GROUP BY Job_Title, Experience_Level;

-- And in this query, HAVING filters groups based on the average salary after grouping:
SELECT Job_Title, Experience_Level, AVG(Salary)
FROM employeedata
WHERE Experience_Level LIKE '%Senior%'
GROUP BY Job_Title, Experience_Level
HAVING AVG(Salary) > 110000;
