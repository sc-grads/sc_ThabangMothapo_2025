CREATE TRIGGER TR_Consultants_Audit
ON Consultant
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
        'Consultant',
        COALESCE(i.ConsultantID, d.ConsultantID),
        SYSTEM_USER,
        'ConsultantName: ' + COALESCE(i.ConsultantName, d.ConsultantName)
    FROM inserted i
    FULL OUTER JOIN deleted d ON i.ConsultantID = d.ConsultantID;
END;
GO