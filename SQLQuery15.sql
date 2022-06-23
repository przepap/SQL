

with Pracownicy as
(select P.FirstName + ' ' + LastName as Name, E.BirthDate
from HumanResources.Employee as E
inner join Person.Person as P
on E.BusinessEntityID=P.BusinessEntityID)

select *
from Pracownicy
where BirthDate < '19700101';


with Pracownicy as
(select P.FirstName + ' ' + LastName as Name, E.BirthDate
from HumanResources.Employee as E
inner join Person.Person as P
on E.BusinessEntityID=P.BusinessEntityID)

select *
from Pracownicy as P1
left join Pracownicy as P2
on P1.Name <> P2.Name
where  P1.BirthDate=P2.BirthDate; 