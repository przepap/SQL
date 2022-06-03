select *
from HumanResources.EmployeeDepartmentHistory;

select *
from HumanResources.Shift;

select *
from HumanResources.EmployeeDepartmentHistory, HumanResources.Shift;

select *
from HumanResources.EmployeeDepartmentHistory, HumanResources.Shift
where HumanResources.EmployeeDepartmentHistory.ShiftID = HumanResources.Shift.ShiftID;

select EDP.BusinessEntityID, S.Name
from HumanResources.EmployeeDepartmentHistory as EDP, HumanResources.Shift as S
where EDP.ShiftID = S.ShiftID;

select EDH.BusinessEntityID, Sh.Name
from HumanResources.EmployeeDepartmentHistory as EDH
inner join HumanResources.Shift as Sh on EDH.ShiftID=Sh.ShiftID;

select EDH.BusinessEntityID, Sh.Name, P.FirstName, P.LastName
from HumanResources.EmployeeDepartmentHistory as EDH
inner join HumanResources.Shift as Sh on EDH.ShiftID=Sh.ShiftID
inner join Person.person as P on EDH.BusinessEntityID=P.BusinessEntityID
order by BusinessEntityID; 

select BusinessEntityID, VacationHours
from HumanResources.Employee
where VacationHours > (select VacationHours
						from HumanResources.Employee
							where BusinessEntityID=49);

select BusinessEntityID, VacationHours, MaritalStatus
from HumanResources.Employee
where VacationHours > (select VacationHours
						from HumanResources.Employee
							where BusinessEntityID=49)
and MaritalStatus = (select MaritalStatus
						from HumanResources.Employee
							where BusinessEntityID=49);

select BusinessEntityID, VacationHours
from HumanResources.Employee
where VacationHours = (select min(VacationHours) from HumanResources.Employee);

select JobTitle, avg(VacationHours) as "Suma godzin wolnych dla stanowiska"
from HumanResources.Employee
group by JobTitle
having avg(VacationHours) > (select avg(VacationHours)
									from HumanResources.Employee);

select *
from (select BusinessEntityID, VacationHours from HumanResources.Employee) as Podzapytanie
where businessentityid between 100 and 150;

