INSERT INTO FactOrders (OrderID, CustomerID, EmployeeID, OrderDate, ShipperID)
SELECT 
    o.OrderID,
    o.CustomerID,
    o.EmployeeID,
    o.OrderDate,
    o.ShipVia
FROM InstNwnd.dbo.Orders o;
GO
