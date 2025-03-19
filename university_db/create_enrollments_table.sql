-- Use the UniversityDB database
USE `UniversityDB`;

-- Step 2: Create the Enrollments table with foreign keys
CREATE TABLE `Enrollments` (
    `EnrollmentID` INT PRIMARY KEY AUTO_INCREMENT,
    `StudentID` INT,
    `CourseID` INT,
    `EnrollmentDate` DATE,
    CONSTRAINT `fk_student` FOREIGN KEY (`StudentID`) REFERENCES `Students`(`StudentID`) 
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `fk_course` FOREIGN KEY (`CourseID`) REFERENCES `Courses`(`CourseID`)
        ON DELETE CASCADE ON UPDATE CASCADE
);
