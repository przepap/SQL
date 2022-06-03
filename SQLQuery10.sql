select SalesOrderID
from Sales.SalesOrderDetail
group by SalesOrderID
having sum(LineTotal) between 5000 and 6000;

select LastName, count(LastName) as liczba
from Person.Person
group by LastName
order by liczba desc;