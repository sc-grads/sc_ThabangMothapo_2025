SELECT TOP (1000) [LeaveID]
      ,[ConsultantID]
      ,[LeaveType]
      ,[StartDate]
      ,[EndDate]
      ,[NumberOfDays]
      ,[ApprovalObtained]
      ,[SickNote]
  FROM [TimesheetDB].[dbo].[Leave]


   truncate table [dbo].[Leave]