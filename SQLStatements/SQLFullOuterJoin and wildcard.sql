SELECT 
    p.*,  -- Select all columns from the pokemon table
    t.*   -- Select all columns from the Table test table
FROM [Bikestores].[dbo].[pokemon] p
FULL OUTER JOIN [Test].[dbo].[Table test] t
    ON p.phone = t.Test1;
