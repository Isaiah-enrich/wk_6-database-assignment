-- create a database
CREATE DATABASE companyDB;
USE companyDB;
-- create table (employees)
CREATE TABLE employees (
    employeeNumber INT PRIMARY KEY AUTO_INCREMENT,
    firstName VARCHAR(50),
    lastName VARCHAR(50),
    email VARCHAR(100),
    officeCode INT
);

-- create table (offices)
CREATE TABLE offices (
    officeCode INT PRIMARY KEY,
    city VARCHAR(50),
    phone VARCHAR(50)
);

-- create table (products)
CREATE TABLE products (
    productCode INT PRIMARY KEY AUTO_INCREMENT,
    productName VARCHAR(100),
    productVendor VARCHAR(100),
    productLine VARCHAR(50)
);

-- create table (productlines)
CREATE TABLE productlines (
    productLine VARCHAR(50) PRIMARY KEY,
    textDescription VARCHAR(255)
);

-- create table (customers)
CREATE TABLE customers (
    customerNumber INT PRIMARY KEY,
    customerName VARCHAR(100)
);

-- create table (orders)
CREATE TABLE orders (
    orderNumber INT PRIMARY KEY AUTO_INCREMENT,
    orderDate DATE,
    shippedDate DATE,
    status VARCHAR(50),
    customerNumber INT
);

-- insert values in offices, employees, productlines, products, customers, orders
INSERT INTO offices VALUES
(1, 'Nairobi', '0712345678'),
(2, 'Mombasa', '0722334455');

INSERT INTO employees (firstName, lastName, email, officeCode) VALUES
('Isaiah', 'Mogeni', 'isaiahmogeni.com', 1),
('John', 'Skil', 'john@example.com', 2);

INSERT INTO customers VALUES
(101, 'Alpha Ltd'),
(102, 'Beta Traders');

INSERT INTO orders (orderDate, shippedDate, status, customerNumber) VALUES
('2025-09-01', '2025-09-03', 'Shipped', 101),
('2025-09-02', '2025-09-05', 'Pending', 102);

-- create quaries for each

SELECT e.firstName, e.lastName, e.email, o.officeCode
FROM employees e
INNER JOIN offices o
    ON e.officeCode = o.officeCode;
    
    SELECT p.productName, p.productVendor, pl.productLine
FROM products p
LEFT JOIN productlines pl
    ON p.productLine = pl.productLine;

SELECT o.orderDate, o.shippedDate, o.status, c.customerNumber
FROM customers c
RIGHT JOIN orders o
    ON c.customerNumber = o.customerNumber
LIMIT 10;







