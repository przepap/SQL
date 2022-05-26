select ISNUMERIC(NationalIDNumber)
from HumanResources.Employee;

 select ISNUMERIC(businessentityid)
 from HumanResources.Employee;

 select isdate('20220524');

 select isdate('05/24/2022');

 select ISDATE(cast(hiredate as char))
 from HumanResources.Employee;

 select BusinessEntityID, StartDate, EndDate
 from HumanResources.EmployeeDepartmentHistory;

 select BusinessEntityID, StartDate, isnull(EndDate, getdate()) as "EndDate"
 from HumanResources.EmployeeDepartmentHistory;

 select JobCandidateID, isnull(cast(BusinessEntityID as char),'brak') as "BusinessEntityID"
 from HumanResources.JobCandidate
 order by JobCandidateID;

 select JobCandidateID, isnull(BusinessEntityID,0) as "BusinessEntityID"
 from HumanResources.JobCandidate
 order by JobCandidateID;

