USE [Istat]
GO
/****** Object:  StoredProcedure [dbo].[sp_get_regioni_per_idripartizione]    Script Date: 14/06/2017 15:13:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[sp_get_regioni_per_idripartizione]
@idripartizione int
AS
BEGIN
IF @idripartizione != 0
	SELECT rg.Denominazione as Ripartizione, r.Denominazione as Regione 
	FROM RipartizioneGeografica rg INNER JOIN Regione r 
	ON rg.Id = r.IdRipartizioneGeografica
	WHERE r.IdRipartizioneGeografica = @idripartizione
ELSE
	EXEC sp_get_regioni
END
  