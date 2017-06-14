USE Istat
GO

SELECT c.Denominazione as Comune, c.Popolazione
FROM Comune c
WHERE c.Popolazione >= 10000 AND c.Popolazione<=15000
--WHERE c.Popolazione BEETWEN 10000 AND 15000
GO