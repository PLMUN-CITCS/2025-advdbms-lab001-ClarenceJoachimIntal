USE `BookstoreDB`;

-- Step 1: Retrieve Customer Orders with Books
SELECT `c`.`Name` AS `CustomerName`, `o`.`OrderDate`, `b`.`Title` AS `BookTitle`, `od`.`Quantity`
FROM `Customers` `c`
JOIN `Orders` `o` ON `c`.`CustomerID` = `o`.`CustomerID`
JOIN `OrderDetails` `od` ON `o`.`OrderID` = `od`.`OrderID`
JOIN `Books` `b` ON `od`.`ISBN` = `b`.`ISBN`;

-- Step 2: Update Book Price
UPDATE `Books` 
SET `Price` = 8.99 
WHERE `ISBN` = '9781234567890';

-- Step 3: Verify Update
SELECT * FROM `Books` WHERE `ISBN` = '9781234567890';

-- Step 4: Delete an Order Detail
DELETE FROM `OrderDetails` 
WHERE `OrderID` = 1 AND `ISBN` = '9780321765723';

-- Step 5: Verify Deletion
SELECT * FROM `OrderDetails` WHERE `OrderID` = 1;

-- Step 6: List Books with Authors
SELECT `a`.`Name` AS `AuthorName`, `b`.`Title` AS `BookTitle`
FROM `Authors` `a`
JOIN `BookAuthors` `ba` ON `a`.`AuthorID` = `ba`.`AuthorID`
JOIN `Books` `b` ON `ba`.`ISBN` = `b`.`ISBN`;

-- Step 7: Find Customers Who Ordered Books by 'Douglas Adams'
SELECT DISTINCT `c`.`Name` AS `CustomerName`
FROM `Customers` `c`
JOIN `Orders` `o` ON `c`.`CustomerID` = `o`.`CustomerID`
JOIN `OrderDetails` `od` ON `o`.`OrderID` = `od`.`OrderID`
JOIN `Books` `b` ON `od`.`ISBN` = `b`.`ISBN`
JOIN `BookAuthors` `ba` ON `b`.`ISBN` = `ba`.`ISBN`
JOIN `Authors` `a` ON `ba`.`AuthorID` = `a`.`AuthorID`
WHERE `a`.`Name` = 'Douglas Adams';
