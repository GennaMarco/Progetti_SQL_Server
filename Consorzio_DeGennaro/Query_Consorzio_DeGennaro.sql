USE Consorzio_DeGennaro
GO

-- a) Inserire almeno tre record per poter effettuare alcuni test sulla base di dati
/*
INSERT INTO Acquirente
VALUES ('Nome1', 'Grossista'), ('Nome2', 'GD'), ('Nome3', 'Grossista');
GO
*/

-- b) Modificare i dati di una certa Azienda e di un corto tipologia di vino
/*
UPDATE AziendaVinicola 
SET NomeAzienda = 'BorgoMolinese'
WHERE IdAzienda = '5';

UPDATE Bottiglia 
SET TipoVino = 'Tavola'
WHERE NomeVino = 'Mountret';
*/

-- c) Eliminare i dati di un'azienda e la relativa sua produzione
/*
DELETE FROM AziendeProduzioni WHERE IdAzienda = 6
DELETE FROM AziendaVinicola WHERE IdAzienda = 6
*/

-- d) Visualizzare il numero di bottiglie prodotte da ciascuna azienda vinicola tra due date fornite
SELECT av.NomeAzienda, COUNT(*) AS [Numero Bottiglie Prodotte Tra 1990 e 1993]
FROM AziendaVinicola av, CassaBottiglie cb, Bottiglia b
WHERE av.IdAzienda = cb.IdAzienda AND cb.IdCassa = b.IdCassa
AND YEAR(b.DataProduzione) BETWEEN 1990 AND 1993
GROUP BY av.NomeAzienda

-- e) Visualizzare la media dei quintali di uva lavorati giornalmente nell'anno corrente dalle aziende vinicole suddivisi per regione
SELECT r.NomeRegione, AVG(ap.QuantitaUvaLavorata_KG) AS [Media giornaliera uva lavorata nel 2017]
FROM AziendaVinicola av, Regione r, AziendeProduzioni ap, GiornataProduzione gp
WHERE r.IdRegione = av.IdRegione AND av.IdAzienda = ap.IdAzienda AND ap.IdProduzione = gp.IdProduzione 
AND YEAR(gp.DataProduzione) = 2017
GROUP BY r.NomeRegione

-- f) Visualizzare i dati dell'azienda vinicola che ha venduto il maggior numero di bottiglie di Cabernet di origine controllata di una data annata
SELECT TOP 1 av.IdAzienda, av.NomeAzienda, av.Indirizzo, COUNT(*) AS [Numero bottiglie Chardonet vendute di origine controllata del 1990]
FROM dbo.AziendaVinicola av INNER JOIN
dbo.CassaBottiglie cb ON av.IdAzienda = cb.IdAzienda INNER JOIN
dbo.Bottiglia b ON cb.IdCassa = b.IdCassa
WHERE (b.NomeVino LIKE 'Chardonet%') AND (b.OrigineControllata = 'True') AND (YEAR(b.DataProduzione) = 1990)
GROUP BY av.IdAzienda, av.NomeAzienda, av.Indirizzo
ORDER BY [Numero bottiglie Chardonet vendute di origine controllata del 1990] DESC

-- g) Visualizzare l'elenco delle aziende vinicole che, in un certo periodo individuato da due date fornite dall'utente, hanno venduto	meno di 1000 bottiglie di vino da tavola
-- NOTABENE: per verificare la correttezza della query, ho sostituito 1000 con 5 
SELECT av.NomeAzienda as [Aziende che hanno venduto meno di 5 bottiglie], COUNT(*) AS [Numero bottiglie di vino da tavola vendute tra il 2014 e 2015]
FROM AziendaVinicola av, CassaBottiglie cb, Bottiglia b
WHERE av.IdAzienda = cb.IdAzienda AND cb.IdCassa = b.IdCassa AND b.TipoVino = 'Tavola'
AND (YEAR(cb.DataVendita) BETWEEN 2014 AND 2015)
GROUP BY av.NomeAzienda
HAVING COUNT(*) < 5


 