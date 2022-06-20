create table HumanResources.Dzieci
	(
	id int,
	imie varchar(255),
	nazwisko varchar(255),
	wiek int,
	data_urodzenia date
	);

	select *
	from HumanResources.Dzieci;

	select BusinessEntityID, FirstName, LastName
	into HumanResources.Rodzice
	from Person.Person
	where LastName like 'S%' and BusinessEntityID between 1 and 290;

	select *
	from HumanResources.Rodzice;

	alter table humanresources.dzieci
	add miasto varchar(30);

	alter table humanresources.dzieci
	alter column miasto int;

	alter table humanresources.dzieci
	drop column miasto;

	sp_rename 'humanresources.dzieci', 'Dzieciaki';

	sp_rename 'humanresources.dzieciaki.wiek', 'aktualny wiek', 'column';

	select *
	from HumanResources.Dzieciaki;

	create view Sales.Najwiekszych10Zamowien as 
	select top 10 SalesOrderID, SUM(UnitPrice) as suma
	from Sales.SalesOrderDetail
	group by SalesOrderID
	order by suma desc;

	select *
	from Sales.Najwiekszych10Zamowien;