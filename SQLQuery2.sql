select BusinessEntityID, SickLeaveHours
from HumanResources.Employee
where SickLeaveHours between 40 and 50;

select BusinessEntityID, SickLeaveHours
from HumanResources.Employee
where SickLeaveHours in (41, 45,50);

select *
from Person.CountryRegion
where name like 'A%';

select *
from Person.CountryRegion
where name like '_O%';

select *
from Person.CountryRegion
where CountryRegionCode like '[B-E]%';

select *
from Person.CountryRegion
where CountryRegionCode like '[A,B,C,E]%';

select *
from HumanResources.Employee
where OrganizationLevel is null;

select *
from HumanResources.JobCandidate
where BusinessEntityID is not null;

select *
from HumanResources.Employee
order by JobTitle;

select *
from HumanResources.Employee
order by JobTitle desc;

select BusinessEntityID, JobTitle as stanowisko
from HumanResources.Employee
order by stanowisko;

select BusinessEntityID, JobTitle as "stanowisko pracownika"
from HumanResources.Employee
order by "stanowisko pracownika";

select BusinessEntityID, JobTitle as stanowisko
from HumanResources.Employee
where MaritalStatus = 'M'
order by 1; --sortowanie po numerze kolumny

select BusinessEntityID, JobTitle as "stanowisko pracownika", HireDate
from HumanResources.Employee
where MaritalStatus = 'M'
order by 2 desc, HireDate;



