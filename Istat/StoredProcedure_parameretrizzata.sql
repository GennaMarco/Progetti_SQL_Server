USE Istat
GO

-- StoredProcedure parametrizzata, come se fosse una funzione
/*
CREATE PROCEDURE sp_get_regioni_per_ripartizione
@ripartizione varchar(50)
AS
SELECT r.Denominazione as Regione 
FROM RipartizioneGeografica rg INNER JOIN Regione r 
ON rg.Id = r.IdRipartizioneGeografica
WHERE rg.Denominazione = @ripartizione
*/

-- SP elenco delle province appartenenti ad una certa regione
/*
CREATE PROCEDURE sp_get_province_per_regione
@regione varchar(50)
AS
SELECT p.Denominazione as Provincia
FROM Regione r, Provincia p
WHERE r.Id = p.IdRegione
AND r.Denominazione = @regione
*/

-- SP contare i comuni appartenenti ad una certa regione
/*
CREATE PROCEDURE sp_numero_comuni_per_regione
@regione varchar(50),
@numero int output
AS
SELECT @numero = COUNT(*)
FROM Regione r, Provincia p, Comune c
WHERE r.Id = p.IdRegione AND p.Id = c.IdProvincia
AND r.Denominazione = @regione
*/

-- SP caricamento di una nuova ripartizione geografica
/*
CREATE PROCEDURE sp_add_ripartizione
@ripartizione varchar(50)
AS
INSERT INTO RipartizioneGeografica
VALUES (@ripartizione)
*/

-- SP aggiornamento di una ripartizione
/*
CREATE PROCEDURE sp_update_ripartizione
@id_ripartizione int,
@ripartizione varchar(50)
AS 
UPDATE RipartizioneGeografica
SET Denominazione = @ripartizione
WHERE Id = @id_ripartizione
*/


-- SP eliminazione di una ripartizione
/*
CREATE PROCEDURE sp_delete_ripartizione
@id_ripartizione int
AS 
DELETE FROM RipartizioneGeografica
WHERE Id = @id_ripartizione
*/

