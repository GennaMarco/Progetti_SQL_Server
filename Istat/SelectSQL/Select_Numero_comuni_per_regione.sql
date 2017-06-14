USE Istat
GO

SELECT r.Denominazione, COUNT(*) as 'Numero comuni'
FROM Regione r, Provincia p, Comune c
WHERE r.Id = p.IdRegione AND p.Id = c.IdProvincia
GROUP BY r.Denominazione 

GO