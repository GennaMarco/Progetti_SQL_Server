use Istat
go
insert into Regione(codiceregione, idRipartizioneGeografica, Denominazione)
Select distinct [codice regione] as codiceregione, 
[codice ripartizione] as idRipartizioneGeografica,
[Denominazione regione] as Denominazione
FROM COD_REG_PROV$ 
where [codice regione] is not null 