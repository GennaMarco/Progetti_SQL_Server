Use Istat
GO

SELECT COUNT(*) AS 'Numero comuni provincia di Cuneo'
FROM Provincia p, Comune c
WHERE p.Id = c.IdProvincia
AND p.Denominazione = 'Cuneo'
GO