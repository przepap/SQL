select @@datefirst;

set datefirst 1;

select @@LANGUAGE as "jêzyk"

sp_helplanguage;

set language 'polski';

select DATENAME(weekday, getdate());

set dateformat dmy;

select '12-05-2000' as Data, MONTH('12-05-2000') as "miesi¹c";

select dateadd(year, 3, getdate());

select datediff(month, '2020-09-22', GETDATE());

select  DATENAME(DAYOFYEAR, GETDATE());

select DATEPART(weekday, getdate());

select DAY(getdate()), MONTH(getdate()), YEAR(getdate());

select DATEFROMPARTS(2000,06,15);

