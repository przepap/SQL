select sum(VacationHours) as "suma wolnych godzin"
from HumanResources.Employee;

select jobtitle,
sum(VacationHours) as "suma wolnych godzin"
from HumanResources.Employee
group by JobTitle;

select jobtitle, gender,
sum(VacationHours) as "suma wolnych godzin"
from HumanResources.Employee
group by JobTitle, gender;

select TerritoryID,
		sum(SalesYTD) as "Suma sprzeda¿y",
		max(SalesYTD) as "Najwy¿sza sprzeda¿",
		min(SalesYTD) as "Najni¿sza sprzeda¿",
		avg(SalesYTD) as "Œrednia sprzeda¿"
from Sales.SalesPerson
group by TerritoryID;

select jobtitle, gender,
sum(VacationHours) as "suma wolnych godzin"
from HumanResources.Employee
group by gender, JobTitle
having sum(VacationHours)>60;
