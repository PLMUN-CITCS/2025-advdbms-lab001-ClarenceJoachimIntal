-- Step 1: Use the UniversityDB database
USE `UniversityDB`;

-- Step 2: Delete Charlie Lee's record
DELETE FROM `Students`
WHERE `FirstName` = 'Charlie' AND `LastName` = 'Lee';

-- Verify the deletion
SELECT * FROM `Students` WHERE `FirstName` = 'Charlie' AND `LastName` = 'Lee';
