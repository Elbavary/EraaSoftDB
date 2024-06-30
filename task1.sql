CREATE DATABASE Assignment
CREATE TABLE Employees (
    ID INT PRIMARY KEY,
    Name VARCHAR UNIQUE,
    Salary DECIMAL
);

ALTER TABLE Employees
	ADD Department VARCHAR(50);

ALTER TABLE Employees
	DROP COLUMN Salary;

EXEC sp_rename 'Employees.Department', 'Employees.DeptName', 'COLUMN'

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
	ADD FullName AS (FirstName + '' + LastName) UNIQUE;

CREATE TABLE Orders (
    OrderID INT,
    CustomerID INT,
    OrderDate DATETIME,
    TotalAmount DECIMAL
)

CREATE SCHEMA Sales;

ALTER SCHEMA Sales
	TRANSFER dbo.Orders;

EXEC sp_rename 'Sales.Orders', 'Sales.SalesOrders'
