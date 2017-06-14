Use Northwind
GO

Create view vw_prodottopiuvenduto
as
SELECT TOP 1 p.ProductName, count(p.ProductID) as piuvenduto
FROM Products p, Orders o, [Order Details] od
WHERE o.OrderID = od.OrderID AND od.ProductID = p.ProductID
group by p.ProductName
order by piuvenduto desc
