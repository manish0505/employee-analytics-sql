-- CASE STATEMENTS 
-- Offer conditional logic in SQL, evaluating conditions sequentially to return the first matching value, similar to an if-then-else statement; if no conditions match and no ELSE clause is provided, it returns NULL.

SELECT * FROM empreport.employeedata;

-- Categorizing employees into age brackets based on their age.
SELECT First_Name,
Last_name,
Age,
CASE
	WHEN age <= 32 THEN 'Young'
    WHEN age BETWEEN 33 AND 54 THEN 'Old'
    WHEN age >= 60 THEN 'Retiring Soon'
END AS Age_Bracket
FROM empreport.employeedata;


-- Adding Bonus and Salary 
-- <= 50000 = 5%
-- > 50000 = 7%
-- Financial = 10% 

-- Calculating new salary with a 5% increase for salaries below $50,000 using 0.05.
SELECT First_Name, Last_Name, Salary,
Case
	When Salary <= 50000 Then Salary + (Salary * 0.05)
End as New_Salary
FROM empreport.employeedata;

-- Calculating new salary with a 5% increase for salaries below $50,000 using 1.05.
SELECT First_Name, Last_Name, Salary,
Case
	When Salary <= 50000 Then Salary * 1.05
End as New_Salary
FROM empreport.employeedata;

-- Calculating new salary with a 5% increase for salaries below $50,000 and a 7% increase for salaries above $50,000.
SELECT First_Name, Last_Name, Salary,
Case
	When Salary <= 50000 Then Salary * 1.05
    When Salary > 50000 Then Salary * 1.07
End as New_Salary
FROM empreport.employeedata;


-- Adjusting salary based on job title, with Financial Data Analysts receiving a 10% bonus.
SELECT First_Name, Last_Name, Salary, Job_Title,
CASE
	WHEN Salary <= 50000 THEN Salary * 1.05
    WHEN Salary > 50000 THEN Salary * 1.07
END AS New_Salary,
CASE
	WHEN Job_Title = 'Financial Data Analyst' THEN Salary * .10
END AS Bonus
FROM empreport.employeedata;

