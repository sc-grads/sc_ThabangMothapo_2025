-- Stored procedure to create the database if it doesn't exist
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'AutoDBThabang')
BEGIN
    EXEC('CREATE DATABASE AutoDBThabang');
END
GO

-- Switch to the new database
USE AutoDBThabang;
GO

-- Create the user table
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'user')
BEGIN
    CREATE TABLE [user] (
        Name VARCHAR(50),
        Surname VARCHAR(50),
        Email VARCHAR(100)
    );
END
GO

-- Create a stored procedure to insert data
IF NOT EXISTS (SELECT * FROM sys.procedures WHERE name = 'InsertUser')
BEGIN
    EXEC('
        CREATE PROCEDURE InsertUser
            @Name VARCHAR(50),
            @Surname VARCHAR(50),
            @Email VARCHAR(100)
        AS
        BEGIN
            INSERT INTO [user] (Name, Surname, Email)
            VALUES (@Name, @Surname, @Email);
        END
    ');
END
GO

-- Insert sample data using the stored procedure
EXEC InsertUser @Name = 'Thabang', @Surname = 'Mothapo', @Email = 'thabang@example.com';
EXEC InsertUser @Name = 'Jane', @Surname = 'Doe', @Email = 'jane.doe@example.com';
GO
