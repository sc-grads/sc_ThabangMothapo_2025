select 
firstname +' ' + lastname As Fullname,
TerritoryName,
TerritoryGroup,
SalesQuota,
SalesYTD,
SalesLastYear
into salesStaff
from 
sales.vSalesPerson

select * from [sales].[vSalesPerson]

drop table salesStaff

Select * from SalesStaff

update SalesStaff SET salesquota = 500000.00
update SalesStaff SET salesquota =  salesquota + 1500000.00
update SalesStaff SET salesquota = salesquota + 1500000.00, salesYTD= salesYTD - 500, saleslastyear= saleslastyear *1.50

update SalesStaff SET TerritoryName = 'ÚK' where territoryname = 'Únited kingdom'
update SalesStaff SET Territoryname = 'ÚK' where territorygroup is null and fullname = 'Syed Abbas'
update SalesStaff SET Territoryname = 'ÚK', territorygroup = 'Europe' where territorygroup is null and fullname = 'Syed Abbas'

update salesstaff set salesquota = sp.salesquota
from salesstaff ss
inner join sales.vSalesPerson sp
on ss.fullname = (sp.firstname + ' ' + sp.lastname)