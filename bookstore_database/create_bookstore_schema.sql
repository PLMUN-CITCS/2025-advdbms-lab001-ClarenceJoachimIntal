-- Step 1: Create Database
CREATE DATABASE IF NOT EXISTS `BookstoreDB`;
USE `BookstoreDB`;

-- Step 2: Create Books Table
CREATE TABLE `Books` (
   `ISBN` VARCHAR(20) PRIMARY KEY,
   `Title` VARCHAR(255) NOT NULL,
   `Price` DECIMAL(10,2) NOT NULL
);

-- Step 3: Create Authors Table
CREATE TABLE `Authors` (
   `AuthorID` INT AUTO_INCREMENT PRIMARY KEY,
   `Name` VARCHAR(255) NOT NULL
);

-- Step 4: Create BookAuthors (Many-to-Many Relationship)
CREATE TABLE `BookAuthors` (
   `ISBN` VARCHAR(20),
   `AuthorID` INT,
   PRIMARY KEY (`ISBN`, `AuthorID`),
   FOREIGN KEY (`ISBN`) REFERENCES `Books`(`ISBN`) ON DELETE CASCADE ON UPDATE CASCADE,
   FOREIGN KEY (`AuthorID`) REFERENCES `Authors`(`AuthorID`) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Step 5: Create Customers Table
CREATE TABLE `Customers` (
   `CustomerID` INT AUTO_INCREMENT PRIMARY KEY,
   `Name` VARCHAR(255) NOT NULL,
   `Email` VARCHAR(255) NOT NULL UNIQUE
);

-- Step 6: Create Orders Table
CREATE TABLE `Orders` (
   `OrderID` INT AUTO_INCREMENT PRIMARY KEY,
   `CustomerID` INT,
   `OrderDate` DATE NOT NULL,
   FOREIGN KEY (`CustomerID`) REFERENCES `Customers`(`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Step 7: Create OrderDetails Table (Many-to-Many Relationship)
CREATE TABLE `OrderDetails` (
   `OrderID` INT,
   `ISBN` VARCHAR(20),
   `Quantity` INT NOT NULL,
   PRIMARY KEY (`OrderID`, `ISBN`),
   FOREIGN KEY (`OrderID`) REFERENCES `Orders`(`OrderID`) ON DELETE CASCADE ON UPDATE CASCADE,
   FOREIGN KEY (`ISBN`) REFERENCES `Books`(`ISBN`) ON DELETE CASCADE ON UPDATE CASCADE
);
