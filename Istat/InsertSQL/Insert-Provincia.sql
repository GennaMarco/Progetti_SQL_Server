use Istat
go

insert into provincia(codiceprovincia, idregione, Denominazione, sigla)
select distinct [codice provincia] as codiceprovincia,
[codice regione] as idregione,
[Denominazione provincia] as Denominazione, 
[sigla automobilistica] as sigla 
from cod_reg_prov$
where [codice regione] is not null