CREATE TRIGGER TR_Clients_Audit
ON Client
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
        'Client',
        COALESCE(i.ClientID, d.ClientID),
        SYSTEM_USER,
        'ClientName: ' + COALESCE(i.ClientName, d.ClientName)
    FROM inserted i
    FULL OUTER JOIN deleted d ON i.ClientID = d.ClientID;
END;
GO