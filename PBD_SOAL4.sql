SELECT
	Sales.Customers.custid,
	Sales.Customers.companyname,
	Sales.Orders.orderid,
	Sales.Orders.orderdate
FROM Sales.Customers AS
LEFT JOIN 
ON Sales.Customers.custid = Sales.Orders.custid;