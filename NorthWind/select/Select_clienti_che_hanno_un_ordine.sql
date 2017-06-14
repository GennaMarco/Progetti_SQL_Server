Use Northwind
GO

SELECT c.ContactName, c.CompanyName, o.OrderID, o.OrderDate 
FROM Customers c, Orders o
Where c.CustomerID = o.CustomerID
