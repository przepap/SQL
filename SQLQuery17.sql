select BusinessEntityID, VacationHours,
rank() over (order by vacationhours desc) as "Ranking godzin wolnych"
from HumanResources.Employee;

select BusinessEntityID, VacationHours,
dense_rank() over (order by vacationhours desc) as "Ranking godzin wolnych"
from HumanResources.Employee;

select BusinessEntityID, VacationHours,
row_number() over (order by vacationhours desc) as "Ranking godzin wolnych"
from HumanResources.Employee;

select BusinessEntityID, VacationHours,
ntile(4) over (order by vacationhours desc) as "Ranking godzin wolnych"
from HumanResources.Employee;

select BusinessEntityID, HireDate,
dense_rank() over (order by hiredate) as "Ranking najd³u¿ej zatrudnionych osób"
from HumanResources.Employee;

select BusinessEntityID, JobTitle,
dense_rank() over (order by jobtitle) as "Pozycja wg alfabetu"
from HumanResources.Employee;

select BusinessEntityID, MaritalStatus ,HireDate, gender,
dense_rank() over (partition by gender, maritalstatus order by hiredate) as "Ranking najd³u¿ej zatrudnionych osób"
from HumanResources.Employee;

