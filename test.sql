USE CollegeDB;

SELECT
    CASE
        WHEN EXISTS (
            SELECT 1
            FROM Student
            WHERE StudentID = 1001
              AND StudentName = 'Arun'
              AND Gender = 'Male'
              AND DepartmentID = 101
        )
        THEN 'PASS'
        ELSE 'FAIL'
    END AS Arun_Test;

SELECT
    CASE
        WHEN EXISTS (
            SELECT 1
            FROM Student
            WHERE StudentID = 1003
              AND StudentName = 'Karthik'
              AND Gender = 'Male'
              AND DepartmentID = 103
        )
        THEN 'PASS'
        ELSE 'FAIL'
    END AS Karthik_Test;

SELECT
    CASE
        WHEN NOT EXISTS (
            SELECT 1
            FROM Student
            WHERE StudentID = 1002
        )
        THEN 'PASS'
        ELSE 'FAIL'
    END AS Divya_Delete_Test;

SELECT
    CASE
        WHEN (SELECT COUNT(*) FROM Student) = 2
        THEN 'PASS'
        ELSE 'FAIL'
    END AS Total_Student_Test;
