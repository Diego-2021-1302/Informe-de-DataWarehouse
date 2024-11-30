-- Luego hacemos la insersion de datos en la tabla FactClientesAtendidos

INSERT INTO FactClientesAtendidos (CustomerID, EmployeeID, TotalOrders, LastOrderDate)
SELECT 
    c.CustomerID,
    e.EmployeeID,
    COUNT(o.OrderID) AS TotalOrders,
    MAX(o.OrderDate) AS LastOrderDate
FROM InstNwnd.dbo.Customers c
JOIN InstNwnd.dbo.Orders o ON c.CustomerID = o.CustomerID
JOIN InstNwnd.dbo.Employees e ON o.EmployeeID = e.EmployeeID
GROUP BY c.CustomerID, e.EmployeeID;
GO

