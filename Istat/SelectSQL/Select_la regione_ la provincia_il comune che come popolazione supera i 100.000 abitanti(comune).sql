Use Istat
GO

SELECT TOP 10 r.Denominazione as Regione, p.Denominazione as Provincia, c.Denominazione as Comune, c.Popolazione as Popolazione
FROM Regione r, Provincia p, Comune c
WHERE r.Id = p.IdRegione AND c.IdProvincia = p.Id
AND c.Popolazione >= 100000
ORDER BY c.Popolazione desc
GO