select Department, count(*) as no.OfDep
from tblEmployee1
group by Department as newTable