CREATE DATABASE IF NOT EXISTS CollegeDB;
USE CollegeDB;

DROP TABLE IF EXISTS Student;
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(20) NOT NULL,
    Gender VARCHAR(10),
    DepartmentID INT
);
desc Student;

INSERT INTO Student (StudentID, StudentName, Gender, DepartmentID)
VALUES
(1001, 'Arun', 'Male', 101),
(1002, 'Divya', 'Female', 102),
(1003, 'Karthik', 'Male', 101);
select * from Student;

UPDATE Student
SET DepartmentID = 103
WHERE StudentID = 1003;
  
DELETE from Student
WHERE StudentID = 1002;
select * from Student;
