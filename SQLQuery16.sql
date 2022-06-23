declare @stanowisko varchar(30)
set @stanowisko = 'Tool designer';

select BusinessEntityID
from HumanResources.Employee
where JobTitle = @stanowisko;

create function WszyscyZDepartamentu
(@departament as varchar(255)) returns varchar(255)
as

begin

declare @nazwisko as varchar(255) = ''
select @nazwisko = @nazwisko + LastName + ', ' from HumanResources.vEmployeeDepartment
where Department = @departament;

return @nazwisko

end

select dbo.WszyscyZDepartamentu (Department)
as "Koledzy i kole¿anki z dzia³u"
from HumanResources.vEmployeeDepartment;

drop function WszyscyZDepartamentu;