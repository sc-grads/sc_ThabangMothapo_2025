SELECT  
    p.id,
    p.name,
    p.phone,
    p.email,
    t.Test,
    t.Test1
FROM [Bikestores].[dbo].[pokemon] p
LEFT JOIN [Test].[dbo].[Table test] t
    ON p.phone = t.Test1;