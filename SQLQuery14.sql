select *
from HumanResources.Dzieciaczki;

insert into HumanResources.Dzieciaczki 
values (3, 'Wiesiek', 'Kromka', 3, '20130315');

update HumanResources.Dzieciaczki
set nazwisko='Mazak'
where id=3;

update HumanResources.Dzieciaczki
set nazwisko='Kredka', wiek=6
where id=3;

update HumanResources.Dzieciaczki
set nazwisko=(select nazwisko
from HumanResources.Dzieciaczki
where id=1),
wiek=(select wiek
from HumanResources.Dzieciaczki
where id=2)
where id=3;


select *
from HumanResources.Dzieci;

insert into HumanResources.Dzieci
values ('Felek', 'Ga³a', 6, '20140207');

update HumanResources.Dzieciaczki
set nazwisko=(select nazwisko
from HumanResources.Dzieci
where id=1)
where id=3;

delete from HumanResources.Dzieciaczki
where id=3;

update HumanResources.Dzieci
set imie='Adaœ'
where id=2;

delete from HumanResources.Dzieciaczki
where imie=(select imie from HumanResources.Dzieci where id=2);
