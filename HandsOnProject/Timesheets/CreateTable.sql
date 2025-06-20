-- Create Consultants table
CREATE TABLE Consultant (
    ConsultantID INT PRIMARY KEY IDENTITY(1,1),
    ConsultantName NVARCHAR(100) NOT NULL
);

-- Create Clients table
CREATE TABLE Client (
    ClientID INT PRIMARY KEY IDENTITY(1,1),
    ClientName NVARCHAR(100) NOT NULL
);

-- Create Projects table
CREATE TABLE Project (
    ProjectID INT PRIMARY KEY IDENTITY(1,1),
    ClientID INT NOT NULL,
    ProjectName NVARCHAR(100),
    FOREIGN KEY (ClientID) REFERENCES Client(ClientID)
);

-- Create Timesheets table
CREATE TABLE Timesheet (
    TimesheetID INT PRIMARY KEY IDENTITY(1,1),
    ConsultantID INT NOT NULL,
    EntryDate DATE NOT NULL,
    DayOfWeek NVARCHAR(20),
    ClientID INT,
    ProjectID INT,
    Description NVARCHAR(500),
    BillingStatus NVARCHAR(20),
    Comments NVARCHAR(1000),
    TotalHours DECIMAL(10,4),
    StartTime DECIMAL(10,4),
    EndTime DECIMAL(10,4),
    FOREIGN KEY (ConsultantID) REFERENCES Consultant(ConsultantID),
    FOREIGN KEY (ClientID) REFERENCES Client(ClientID),
    FOREIGN KEY (ProjectID) REFERENCES Project(ProjectID)
);

-- Create Expenses table
CREATE TABLE Expense (
    ExpenseID INT PRIMARY KEY IDENTITY(1,1),
    ConsultantID INT NOT NULL,
    ExpenseDate DATE NOT NULL,
    ExpenseDescription NVARCHAR(200),
    ExpenseType NVARCHAR(50),
    ZARCost DECIMAL(10,2),
    FOREIGN KEY (ConsultantID) REFERENCES Consultant(ConsultantID)
);

-- Create Leaves table
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

