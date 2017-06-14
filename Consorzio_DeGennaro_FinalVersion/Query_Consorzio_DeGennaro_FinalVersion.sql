USE Consorzio_DeGennaro
GO
-- a) Inserire almeno tre record per poter effettuare alcuni test sulla base di dati
/*
INSERT INTO Cliente
VALUES 
('Mauro', 'Tampasso', 'S.R.L', '0119579255', '343', '3668579885', 'mauro@gmail.com', 'DGNMEGTHUIEY476T', '12345', 1), 
('Paolo', 'Karo', 'S.R.L', '0119579255', '343', '3668579885', 'paolo@gmail.com', 'DGNMEGGFUIEY476T', '122245', 2),
('Riccardo', 'Jolo', 'S.R.L', '0119579255', '343', '3668579885', 'riccardo@gmail.com', 'YGNMEKTHUIEY426T', '1654345', 1);
GO
*/

-- b) Modificare i dati di una certa Azienda e di un corto tipologia di vino
/*
UPDATE AziendaVinicola 
SET NomeAzienda = 'Centauro'
WHERE IdAzienda = '5';

UPDATE Bottiglia 
SET IdTipoVino = 3
WHERE Nome = 'Mountret';
*/

-- c) Eliminare i dati di un'azienda e la relativa sua produzione
/*
DELETE FROM GiornataProduzione WHERE IdAzienda = 6
DELETE FROM AziendaVinicola WHERE IdAzienda = 6
*/

-- d) Visualizzare il numero di bottiglie prodotte da ciascuna azienda vinicola tra due date fornite
SELECT av.NomeAzienda, COUNT(*) AS [Numero Bottiglie Prodotte Tra 1990 e 1993]
FROM AziendaVinicola av, Bottiglia b
WHERE av.IdAzienda = b.IdAzienda 
AND YEAR(b.DataProduzione) BETWEEN 1990 AND 1993
GROUP BY av.NomeAzienda

-- e) Visualizzare la media dei quintali di uva lavorati giornalmente nell'anno corrente dalle aziende vinicole suddivisi per regione
SELECT r.NomeRegione, AVG(gp.QuantitaUvaLavorata) AS [Media giornaliera uva lavorata nel 2017]
FROM AziendaVinicola av, Regione r, GiornataProduzione gp
WHERE r.IdRegione = av.IdRegione AND av.IdAzienda = gp.IdAzienda 
AND YEAR(gp.DataProduzione) = 2017
GROUP BY r.NomeRegione
go

-- f) Visualizzare i dati dell'azienda vinicola che ha venduto il maggior numero di bottiglie di Cabernet di origine controllata di una data annata
/*
CREATE VIEW BottigliePerVinoConSpec
AS
SELECT av.IdAzienda, b.IdBottiglia, SUM(do.QuantitaBottiglie) AS [Quantita bottiglie per azienda]
FROM  
dbo.AziendaVinicola AS av INNER JOIN
dbo.Bottiglia AS b ON av.IdAzienda = b.IdAzienda INNER JOIN
dbo.DettaglioOrdine AS do ON b.IdBottiglia = do.IdBottiglia INNER JOIN
dbo.Regione AS r ON r.IdRegione = av.IdRegione
WHERE b.Nome = 'Cabernet' AND b.OrigineControllata = 'True' AND YEAR(b.DataProduzione) = '1990'
GROUP BY av.IdAzienda, b.IdBottiglia
*/
SELECT av.IdAzienda, av.NomeAzienda, av.NomeTitolare, av.Longitudine, av.Latitudine, av.Indirizzo, av.IdRegione
FROM AziendaVinicola av, BottigliePerVinoConSpec qb
WHERE av.IdAzienda = qb.IdAzienda AND
qb.[Quantita bottiglie per azienda] IN 
(
	SELECT MAX(qb.[Quantita bottiglie per azienda])
	FROM BottigliePerVinoConSpec qb
)

-- g) Visualizzare l’elenco delle aziende vinicole che, in un certo periodo individuato da due date fornite dall’utente, hanno venduto meno di 1000 bottiglie di vino da tavola.
-- 47 si riferisce a 1000(pochi record)
SELECT av.IdAzienda, SUM(do.QuantitaBottiglie) AS [Quantita bottiglie da tavola per azienda tra 1890 e 2017]
FROM  
dbo.AziendaVinicola AS av INNER JOIN
dbo.Bottiglia AS b ON av.IdAzienda = b.IdAzienda INNER JOIN
dbo.DettaglioOrdine AS do ON b.IdBottiglia = do.IdBottiglia INNER JOIN
dbo.Regione AS r ON r.IdRegione = av.IdRegione INNER JOIN
dbo.TipoVino AS tv ON tv.IdTipoVino = b.IdTipoVino  INNER JOIN
dbo.Ordine AS  o ON o.IdOrdine = do.IdOrdine
WHERE tv.TipoVino = 'Tavola' AND  YEAR(o.DataOrdine) BETWEEN 1890 AND 2017
GROUP BY av.IdAzienda
HAVING SUM(do.QuantitaBottiglie) < 47





