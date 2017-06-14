USE Consorzio
GO

-- a) Inserire almeno tre record per poter effettuare alcuni test sulla base di dati
/*
INSERT INTO Acquirente
VALUES ('Nome1', 'Grossista'), ('Nome2', 'Grande distribuzione'), ('Nome3', 'Grossista');
GO
*/

-- b) Modificare i dati di una certa Azienda e di un corto tipologia di vino
/*
UPDATE AziendaVinicola 
SET Nome = 'Borgo'
WHERE IdAzienda = '5';

UPDATE Bottiglia 
SET TipoVino = 'Leggiadro'
WHERE Nome = 'Astrono';
*/

-- c) Eliminare i dati di un'Azienda e relativa sua produzione
SELECT av.Nome
FROM AziendaVinicola av, Lavorazione l, Bottiglia b 
WHERE av.IdAzienda = l.IdAzienda AND av.IdAzienda = b.IdAzienda
DELETE FROM AziendaVinicola av, Lavorazione l, Bottiglia b 
WHERE IdAzienda = '5';


