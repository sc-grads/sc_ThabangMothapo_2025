declare @mychar as char(10)
set @mychar = 'hello'
select @mychar as mystring, len(@mychar) as mylength, datalength(@mychar) as mydatalength

declare @mychar as varchar(10)
set @mychar = 'hello'
select @mychar as mystring, len(@mychar) as mylength, datalength(@mychar) as mydatalength

declare @mychar as nvarchar(10)
set @mychar = N'hello'
select @mychar as mystring, len(@mychar) as mylength, datalength(@mychar) as mydatalength

declare @mychar as nchar(10)
set @mychar = N'hello'
select @mychar as mystring, len(@mychar) as mylength, datalength(@mychar) as mydatalength