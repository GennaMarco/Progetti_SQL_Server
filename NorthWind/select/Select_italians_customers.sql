Use Northwind
GO

SELECT c.ContactName as Customers FROM Customers c
WHERE c.Country = 'Italy'