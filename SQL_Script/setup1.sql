-- Enable error handling
BEGIN TRY

    -- Check if the database exists, if not, create it
    IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'AutoDBThabang')
    BEGIN
        EXEC('CREATE DATABASE AutoDBThabang');
        PRINT '✅ Database AutoDBThabang created successfully';
    END
    ELSE
    BEGIN
        PRINT 'ℹ️ Database AutoDBThabang already exists';
    END
    GO

    -- Switch to the new database
    USE AutoDBThabang;
    GO

    -- Create the user table if it does not exist
    IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'user')
    BEGIN
        CREATE TABLE [user] (
            ID INT IDENTITY(1,1) PRIMARY KEY,
            Name VARCHAR(50),
            Surname VARCHAR(50),
            Email VARCHAR(100)
        );
        PRINT '✅ Table [user] created successfully';
    END
    ELSE
    BEGIN
        PRINT 'ℹ️ Table [user] already exists';
    END
    GO

    -- Create the stored procedure to insert data if it does not exist
    IF NOT EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'InsertUser')
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
                    PRINT ''✅ User inserted successfully: '' + @Name + '' '' + @Surname;
                END TRY
                BEGIN CATCH
                    PRINT ''❌ Error inserting user: '' + ERROR_MESSAGE();
                END CATCH
            END
        ');
        PRINT '✅ Stored procedure InsertUser created successfully';
    END
    ELSE
    BEGIN
        PRINT 'ℹ️ Stored procedure InsertUser already exists';
    END
    GO

    -- Insert sample data using the stored procedure
    EXEC InsertUser @Name = 'Thabang', @Surname = 'Mothapo', @Email = 'thabang@example.com';
    EXEC InsertUser @Name = 'Jane', @Surname = 'Doe', @Email = 'jane.doe@example.com';
    GO

END TRY

BEGIN CATCH
    PRINT '❌ An error occurred: ' + ERROR_MESSAGE();
END CATCH
GO
