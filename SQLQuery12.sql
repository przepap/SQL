select distinct NumberEmployees
from Sales.vStoreWithDemographics
where YearOpened = '1990';

select Name, YearOpened, NumberEmployees
from Sales.vStoreWithDemographics
where NumberEmployees in (select NumberEmployees
							from Sales.vStoreWithDemographics
							where YearOpened = '1990')
and YearOpened <> '1990'
order by NumberEmployees;

select Name, YearOpened, NumberEmployees
from Sales.vStoreWithDemographics
where NumberEmployees < any (select NumberEmployees
							from Sales.vStoreWithDemographics
							where YearOpened = '1990')

and YearOpened <> '1990'
order by NumberEmployees;

select Name, YearOpened, NumberEmployees
from Sales.vStoreWithDemographics
where NumberEmployees < all (select NumberEmployees
							from Sales.vStoreWithDemographics
							where YearOpened = '1990')

and YearOpened <> '1990'
order by NumberEmployees;

select Name, YearOpened, NumberEmployees
from Sales.vStoreWithDemographics
where NumberEmployees < all (select NumberEmployees
							from Sales.vStoreWithDemographics
							where YearOpened = '1990')
and YearOpened <> '1990'
order by NumberEmployees;

select E.OrganizationNode ,D.*
from Production.Document as D
left join HumanResources.Employee as E on D.DocumentNode=E.OrganizationNode;

select *
from Production.Document as D
where not exists
(select *
from HumanResources.Employee as E
where D.DocumentNode=E.OrganizationNode);

 

