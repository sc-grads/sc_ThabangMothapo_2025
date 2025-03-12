SELECT *FROM [AdventureWorks2016].[Sales].[visits]

select BusinessEntityID, FirstName, LastName, Title
into #TempPersonTable
from [person].[person]
where title = 'mr.'

SELECT BusinessEntityID, FirstName, LastName -- "SELECT" should be here
FROM [Person].[Person]
WHERE title = 'Mr.';

SELECT * FROM #TempPersonTable

DROP TABLE #TempPersonTable
