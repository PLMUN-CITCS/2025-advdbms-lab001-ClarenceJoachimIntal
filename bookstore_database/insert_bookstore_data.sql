USE `BookstoreDB`;

-- Step 1: Insert Books
INSERT INTO `Books` (`ISBN`, `Title`, `Price`) VALUES
('9781234567890', 'The Hitchhiker''s Guide to the Galaxy', 7.99),
('9780321765723', 'The Lord of the Rings', 12.99),
('9780743273565', 'Pride and Prejudice', 9.99);

-- Step 2: Insert Authors
INSERT INTO `Authors` (`Name`) VALUES
('Douglas Adams'),
('J.R.R. Tolkien'),
('Jane Austen');

-- Step 3: Insert BookAuthors (Many-to-Many Relationship)
INSERT INTO `BookAuthors` (`ISBN`, `AuthorID`) VALUES
('9781234567890', 1),
('9780321765723', 2),
('9780743273565', 3);

-- Step 4: Insert Customers
INSERT INTO `Customers` (`Name`, `Email`) VALUES
('John Doe', 'john.doe@example.com'),
('Jane Smith', 'jane.smith@example.com'),
('David Lee', 'david.lee@example.com');

-- Step 5: Insert Orders
INSERT INTO `Orders` (`CustomerID`, `OrderDate`) VALUES
(1, '2024-07-26'),
(2, '2024-07-27'),
(3, '2024-07-28');

-- Step 6: Insert OrderDetails
INSERT INTO `OrderDetails` (`OrderID`, `ISBN`, `Quantity`) VALUES
(1, '9781234567890', 1),
(1, '9780321765723', 2),
(2, '9780743273565', 1);
