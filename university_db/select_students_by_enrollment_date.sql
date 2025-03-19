-- Use the UniversityDB database
USE `UniversityDB`;

-- Step 4: Select students enrolled on '2023-09-01'
SELECT `FirstName`, `LastName`
FROM `Students`
WHERE `StudentID` IN (
    SELECT `StudentID` FROM `Enrollments` WHERE `EnrollmentDate` = '2023-09-01'
);
