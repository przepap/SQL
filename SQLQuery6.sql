select sum(SickLeaveHours)/8 as "suma dni chorobowego"
from HumanResources.Employee;

select max(VacationHours) as "najwy�sza liczba godzin wolnych",
min(HireDate) as "najstarsza data zatrudnienia",
max(JobTitle) as "ostatnie w kolejno�ci satnowisko"
from HumanResources.Employee;

select count(*) as "liczba rekord�w"
from Sales.SpecialOffer;

select count(MaxQty) as "liczba rekord�w w kolumnie MaxQty"
from Sales.SpecialOffer;

select count(MaxQty) as "liczba rekord�w w kolumnie MaxQty"
from Sales.SpecialOffer;

select count(distinct type) as "liczba unikatowych rekord�w w kolumnie Type"
from Sales.SpecialOffer;

select avg(isnull(MaxQty, 0)) as "�rednia z warto�ci z wszystkich p�l w kolumnie MaxQty"
from Sales.SpecialOffer;