-- Select all records from employeedata in the empreport
SELECT * FROM empreport.employeedata; 

-- If the uodate not working input this code but after back again this is for safety reasonn
SET sql_safe_updates = 0; 


-- Change column name from 'ID' to 'Employee_ID' and adjust data type
ALTER TABLE employeedata
CHANGE COLUMN ID Employee_ID VARCHAR(15) NULL;

-- Display column details to check data types before altering
DESCRIBE employeedata;

SELECT Birth_Date from employeedata;

-- Update and format 'Birth_Date' from MM/DD/YYYY and MM-DD-YYYY to YYYY-MM-DD
UPDATE empreport.employeedata
SET Birth_Date = CASE 
	WHEN Birth_Date Like '%/%' THEN date_format(STR_TO_DATE(Birth_Date, '%m/%d/%Y'), '%Y/%m/%d')
    WHEN Birth_Date Like '%-%' THEN date_format(STR_TO_DATE(Birth_Date, '%m-%d-%Y'), '%Y-%m-%d')
ELSE NULL
END;

-- Modify 'Birth_Date' column to DATE type after ensuring data is properly formatted
ALTER TABLE empreport.employeedata
MODIFY COLUMN Birth_Date DATE;

-- Add an 'Age' column calculated from 'Birth_Date'
ALTER TABLE employeedata ADD COLUMN Age int;

-- Calculate age based on 'Birth_Date' using current date
UPDATE empreport.employeedata
SET Age = TIMESTAMPDIFF(YEAR, Birth_Date, CURDATE());

-- Display birth dates and corresponding ages to verify correctness
SELECT Birth_Date, Age FROM empreport.employeedata;

-- Find the youngest and oldest employees in the dataset
SELECT 
    MIN(Age) AS Youngest_Age,
    MAX(Age) AS Oldest_Age
FROM empreport.employeedata;

-- Select employees over 60 years old to view their first name, age, and birth date
SELECT First_Name, Age, Birth_Date 
FROM empreport.employeedata 
WHERE Age > 60;

-- Re-enable safe updates after maintenance
SET sql_safe_updates = 1;
