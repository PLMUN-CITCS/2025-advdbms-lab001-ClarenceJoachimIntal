-- Use the UniversityDB database
USE `UniversityDB`;

-- Step 2: Insert data into the Enrollments table
INSERT INTO `Enrollments` (`StudentID`, `CourseID`, `EnrollmentDate`)
VALUES
   (1, 1, '2023-09-01'),
   (2, 2, '2023-09-01'),
   (3, 3, '2023-09-01'),
   (2, 4, '2023-09-02'),
   (2, 5, '2023-09-03');
