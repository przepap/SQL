select top 8 DepartmentID as Numer_Departamentu, Name as "Nazwa departamentu"
from HumanResources.Department

select AddressID, AddressLine1 + ', ' + City + ' ' + PostalCode as Adres
from Person.Address;

select *
from HumanResources.EmployeeDepartmentHistory
where BusinessEntityID >= 200 and DepartmentID in (6, 4) ;

select BusinessEntityID, Rate, RateChangeDate
from HumanResources.EmployeePayHistory
where Rate between 60 and 100 and RateChangeDate >= '20090101' ;

select top 1 LocationID, Name, CostRate
from Production.Location
order by CostRate desc;

select BusinessEntityID, cast(RateChangeDate as date) as "Data zmiany", Rate, str(Rate, 7, 3) as "Sformatowana stawka"
from HumanResources.EmployeePayHistory;

select Name, ProductNumber, ListPrice, isnull(Color, 'No color') as Color
from Production.Product
where ListPrice between 100 and 200
order by ListPrice;

select round(SalesYTD,0, 1),
str(SalesYTD/1000000, 4, 2) + ' mln'
from Sales.SalesPerson;