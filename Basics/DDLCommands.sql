-- Create a database School.
CREATE DATABASE School;

USE School;

-- Create a table name Students.
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL,
    age INT CHECK (age > 0),
    course VARCHAR(50) NOT NULL,
    marks DECIMAL(5,2) CHECK (marks >= 0 AND marks <= 100)
    
);

-- Add a new column Email.
ALTER TABLE Students
ADD Email VARCHAR(100);

-- Modify a column datatype.
ALTER TABLE Students
ALTER COLUMN Email VARCHAR(150);

-- Rename a column.
EXEC sp_rename 'Students.Email', 'email', 'COLUMN';

-- Rename a table.
EXEC sp_rename 'Students', 'Student';

-- Truncate the table.
TRUNCATE TABLE Student;

-- Drop the table.
DROP TABLE Student;

-- Drop the database.
DROP DATABASE School;
