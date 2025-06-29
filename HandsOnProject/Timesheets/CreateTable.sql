CREATE DATABASE TimesheetDB;
GO

USE TimesheetDB;
GO

-- Create Consultant table
CREATE TABLE Consultant (
    ConsultantID INT PRIMARY KEY IDENTITY(1,1),
    ConsultantName NVARCHAR(100) NOT NULL
);

-- Create Client table
CREATE TABLE Client (
    ClientID INT PRIMARY KEY IDENTITY(1,1),
    ClientName NVARCHAR(100) NOT NULL
);

-- Create Timesheet table (with TIME fields)
CREATE TABLE Timesheet (
    TimesheetID INT PRIMARY KEY IDENTITY(1,1),
    ConsultantID INT NOT NULL,
    EntryDate DATE NOT NULL,
    DayOfWeek NVARCHAR(255),
    ClientID INT,
    Description NVARCHAR(500),
    BillingStatus NVARCHAR(255),
    Comments NVARCHAR(1000),
    TotalHours TIME,             -- CHANGED to TIME
    StartTime TIME,              -- CHANGED to TIME
    EndTime TIME,                -- CHANGED to TIME
    FOREIGN KEY (ConsultantID) REFERENCES Consultant(ConsultantID),
    FOREIGN KEY (ClientID) REFERENCES Client(ClientID)
);

-- Create Leave table
CREATE TABLE Leave (
    LeaveID INT PRIMARY KEY IDENTITY(1,1),
    ConsultantID INT NOT NULL,
    LeaveType NVARCHAR(50),
    StartDate DATE,
    EndDate DATE,
    NumberOfDays INT,
    ApprovalObtained NVARCHAR(10),
    SickNote NVARCHAR(10),
    FOREIGN KEY (ConsultantID) REFERENCES Consultant(ConsultantID)
);

-- Create AuditLog table
CREATE TABLE AuditLog (
    AuditLogID INT PRIMARY KEY IDENTITY(1,1),
    TableName NVARCHAR(100) NOT NULL,
    Action NVARCHAR(10) NOT NULL,
    RecordID INT NOT NULL,
    ChangedBy NVARCHAR(100) NOT NULL,
    ChangeDate DATETIME DEFAULT GETDATE()
);

-- Create ErrorLog table
CREATE TABLE ErrorLog (
    ErrorLogID INT PRIMARY KEY IDENTITY(1,1),
    ErrorDate DATETIME DEFAULT GETDATE(),
    ErrorMessage NVARCHAR(MAX) NOT NULL,
    TableName NVARCHAR(100) NOT NULL
);
