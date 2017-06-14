USE Istat
GO

-- dichiarazione di una variabile
DECLARE @regione varchar(50)
DECLARE @numero int

-- inizializzare la variabile, esso rappresenta un parametro
SET @regione = 'Piemonte'

-- contare le province del Piemonte
SELECT @numero = COUNT(*)
FROM provincia p INNER JOIN Regione r ON P.IdRegione = R.Id
WHERE r.Denominazione = @regione

-- stampa la variabile(con concatenazione)
PRINT 'Regione: ' + @regione

-- funzione nativa di SQL Server --> CONVERT(,)
PRINT 'Numero province del Piemonte: ' + CONVERT(varchar(50), @numero)



-- elenco comuni di una provincia dell'emilia-romagna(Modena)
DECLARE @provincia varchar(50)
SET @provincia = 'Modena'

SELECT c.Denominazione
FROM Comune c, Provincia p
WHERE c.IdProvincia = p.Id
AND p.Denominazione = @provincia

SELECT @numero = COUNT(*)
FROM Comune c, Provincia p
WHERE c.IdProvincia = p.Id
AND p.Denominazione = @provincia

-- regione della provincia
SELECT @regione = r.denominazione
FROM Regione r INNER JOIN Provincia p
ON p.IdRegione = r.Id
WHERE p.Denominazione = @provincia

PRINT 'Numero comuni della provincia di '+ @provincia + ': ' + CONVERT(varchar(50), @numero)
PRINT 'Regione della provincia ' + @provincia + ': ' + @regione 


-- quantita di comuni appertenti ad una certa ripartizione geografica(Centro)
DECLARE @ripartizione varchar(50)
SET @ripartizione = 'Centro'

SELECT @numero = COUNT(*)
FROM Comune c, Provincia p, Regione r, RipartizioneGeografica rp
WHERE rp.Id = r.IdRipartizioneGeografica AND r.Id = p.IdRegione AND p.Id = c.IdProvincia
AND rp.Denominazione = @ripartizione

PRINT 'Numero Comuni del ' + @ripartizione + ': ' + CONVERT(varchar(50), @numero)