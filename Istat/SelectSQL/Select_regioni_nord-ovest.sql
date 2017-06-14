USE Istat
GO

SELECT r.Denominazione 
FROM Regione r INNER JOIN RipartizioneGeografica rg
ON r.IdRipartizioneGeografica = rg.Id 
WHERE rg.Denominazione = 'nord-ovest'
GO