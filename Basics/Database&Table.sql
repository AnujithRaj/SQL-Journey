-- GOAL: Understand schema, table, datatype, constranints.

-- Create a database called CompanyDB
CREATE DATABASE CompanyDB;

USE CompanyDB;

-- Create an Employees table and add columns: emp_id, emp_name, salary, department.
CREATE TABLE Employees (
    emp_id INT,
    emp_name VARCHAR(50),
    salary DECIMAL(10,2),
    department VARCHAR(50)
);

-- Check Table 
SELECT * FROM Employees;

-- Add NOT NULL Constraint on emp_id.
ALTER TABLE Employees
ALTER COLUMN emp_id INT NOT NULL;

-- Add PRIMARY KEY on emp_id.
ALTER TABLE Employees
ADD CONSTRAINT PK_Employees PRIMARY KEY (emp_id);

-- Add NOT NULL constraint on emp_name.
ALTER TABLE Employees
ALTER COLUMN emp_name VARCHAR(50) NOT NULL;

-- Add DEFAULT value for department.
ALTER TABLE Employees
ADD CONSTRAINT DF_Employees_Department
DEFAULT 'IT' FOR department;

-- Add CHECK constraint for salary > 0.
ALTER TABLE Employees
ADD CONSTRAINT CK_Employees_Salary
CHECK (salary > 0);

-- Rename a column.
EXEC sp_rename 'Employees.department', 'dept', 'COLUMN';

-- Add a new column after table creation.
ALTER TABLE Employees
ADD city VARCHAR(50);

-- Delete a column.
ALTER TABLE Employees
DROP COLUMN city;

-- Drop a constraint.
ALTER TABLE Employees
DROP CONSTRAINT CK_Employees_Salary;

-- Truncate table.
TRUNCATE TABLE Employees;

-- Delete all record using DELETE.
DELETE FROM Employees;

-- Drop table.
DROP TABLE Employees;