CREATE TABLE ErrorLog (
    ErrorLogID INT PRIMARY KEY IDENTITY(1,1),
    ErrorDate DATETIME DEFAULT GETDATE(),   -- When the error occurred
    ErrorMessage NVARCHAR(MAX) NOT NULL,    -- Detailed error message
    ErrorProcedure NVARCHAR(100),           -- Optional: name of the stored procedure
    ErrorLine INT,                          -- Optional: line number
    ConsultantID INT,                       -- Optional: related consultant, if applicable
    AdditionalInfo NVARCHAR(1000),          -- Optional: custom comments or input data
    FOREIGN KEY (ConsultantID) REFERENCES Consultant(ConsultantID)
);
