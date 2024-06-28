CREATE TABLE Employees (
    ID INT PRIMARY KEY,
    Name VARCHAR UNIQUE,
    Salary DECIMAL
);

ALTER TABLE Employees
	ADD Department VARCHAR(50);

ALTER TABLE Employees
	DROP COLUMN Salary;

EXEC sp_rename 'Department', 'DeptName', 'COLUMN'

CREATE TABLE Projects (
    ProjectID INT,
    ProjectName VARCHAR(255)
);

CREATE TABLE Customers (
    CustomerID INT,
    FirstName VARCHAR,
    LastName VARCHAR,
    Email VARCHAR,
    Status VARCHAR
)

ALTER TABLE Customers
	ADD CONSTRAINT FullName UNIQUE (FirstName, LastName);

CREATE TABLE Orders (
    OrderID INT,
    CustomerID INT,
    OrderDate DATETIME,
    TotalAmount DECIMAL
)

CREATE SCHEMA Sales;

ALTER SCHEMA Sales
	TRANSFER dbo.Orders;

EXEC sp_rename 'Orders', 'SalesOrders'