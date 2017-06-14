use Istat
go
insert into RipartizioneGeografica(id, denominazione)
Select distinct [codice ripartizione] as id, [Ripartizione geografica] as Denominazione 
FROM COD_REG_PROV$ 
where [Ripartizione geografica] is not null 