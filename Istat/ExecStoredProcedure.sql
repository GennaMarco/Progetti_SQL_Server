USE Istat
GO

EXEC sp_get_regioni_per_ripartizione @ripartizione = 'Nord-ovest'
GO

EXEC sp_get_province_per_regione @regione = 'Sicilia'
GO

DECLARE @numero_comuni int

EXEC sp_numero_comuni_per_regione @regione = 'Piemonte', @numero = @numero_comuni out
PRINT @numero_comuni
GO

/*
EXEC sp_add_ripartizione @ripartizione = 'Colonie'
GO
*/

/*
EXEC sp_update_ripartizione @id_ripartizione = 7, @ripartizione = 'Modified'
GO
*/


EXEC sp_delete_ripartizione @id_ripartizione = 13
GO
