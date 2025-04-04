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

-- Create or alter the stored procedure to insert data with try-catch
IF NOT EXISTS (SELECT * FROM sys.procedures WHERE name = 'InsertUser')
BEGIN
    EXEC('
        CREATE PROCEDURE InsertUser
            @Name VARCHAR(50),
            @Surname VARCHAR(50),
            @Email VARCHAR(100)
        AS
        BEGIN
            BEGIN TRY
                INSERT INTO [user] (Name, Surname, Email)
                VALUES (@Name, @Surname, @Email);
            END TRY
            BEGIN CATCH
                DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
                RAISERROR (''Error inserting data: %s'', 16, 1, @ErrorMessage);
            END CATCH
        END
    ');
END
ELSE
BEGIN
    EXEC('
        ALTER PROCEDURE InsertUser
            @Name VARCHAR(50),
            @Surname VARCHAR(50),
            @Email VARCHAR(100)
        AS
        BEGIN
            BEGIN TRY
                INSERT INTO [user] (Name, Surname, Email)
                VALUES (@Name, @Surname, @Email);
            END TRY
            BEGIN CATCH
                DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
                RAISERROR (''Error inserting data: %s'', 16, 1, @ErrorMessage);
            END CATCH
        END
    ');
END
GO

-- Insert sample data using the stored procedure
EXEC InsertUser @Name = 'Thabang', @Surname = 'Mothapo', @Email = 'thabang@example.com';
EXEC InsertUser @Name = 'Jane', @Surname = 'Doe', @Email = 'jane.doe@example.com';
GO
