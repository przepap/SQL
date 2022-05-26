select BusinessEntityID, Rate,
rate +10 as "+ 10",
rate * 1.1 as "+ 10%",
rate - 10 as "- 10",
rate /3 as "/3"
from HumanResources.EmployeePayHistory;

select 3500 % 1500 as "reszta",
3500/1500 as "dzielenie",
cast(3500 as float)/1500 as "dzielenie z reszt¹";

select ROUND (-2.49, 0),
round (-2.5, 0),
round (1.2683, 2)
;

select ROUND (43.2692,1,1);

select ROUND (125.50, -1); -- zaokr¹gla do dziesi¹tek
select ROUND (175.50, -2); -- zaokr¹gla do setek

select FLOOR (170.9887);
select CEILING (170.9887);

select RAND(); --generuje losow¹ liczbê od 0 do 1

 --generator liczb losowych od 1 do 5
select round(rand()*(5-1), 0)+1;

select BusinessEntityID, Rate,
round(rate,2),
round(rate,2,1)
from HumanResources.EmployeePayHistory;

select BusinessEntityID, Rate,
round(rate,-1),
round(rate,-2)
from HumanResources.EmployeePayHistory;

select BusinessEntityID, Rate,
floor(rate),
ceiling(rate)
from HumanResources.EmployeePayHistory;

select floor(12.34),
	floor(-12.34),
	round(-12.34, 0),
	ceiling(12.34),
	ceiling(-12.34);


