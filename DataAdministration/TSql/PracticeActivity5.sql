select [name] + 'A'
from sys.all_columns

select [name] + N'?'
from sys.all_columns

SELECT SUBSTRING([name], 2, len([name]-1) as [name]
from sys.all_columns

SELECT SUBSTRING([name], 1, len([name]-1) as [name]
from sys.all_columns