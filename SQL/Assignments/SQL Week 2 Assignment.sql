Create Database Assignment

Create Table Customer (
CustomerID Int Primary key Identity(1,1),
Name NVARCHAR(50) NOT NULL,
Emial Nvarchar(50) NOT NULL,
Phone Nvarchar(50) unique NOT NULL,
Address Nvarchar(250),
City Nvarchar(50),
State Nvarchar(50),
ZipCode Nvarchar(10),
Country Nvarchar(50)
);

Create Table [Order](
OrderID INT Primary key Identity(1,1),
CustomerID INT NOT NULL,
OrderDate DateTime Not Null DEFAULT GETDATE(),
TotalAmount Decimal(18, 2) Not NULL,
Status NVARCHAR(50) Check (Status IN ('Pending','Shipped', 'Delivered', 'Cancelled')),
FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

 Select * From [dbo].[Customer]
Insert Into Customer (Name, Emial, Phone, Address, City, State, ZipCode,Country)
Values ('uma', 'uma2@.com', '531-675-680', '34 xyz Street', 'maxi', 'California', '13875', 'USA');

 Select * From [dbo].[Customer]
Select * From[dbo].[Order]
INSERT INTO [Order] (CustomerID, OrderDate, TotalAmount, Status)
VALUES (1, '2024-09-16', 45.67, 'Shipped');


INSERT INTO [Order] (CustomerID, OrderDate, TotalAmount, Status)
VALUES (2, '2024-09-11', 275.50, 'Pending');

INSERT INTO [Order] (CustomerID, OrderDate, TotalAmount, Status)
VALUES (3,'2098-07-24',76.09, 'Delivered');

INSERT INTO [Order] (CustomerID, OrderDate, TotalAmount, Status)
VALUES (4,'2024-08-10',76.09, 'Shipped');

DDL 

Create 

ALTER TABLE [dbo].[Customer] 
ADD DateOfBirth DATE;

DELETE FROM Customer
WHERE CustomerID = 2;

DROP TABLE [dbo].[Customer];

DML

Insert Into Customer (Name, Emial, Phone, Address, City, State, ZipCode,Country)
Values ('uma', 'uma2@.com', '531-675-680', '34 xyz Street', 'maxi', 'California', '13875', 'USA');

UPDATE [dbo].[Customer]
SET Phone = '555-0000', Address = '789 Pine Road'
WHERE CustomerID = 1;

Delete From [dbo].[Order]
Where OrderID = 6;


DQL :

Select * From [dbo].[Customer]

Specific columns
SELECT Name, Emial, City
FROM [dbo].[Customer];

Records with condition
SELECT * FROM [dbo].[Customer]
WHERE State = 'Texas';

Sorting
SELECT * FROM [dbo].[Customer]
ORDER BY Name ASC;

Aggregate 
SELECT COUNT(*) AS Totalamount
FROM [dbo].[Order];



JOINS
INNER JOIN

SELECT c.CustomerID, c.Name, o.OrderID, o.OrderDate, o.TotalAmount, o.Status
FROM [dbo].[Customer] c
INNER JOIN  [dbo].[Order] o ON c.CustomerID = o.CustomerID;


LEFT JOIN 
SELECT c.CustomerID, c.Name, o.OrderID, o.OrderDate, o.TotalAmount, o.Status
FROM [dbo].[Customer] c
LEFT JOIN [dbo].[Order] o ON c.CustomerID = o.CustomerID;

RIGHT JOIN 
SELECT c.CustomerID, c.Name, o.OrderID, o.OrderDate, o.TotalAmount, o.Status
FROM [dbo].[Customer] c
LEFT JOIN [dbo].[Order] o ON c.CustomerID = o.CustomerID;

Full Joins
SELECT c.CustomerID, c.Name,o.OrderID, o.OrderDate, o.TotalAmount, o.Status
FROM [dbo].[Customer] c
LEFT JOIN [dbo].[Order] o ON c.CustomerID = o.CustomerID;

CROSS JOIN 
SELECT c.CustomerID, c.Name, o.OrderID, o.OrderDate, o.TotalAmount, o.Status
FROM [dbo].[Customer] c
CROSS JOIN [dbo].[Order] o;








