CREATE TABLE AuditLog (
    AuditLogID INT PRIMARY KEY IDENTITY(1,1),
    TableName NVARCHAR(100) NOT NULL,
    Action NVARCHAR(10) NOT NULL,           -- e.g., INSERT, UPDATE, DELETE
    RecordID INT NOT NULL,                  -- ID of the affected row
    ChangedBy NVARCHAR(100) NOT NULL,       -- Username or consultant name
    ChangeDate DATETIME DEFAULT GETDATE(),  -- Timestamp of the action
    ChangeDetails NVARCHAR(MAX)             -- JSON or descriptive string of what changed
);
