select getdate() as "Data/godzina", 
cast(getdate() as date) as "Data",
cast (getdate() as time) as "Godzina";

select hiredate,
datediff (year, hiredate, cast(getdate() as date)) as "ile lat"
from HumanResources.Employee;

select cast(VacationHours as float)/8
from HumanResources.Employee;

select cast(getdate() as date) as "Data", cast(getdate() as time) as "Godzina";

select hiredate, cast(getdate() as date) as "Data dzisiejsza",
datediff(year, HireDate, cast(getdate() as date)) as "Lat minê³o"
from HumanResources.Employee;

select '2021-05-30' as "data zwolnienia",
'1995-08-01' as "data zatrudnienia",
datediff(year, '1995-08-01', '2021-05-30') as "lata pracy";

select cast(VacationHours as float)/8,
str(cast(VacationHours as float)/8,6,5)
from HumanResources.Employee;