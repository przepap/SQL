select *
from HumanResources.Dzieciaczki;

begin tran

insert into HumanResources.Dzieciaczki
(id, imie, nazwisko, wiek, data_urodzenia)
values (6,'Darek', 'Wedel', 8, '20110412');

update HumanResources.Dzieciaczki
	set nazwisko = 'Sa³ata'
	where id=3;

begin tran

insert into HumanResources.Dzieciaczki
(id, imie, nazwisko, wiek, data_urodzenia)
values (6,'Darek', 'Wedel', 8, '20110412');

save tran a;

update HumanResources.Dzieciaczki
	set nazwisko = 'Sa³ata'
	where id=3;

rollback tran a;

rollback tran;

commit tran;


