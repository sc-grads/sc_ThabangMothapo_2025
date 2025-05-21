ALTER TABLE tblEmployee1
Add Constraint unqGoverment unique (EmployeeGovernmentID);

SELECT EmployeeGovernmentID, count(EmployeeGovernmentID) AS MyCount from tblEmployee
group by EmployeeGovernmentID
HAVING COUNT (EmployeeGovernmentID)>1

select *from tblEmployee1 where EmployeeGovernmentID in ('HN513777D', 'TX593671R')

BEGIN TRAN
DELETE FROM tblEmployee1
where EmployeeNo < 3

DELETE TOP(2) FROM tblEmployee1
where EmployeeNo in (131, 132)

select *from tblEmployee1 where EmployeeGovernmentID in ('HN513777D', 'TX593671R')
commit tran