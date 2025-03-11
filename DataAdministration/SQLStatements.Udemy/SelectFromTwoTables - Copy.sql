/* Employee Table
[EmpID] [int] NOT NULL,
	[EmpName] [nvarchar](50) NULL,
	[EmpTitle] [nvarchar](50) NULL,

	Sales Table
	[EmpID] [int] NULL,
	[EmpName] [nvarchar](50) NULL,
	[SalesNumber] [int] NOT NULL,
	[ItemSold] [int] NULL,
	*/
	SELECT * FROM [dbo].[Employee]
	SELECT * FROM [dbo].[Sales]
	select * from [dbo].[employee] e
	join [dbo].[sales] s
	on e.empname = s.empname

	select * from [dbo].[employee] e
	join [dbo].[sales] s
	on e.empid = s.empid

	SELECT e.EmpID,e.EmpName,s.SalesNumber,s.ItemSold FROM [dbo].[Employee] e
join [dbo].[Sales] s 
on e.EmpID = s.[EmpID]
order by e.EmpID

SELECT count(s.SalesNumber) as NOofSales, e.EmpID, e.EmpName
FROM [dbo].[Employee] e
JOIN [dbo].[Sale] s ON e.EmpID = s.EmpID
GROUP BY e.EmpID, e.EmpName;


	/* SELECT column.names FROM table.name Join table.name2
	ON column.name1 = column.name2
	WHERE condition */