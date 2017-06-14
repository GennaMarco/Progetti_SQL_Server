Use Northwind
GO

-- numero prodotti ordinati
SELECT COUNT(*) as NumeroProdottiOrdinati 
FROM [Order Details] od 


-- quantita di clienti che ha ordinato almeno tre prodotti 
SELECT c.ContactName as dipendente, c.CompanyName, o.OrderID, o.OrderDate 
FROM Customers c, Orders o
Where c.CustomerID = o.CustomerID
AND 
(
 SELECT COUNT(*) 
 FROM [Order Details] od 
 WHERE o.OrderID= od.OrderID
) > 2
