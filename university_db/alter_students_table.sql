-- Use the UniversityDB database
USE `UniversityDB`;

-- Step 2: Alter the Students table to add an Email column
ALTER TABLE `Students`  
ADD COLUMN `Email` VARCHAR(100);



-- Verification (Optional)
DESCRIBE `Students`;  -- Show table structure to confirm new column
