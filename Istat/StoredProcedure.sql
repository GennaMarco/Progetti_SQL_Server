USE Istat
GO

-- ProgrammabilitÓ -> stored procedure : prefisso sp_
CREATE PROCEDURE sp_get_ripartizioni_geografiche
AS
SELECT *
FROM RipartizioneGeografica