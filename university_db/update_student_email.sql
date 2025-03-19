-- Step 1: Use the UniversityDB database
USE `UniversityDB`;

-- Step 2: Update the email for Bob Johnson
UPDATE `Students`
SET `Email` = 'bob.j@example.com'
WHERE `FirstName` = 'Bob' AND `LastName` = 'Johnson';

-- Verify the update
SELECT * FROM `Students` WHERE `FirstName` = 'Bob' AND `LastName` = 'Johnson';
