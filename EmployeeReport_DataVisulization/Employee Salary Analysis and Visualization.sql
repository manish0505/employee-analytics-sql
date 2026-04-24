-- Employee Salary Analysis and Visualization

-- Select all records from employeedata in the empreport
SELECT * FROM empreport.employeedata;

-- 1. What is the total number of employees, and how many are there in each job title?
-- This helps to understand the distribution of employees across different roles.
-- Use a Card and Matrix Chart to easily count the total number of employees and the count in each job title.
SELECT Job_Title, COUNT(*) AS Employee_Count
FROM empreport.employeedata
GROUP BY Job_Title;

-- 2. What is the average salary by Job title?
-- This highlight compensation trends across different positions.
SELECT Job_Title, ROUND(AVG(Salary), 0) AS Average_Salary
FROM EmployeeData
GROUP BY Job_Title
ORDER BY Job_Title ASC;

-- 3. What is the distribution of experience levels within the company?
-- Understanding the distribution of experience can aid in planning for training and development.
-- Use a Pie Chart to show the proportion of each experience level within the company, providing a quick view of the distribution.
-- Use a Stacked Bar Chart to compare average salaries side-by-side for males and females across various job roles or departments.
SELECT Experience_Level, COUNT(*) AS Count
FROM EmployeeData
GROUP BY Experience_Level;

-- 4. What are the common work settings and their salaries?
-- This can show if remote work settings influence salaries differently.
-- Clustered Column Chart show average salaries for different work settings and show the count of employees in each setting.
SELECT Work_Setting, ROUND (AVG(Salary), 0) AS Average_Salary, COUNT(*) AS Employee_Count
FROM EmployeeData
GROUP BY Work_Setting;

-- 5. How does employee distribution vary by location?
-- Identifying if certain locations have more employees can influence regional policies.
-- Use a Treemap chart to show the distribution across different regions.
SELECT Location, COUNT(*) AS Employee_Count
FROM EmployeeData
GROUP BY Location;


-- 6. What is the salary range within each company size category?
-- Examining how salary ranges differ between small, medium, and large companies.
-- Display the distribution of salaries, highlighting the median, quartiles, and outliers within each company size category.
SELECT Company_Size, 
       MIN(Salary) AS Minimum_Salary, 
       MAX(Salary) AS Maximum_Salary, 
       ROUND(AVG(Salary), 0) AS Average_Salary
FROM EmployeeData
GROUP BY Company_Size;

