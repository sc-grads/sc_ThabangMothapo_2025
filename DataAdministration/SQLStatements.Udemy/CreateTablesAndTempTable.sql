select BusinessEntityID, FirstName, LastName, Title
into #TempPersonTable
from [person].[person]
where title = 'mr.'

DROP TABLE #TempPersonTable
CREATE TABLE #TempPersonTable(
BusinessEntityID int,
FirstName nvarchar(50),
LastName nvarchar(50),
TITLE nvarchar(50),
)
INSERT INTO #TempPersonTable
select BusinessEntityID, FirstName, LastName, Title
from [person].[person]
where title = 'mr.'

SELECT * FROM #TempPersonTable
