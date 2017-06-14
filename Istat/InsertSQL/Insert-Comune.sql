USE Istat
GO
INSERT INTO Comune(IdProvincia, Denominazione, CodiceIstat, Capoluogo, Popolazione, Superfice)
SELECT [Codice Provincia] AS IdProvincia,
[Denominazione (italiano/tedesco)] AS Denominazione,
[Codice Istat del Comune _(formato alfanumerico)] AS CodiceIstat,
[Comune capoluogo di provincia] AS Capoluogo,
[Popolazione residente al 31/12/2010] AS Popolazione,
[Superficie territoriale totale (kmq)] AS Superfice  
FROM [COMUNI 01_01_2012$]
WHERE [Codice Provincia] is not null