create procedure selectallpersonaladress
as
select * from person.address
go

select * from person.address

execute selectallpersonaladress

drop procedure selectallpersonaladress

 create procedure selectallpersonaladresswithencryption (@City nvarchar(30))
 with encryption
as
--begin
set nocount on

select * from person.address where City = @city;

--end
End

drop procedure selectallpersonaladresswithparams(@City nvarchar(30))

execute selectallpersonaladresswithparams @city = ' Miami' 

execute selectallpersonaladresswithparams ' Miami' 
