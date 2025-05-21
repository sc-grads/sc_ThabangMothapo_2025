select * from tblEmployee1
where DateOfBirth between '19760101' and '19861231'

select * from tblEmployee1
where DateOfBirth>= '19760101' and DateOfBirth< '19870101'

select * from tblEmployee1
where year(DateOfBirth) between 1976 and 1986 --do not use.

select year(DateOfBirth) as YearOfDateOfBirth, count(*) as NumberBorn
from tblEmployee1
Group by year(DateOfBirth)