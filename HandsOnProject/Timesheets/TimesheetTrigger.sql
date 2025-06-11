CREATE TRIGGER TR_Timesheets_Audit
ON Timesheet
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO AuditLog (Action, TableName, RecordID, ChangedBy, ChangeDetails)
    SELECT 
        CASE 
            WHEN EXISTS (SELECT 1 FROM inserted) AND EXISTS (SELECT 1 FROM deleted) THEN 'UPDATE'
            WHEN EXISTS (SELECT 1 FROM inserted) THEN 'INSERT'
            WHEN EXISTS (SELECT 1 FROM deleted) THEN 'DELETE'
        END,
        'Timesheet',
        COALESCE(i.TimesheetID, d.TimesheetID),
        SYSTEM_USER,
        ', StartTime: ' + CONVERT(NVARCHAR(8), COALESCE(i.StartTime, d.StartTime), 108)
    FROM inserted i
    FULL OUTER JOIN deleted d ON i.TimesheetID = d.TimesheetID;
END;
GO