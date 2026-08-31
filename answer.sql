CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    Gender VARCHAR(10),
    DepartmentID INT
);

INSERT INTO Student (StudentID, StudentName, Gender, DepartmentID)
VALUES
(1001, 'Arun', 'Male', 101),
(1002, 'Divya', 'Female', 102),
(1003, 'Karthik', 'Male', 101);

SELECT * FROM Student;

UPDATE Student
SET DepartmentID = 103
WHERE StudentName = 'Karthik';

DELETE FROM Student
WHERE StudentID = 1002;

SELECT * FROM Student;
