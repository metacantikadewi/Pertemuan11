CREATE SCHEMA Sales AUTHORIZATION dbo;
GO

CREATE TABLE Sales.Customers (
    custid INT PRIMARY KEY,                
    companyname NVARCHAR(173),            
    contactname NVARCHAR(129),             
    address NVARCHAR(255)                 
);

CREATE TABLE Sales.Orders (
	orderid INT PRIMARY KEY,
	custid INT,
	orderdate DATE,
	FOREIGN KEY (custid) REFERENCES Sales.Customers(custid)
);
GO

INSERT INTO Sales.Customers (custid, companyname, contactname, address)
VALUES 
      
);

INSERT INTO Sales.Orders (orderid, custid, orderdate)
VALUES 

);


SELECT Sales.Customers.custid, 
       Sales.Customers.companyname, 
       Sales.Orders.orderid, 
       Sales.Orders.orderdate
FROM Sales.Customers
INNER JOIN Sales.Orders 
ON Sales.Customers.custid = Sales.Orders.custid;
