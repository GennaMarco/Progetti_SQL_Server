USE Istat
GO

SELECT r.Denominazione, COUNT(*) as 'Numero province'
FROM Regione r, Provincia p
WHERE r.Id = p.IdRegione
GROUP BY r.Denominazione 

GO