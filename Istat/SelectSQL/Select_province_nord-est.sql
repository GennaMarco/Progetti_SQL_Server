Use Istat
GO

SELECT p.Denominazione +'(' + p.Sigla + ')' as Provincia 
FROM Regione r INNER JOIN RipartizioneGeografica rg
ON r.IdRipartizioneGeografica = rg.Id INNER JOIN Provincia p
ON p.IdRegione = r.Id
WHERE rg.Denominazione = 'nord-est'

GO