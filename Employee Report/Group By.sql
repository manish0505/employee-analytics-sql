-- GROUP BY
-- Summarizes rows with similar values, commonly paired with aggregate functions like COUNT(), MAX(), MIN(), SUM(), and AVG(), to organize data by specified columns.

SELECT * FROM empreport.employeedata;

-- Selects distinct 'Gender' values from the 'employeedata' table.
SELECT Gender
from empreport.employeedata
Group By Gender;

-- Selects distinct 'Job_Title' values from the 'employeedata' table.
SELECT Job_Title
FROM empreport.employeedata
Group By Job_Title;

-- Selects distinct combinations of 'Job_Title' and 'Salary' from the 'employeedata' table.
SELECT Job_Title, Salary
FROM empreport.employeedata
Group By Job_Title, Salary;

-- Selects 'Gender' along with average, maximum, minimum, and count of 'Age' for each gender group from the 'employeedata' table.
SELECT Gender, AVG(Age), MAX(Age), MIN(Age), COUNT(Age)
from empreport.employeedata
Group By Gender;

