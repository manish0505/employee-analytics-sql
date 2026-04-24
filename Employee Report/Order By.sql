-- ORDER BY
-- Sorts the result-set either in ascending or descending order.

-- Orders the result-set by the 'First_Name' column in ascending order.
SELECT *
FROM empreport.employeedata
ORDER BY First_Name ASC;

-- Orders the result-set by the 'First_Name' column in descending order.
SELECT *
FROM empreport.employeedata
ORDER BY First_Name DESC;

-- Orders the result-set by the 'Age' column in ascending order.
SELECT *
FROM empreport.employeedata
ORDER BY Age;

-- Orders the result-set first by 'Gender' in ascending order, then by 'Age'.
SELECT *
FROM empreport.employeedata
ORDER BY Gender, Age;

-- Orders the result-set first by 'Age' in ascending order, then by 'Gender'.
SELECT *
FROM empreport.employeedata
ORDER BY Age, Gender;

-- Orders the result-set first by 'Gender' in ascending order, then by 'Age' in descending order.
SELECT *
FROM empreport.employeedata
ORDER BY Gender, Age DESC;

-- Orders the result-set by the columns at the specified positions: 4 (implicit), then 7.
SELECT *
FROM empreport.employeedata
ORDER BY 4, 7;



