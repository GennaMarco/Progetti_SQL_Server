USE Istat
GO

SELECT c.Denominazione
FROM Comune c
WHERE c.Denominazione LIKE 'cat%'

GO