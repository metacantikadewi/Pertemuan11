SELECT Sales.Customers.custid,
        COUNT(Sales.Orders.orderid) AS numorders,
        SUM(Sales.OrderDetails.qty) AS totalqyt
FROM Sales.Customers c 
INNER JOIN Sales.Orders ON Sales.Customers.custid = Sales.Orders.custid
INNER JOIN Sales.OrderDetails ON Sales.Orders.orderid = Sales.OrderDetails.orderid
WHERE Sales.Customers.country = 'USA'
GROUP BY Sales.Customers.custid
ORDER BY Sales.Customers.custid;