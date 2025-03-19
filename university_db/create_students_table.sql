-- Use the UniversityDB database
USE `UniversityDB`;

-- Create the Students table with constraints
DROP TABLE IF EXISTS `Students`;
CREATE TABLE IF NOT EXISTS `Students` (
   `StudentID` INT PRIMARY KEY AUTO_INCREMENT,  -- Auto-increment primary key
   `FirstName` VARCHAR(50) NOT NULL,  -- First name (required)
   `LastName` VARCHAR(50) NOT NULL,   -- Last name (required)
   `EnrollmentDate` DATE              -- Date of enrollment (optional)
);

-- Verification
SHOW TABLES;  -- List all tables to confirm creation
