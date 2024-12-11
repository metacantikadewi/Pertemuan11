SELECT Sales.Orders.orderid, Sales.Orders.orderdate, Sales.Customers.custid, Sales.Orders.empid
FROM Sales.Orders
WHERE
	orderdate = (SELECT MAX(orderdate) FROM Sales.Orders);