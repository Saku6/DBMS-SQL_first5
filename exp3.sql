-- SQL CREATE TABLE syntax
CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    column3 datatype,
    ....
);

-- Example
CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);

-- SQL INSERT INTO Statement
-- 1. Specify both column names and values
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);

-- 2. Add values for all columns (order matters!)
INSERT INTO table_name
VALUES (value1, value2, value3, ...);

-- Example
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');

-- Insert data only in specified columns
INSERT INTO Customers (CustomerName, City, Country)
VALUES ('Cardinal', 'Stavanger', 'Norway');

-- The SQL SELECT Statement
-- Select specific columns
SELECT column1, column2, ...
FROM table_name;

-- Select all columns
SELECT * FROM table_name;

-- SQL SELECT DISTINCT Statement
-- Select distinct values from a column
SELECT DISTINCT column1, column2, ...
FROM table_name;

-- Examples
SELECT Country FROM Customers; -- All values, including duplicates
SELECT DISTINCT Country FROM Customers; -- Only unique countries
SELECT COUNT(DISTINCT Country) FROM Customers; -- Count of unique countries
SELECT Count(*) AS DistinctCountries FROM (SELECT DISTINCT Country FROM Customers); -- Another way to count

-- SQL WHERE Clause
SELECT column1, column2, ...
FROM table_name
WHERE condition;

-- Examples
SELECT * FROM Customers WHERE Country='Mexico';
SELECT * FROM Customers WHERE CustomerID=1;

-- SQL AND, OR and NOT Operators
-- AND: All conditions must be true
SELECT column1, column2, ...
FROM table_name
WHERE condition1 AND condition2 AND condition3 ...;

-- OR: At least one condition must be true
SELECT column1, column2, ...
FROM table_name
WHERE condition1 OR condition2 OR condition3 ...;

-- NOT: The condition must be false
SELECT column1, column2, ...
FROM table_name
WHERE NOT condition;

-- Combining AND, OR and NOT
SELECT * FROM Customers
WHERE Country='Germany' AND (City='Berlin' OR City='München');

SELECT * FROM Customers
WHERE NOT Country='Germany' AND NOT Country='USA';

-- SQL UPDATE Statement
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;

-- Examples
UPDATE Customers
SET ContactName = 'Alfred Schmidt', City= 'Frankfurt'
WHERE CustomerID = 1;

UPDATE Customers
SET ContactName='Juan'
WHERE Country='Mexico';

-- Update all records (use with caution!)
UPDATE Customers
SET ContactName='Juan';

-- SQL DELETE Statement
DELETE FROM table_name WHERE condition;

-- Example
DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';

-- Delete all records (use with extreme caution!)
DELETE FROM Customers;