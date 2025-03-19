-- Use the UniversityDB database
USE `UniversityDB`;

-- Step 1: Create the Courses table
CREATE TABLE `Courses` (
    `CourseID` INT PRIMARY KEY AUTO_INCREMENT,
    `CourseName` VARCHAR(100) NOT NULL
);

