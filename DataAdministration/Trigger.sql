SELECT TOP (1000) [EmpID]
      ,[EmpName]
      ,[EmpTitle]
  FROM [AdventureWorks2016].[dbo].[Employee]


CREATE TRIGGER employeeinsert
on employee
   AFTER INSERT
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	insert into employeetriggerhistory values((select top(1)empid from employee), 'insert')
END
GO


select * from  employeetriggerhistory
insert into [employee] values

alter table[employee]
add id int identity(1,1)
go

alter table [employee] drop column empid
go

CREATE TRIGGER employeeinsert
on employee
   AFTER INSERT
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	insert into employeetriggerhistory values((select max(empid) from employee), 'insert')
END
GO