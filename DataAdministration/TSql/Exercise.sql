SELECT DATENAME(MONTH, DateOfBirth) as MonthName, count(*) as NumberEmployee1,
Count(Employeemiddlename) as NoOfMinddleNames,
count(*) count(Employeemiddlename) as NoOfMinddleNames,
format(min(DateOfBirth), 'dd-MM-YY' AS EARLIESTDOB,
format(max(DateOfBirth), 'D' AS LATESTDOB,
FROM tblEmployee1
Group by DateName(month, DateOfBirth), datepart(month, DateOfBirth)
ORDER BY datepart(month, DateOfBirth)