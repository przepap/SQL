select max(SalesQuota) as "warto�� maksymalna",
		min(SalesQuota) as "warto�� minimalna",
		avg(isnull(SalesQuota,0)) as "warto�� �rednia"
from sales.SalesPerson;

select MaritalStatus, Gender,
sum(VacationHours - SickLeaveHours) as "r�nica"
from HumanResources.Employee
group by MaritalStatus, Gender;

select BusinessEntityID, JobTitle,
	case when OrganizationLevel is null then 'Szef wszystkich szef�w'
	when OrganizationLevel < 3 then 'Wiceprezesi i managerowie'
	else 'Pracownicy'
	end as Stanowisko
from HumanResources.Employee
order by OrganizationLevel;

select Name,
		lower(LEFT(Name,1)) + upper(RIGHT(Name,1)) as Alias,
		case when CHARINDEX(' ', Name) = 0 then Name
		else RIGHT(Name, CHARINDEX(' ', REVERSE(Name))-1)
		end as "Ostatnie s�owo"
from Person.CountryRegion;

select BusinessEntityID, StartDate,
		'Pracownik o numerze ' + cast(BusinessEntityID as varchar) +
		' zacz�� prac�' +
		cast(DATEDIFF(year, StartDate, getdate()) as varchar) +
		' lat i ' +
		cast(DATEDIFF(month, StartDate, getdate()) %12	as varchar) +
		' miesi�cy temu' as Sta�
from HumanResources.EmployeeDepartmentHistory;

select *
from Person.BusinessEntityAddress;

select *
from Person.Address;

select *
from Person.AddressType;

select BEA.BusinessEntityID, A.AddressLine1, A.PostalCode, A.City, AT.Name
from Person.BusinessEntityAddress as BEA
inner join Person.Address as A on BEA.AddressID = A.AddressID
inner join Person.AddressType as AT on BEA.AddressTypeID = AT.AddressTypeID;

select *
from HumanResources.Employee;

select *
from HumanResources.JobCandidate;


select JC.JobCandidateID, HE.*
from HumanResources.JobCandidate as JC
left join HumanResources.Employee as HE on JC.BusinessEntityID = HE.BusinessEntityID
order by HE.BusinessEntityID desc;
