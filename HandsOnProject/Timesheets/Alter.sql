ALTER TABLE [dbo].[Timesheet]
ALTER COLUMN TotalHours TIME(0);

ALTER TABLE [dbo].[Timesheet]
ALTER COLUMN StartTime TIME(0);

ALTER TABLE [dbo].[Timesheet]
ALTER COLUMN EndTime TIME(0);

UPDATE [dbo].[Timesheet]
SET ClientID = 1
WHERE ClientID IS NULL;


ALTER TABLE Timesheet
ADD CreatedDateTime DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
    ModifiedDateTime DATETIME2 NULL;

	ALTER TABLE Timesheet  
DROP COLUMN ModifiedDateTime;



