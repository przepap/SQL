select sum(SickLeaveHours)/8 as "suma dni chorobowego"
from HumanResources.Employee;

select max(VacationHours) as "najwy¿sza liczba godzin wolnych",
min(HireDate) as "najstarsza data zatrudnienia",
max(JobTitle) as "ostatnie w kolejnoœci satnowisko"
from HumanResources.Employee;

select count(*) as "liczba rekordów"
from Sales.SpecialOffer;

select count(MaxQty) as "liczba rekordów w kolumnie MaxQty"
from Sales.SpecialOffer;

select count(MaxQty) as "liczba rekordów w kolumnie MaxQty"
from Sales.SpecialOffer;

select count(distinct type) as "liczba unikatowych rekordów w kolumnie Type"
from Sales.SpecialOffer;

select avg(isnull(MaxQty, 0)) as "œrednia z wartoœci z wszystkich pól w kolumnie MaxQty"
from Sales.SpecialOffer;