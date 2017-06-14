USE Istat
GO

SELECT SUM(c.Popolazione) as 'Numero Abitanti del Molise'
FROM Regione r, Provincia p, Comune c
WHERE r.Id = p.IdRegione AND p.Id = c.IdProvincia
AND r.Denominazione = 'Molise'

GO