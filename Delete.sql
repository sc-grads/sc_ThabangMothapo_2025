create table salesstaff(
staffID INT not null primary key,
firstname nvarchar(50) not null,
lastname nvarchar(50) not null,
countryregion nvarchar(50) not null
)

drop table salesstaff

select * from salesstaff

insert into salesstaff
select businessentityid, firstname, lastname, countryregionname from sales.vsalesperson;

delete salesstaff;
delete from salesstaff
delete from salesstaff where countryregion = 'united sates'

begin tran
delete from salesstaff where countryregion = 'united states'

commit

rollback tran

delete salesstaff
where staffid in
(select businessentityid from sales.vSalesPerson where saleslastyear = 00

select * from  salesstaff

delete salesstaff
from sales.vSalesPerson sp
inner join salesstaff ss
on sp.BusinessEntityID = ss.staffid
where sp.saleslastyear = 0