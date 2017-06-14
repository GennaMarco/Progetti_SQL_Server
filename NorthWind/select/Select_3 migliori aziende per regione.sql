Use Northwind
GO


SELECT c.CompanyName, sum((od.UnitPrice * od.Quantity) - ((od.UnitPrice * od.Quantity) * od.Discount))  AS Totale, c.Country
FROM Customers c, Orders o, [Order Details] od
WHERE c.CustomerID = o.CustomerID AND od.OrderID = o.OrderID
GROUP BY c.CompanyName, c.Country


SELECT  p.CompanyName, p.Totale, p.Country
FROM prova p
GROUP BY p.Country, p.Totale, p.CompanyName
ORDER BY p.Country, p.Totale DESC








