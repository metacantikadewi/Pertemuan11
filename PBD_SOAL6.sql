SELECT HR.Employees.empid, HR.Employees.FirstName, HR.Employees.LastName
FROM HR.Employees
LEFT JOIN Sales.Orders
ON HR.Employees.empid =	Sales.Orders.empid
WHERE Sales.OrderDate < '2016-05-01' 
OR Sales.OrderDate IS NULL;
