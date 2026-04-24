-- Select Table Name with Database
SELECT * FROM empreport.employeedata;

-- Select Table Name 
SELECT * FROM empreport.employeedata;

-- Select One Column First Name 
SELECT DISTINCT Gender
FROM empreport.employeedata;


-- Select Multiple Column First Name, Last Name and Birth Date
SELECT First_Name, Last_Name, Birthdate
FROM empreport.employeedata;

-- Select Distinct result Female and Male 
SELECT DISTINCT Gender
FROM empreport.employeedata;


-- -- Select Distinct Location
SELECT DISTINCT Location
from empreport.employeedata;

-- Select Distinct with Count the Location 
SELECT COUNT(DISTINCT Location)
from empreport.employeedata;

