USE empreport;

-- CREATE TABLE 

CREATE TABLE EmployeeData (
	Employee_ID VARCHAR(20),
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Gender VARCHAR(10),
    Birthdate DATE,
    Job_Title  VARCHAR(100),
    Job_Category  VARCHAR(100),
    Salary INT,
    Experience_Level VARCHAR(50),
    Work_Setting VARCHAR(50),
    Location VARCHAR(100),
    Company_Size VARCHAR(1),
    Hire_Date DATE
);


-- INSERT INTO 

INSERT INTO EmployeeData VALUES
('2015A1992', 'LISA', 'RUSSELL', 'Female', '1992-04-20', 'Data Analyst', 'Data Analysis', 95000, 'Entry-level', 'In-person', 'United States', 'M', '2015-11-30');
