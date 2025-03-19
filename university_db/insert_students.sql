-- Step 1: Use the UniversityDB database
USE `UniversityDB`;

-- Step 2: Insert student records into the Students table
INSERT INTO `Students` (`FirstName`, `LastName`, `EnrollmentDate`, `Email`)  
VALUES
('Alice', 'Smith', '2023-09-01', 'alice.smith@example.com'),
('Bob', 'Johnson', '2023-09-01', 'bob.johnson@example.com'),
('Charlie', 'Lee', '2023-09-01', 'charlie.lee@example.com');



-- Verify the inserted records
SELECT * FROM `Students`;


