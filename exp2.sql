SQL CREATE TABLE

Syntax:
CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    column3 datatype,
    ....
);

Example:
CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)   

);

SQL INSERT INTO STATEMENT

Specify column names and values:
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);

Omit column names (values must match column order):
INSERT INTO table_name
VALUES (value1, value2, value3, ...);

INSERT INTO Examples:
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');   


INSERT INTO Customers (CustomerName, City, Country)
VALUES ('Cardinal', 'Stavanger', 'Norway');   


SQL SELECT Statement

Syntax:
SELECT column1, column2, ...
FROM table_name;
or
SELECT * FROM table_name; 

SELECT Column Example:
SELECT CustomerName, City FROM Customers;

SQL SELECT DISTINCT Statement

Syntax:
SELECT DISTINCT column1, column2, ...
FROM table_name;

SELECT DISTINCT Examples:
SELECT Country FROM Customers; 
SELECT DISTINCT Country FROM Customers;
SELECT COUNT(DISTINCT Country) FROM Customers;
SELECT Count(*) AS DistinctCountries
FROM (SELECT DISTINCT Country FROM Customers);   


SQL WHERE Clause

Syntax:
SELECT column1, column2, ...
FROM table_name
WHERE condition;

WHERE Clause Examples:
Using =
Using CustomerID = 1

Operators in the WHERE clause: =, >, <, >=, <=, <>, BETWEEN, LIKE, IN

SQL AND, OR and NOT Operators

AND Syntax:
SELECT column1, column2, ...
FROM table_name
WHERE condition1 AND condition2 AND condition3 ...;

OR Syntax:
SELECT   
 column1, column2, ...
FROM table_name
WHERE condition1 OR condition2 OR condition3 ...;

NOT Syntax:
SELECT column1, column2, ...
FROM table_name
WHERE NOT condition;   


AND, OR, and NOT Examples:
Combining AND and OR
Combining NOT operators

SQL UPDATE Statement

Syntax:
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;

UPDATE Examples:
Updating a single record
Updating multiple records
Warning about omitting the WHERE clause

SQL DELETE Statement

Syntax:
DELETE FROM table_name WHERE condition;

SQL DELETE Example:
Deleting a specific record

Deleting all records:
DELETE FROM table_name;