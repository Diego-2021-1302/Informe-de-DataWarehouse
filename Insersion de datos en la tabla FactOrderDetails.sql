-- Por ultimo hacemos la insersion de datos en la tabla FactOrderDetails

INSERT INTO FactOrderDetails (OrderID, ProductID, UnitPrice, Quantity, Discount)
SELECT 
    od.OrderID,
    od.ProductID,
    od.UnitPrice,
    od.Quantity,
    od.Discount
FROM InstNwnd.dbo.[Order Details] od;
GO

