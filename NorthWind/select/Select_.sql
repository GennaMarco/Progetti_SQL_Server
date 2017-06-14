Use Northwind
GO

SELECT [Order Details].OrderID, sum(([Order Details].UnitPrice * [Order Details].Quantity) - (([Order Details].UnitPrice * [Order Details].Quantity) * [Order Details].Discount))  AS Totale
FROM [Order Details] INNER JOIN
Products ON [Order Details].ProductID = Products.ProductID
group by [Order Details].OrderID


