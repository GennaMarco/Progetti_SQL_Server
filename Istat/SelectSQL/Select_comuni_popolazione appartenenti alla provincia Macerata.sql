Use Istat
GO

SELECT c.Denominazione as comune, c.Popolazione
FROM Comune c, Provincia p
WHERE c.IdProvincia = p.id AND p.Denominazione = 'macerata'

GO