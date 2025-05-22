declare @myoption as varchar(10) = 'Option a'

select case when @myoption = 'Option A' then 'First option'
when @myoption = 'Option b' then 'Second option'
else 'No option' END as Myoptions
go