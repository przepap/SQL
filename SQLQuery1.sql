select *
from HumanResources.Employee
where MaritalStatus = 'M';

select BusinessEntityID, JobTitle
from HumanResources.Employee
where JobTitle = 'design engineer'

select BusinessEntityID, JobTitle, HireDate
from HumanResources.Employee
where HireDate > '20090114'

select BusinessEntityID, JobTitle, HireDate, OrganizationLevel
from HumanResources.Employee
where OrganizationLevel = 2 or OrganizationLevel = 4;

select BusinessEntityID, JobTitle, HireDate, OrganizationLevel, Gender
from HumanResources.Employee
where OrganizationLevel < 2 and Gender = 'F';

select BusinessEntityID, JobTitle, HireDate, OrganizationLevel, Gender
from HumanResources.Employee
where OrganizationLevel < 2 and (Gender = 'F' or Gender = 'M');