Select * from [HumanResources].[Employee]
order by Jobtitle asc;

2---------------------------------------------------------------------------------
Select  BusinessEntityID, PersonType, NameStyle, Title, FirstName, MiddleName, LastName, Suffix, EmailPromotion, AdditionalContactInfo, Demographics, rowguid, ModifiedDate 
from [Person].[Person] As P
order by LastName;

3---------------------------------------------------------------------------------
Select FirstName, LastName, BusinessEntityID AS Employee_id
FROM [Person].[Person]
order by LastName;

4---------------------------------------------------------------------------------
Select  ProductID, ProductNumber, Name
from [Production].[Product]
where [SellStartDate] IS NOT NULL AND [ProductLine] = 'T'
ORDER BY Name;

5----------------------------------------------------------------------------------
Select SalesOrderID, CustomerID, OrderDate, SubTotal, ([TaxAmt]/[SubTotal]*100) AS Tax
from [Sales].[SalesOrderHeader]
order by SubTotal desc;

6----------------------------------------------------------------------------------
Select distinct(JobTitle) from [HumanResources].[Employee]
order by JobTitle Asc;

7----------------------------------------------------------------------------------
select CustomerID,Sum(freight) as total_freight
from [Sales].[SalesOrderHeader]
group by CustomerID
order by CustomerID asc;

8----------------------------------------------------------------------------------
Select CustomerID, SalesPersonID, Avg(SubTotal) AS AVG_Subtotal, sum([SubTotal]) AS sum_subtotal 
from [Sales].[SalesOrderHeader]
group by CustomerID, SalesPersonID
order by CustomerID desc;

9----------------------------------------------------------------------------------
Select ProductID, sum([Quantity]) as Total_quantity 
from [Production].[ProductInventory]
where Shelf in ('A', 'C', 'H')
group by ProductID
having sum([Quantity]) >500;

10---------------------------------------------------------------------------------
Select (sum([Quantity]))*10 as tot_quantity
from [Production].[ProductInventory]
group by [LocationID];

11---------------------------------------------------------------------------------
Select p.BusinessEntityID, FirstName,LastName, [PhoneNumber] as person_phone 
from [Person].[Person] as p
join [Person].[PersonPhone] as N
on p.BusinessEntityID = N.BusinessEntityID
where LastName like'L%'
order by LastName, FirstName; 

12---------------------------------------------------------------------------------
Select Sum(SalesPersonID), CustomerID, sum(SubTotal) as Sum_subtotal
from [Sales].[SalesOrderHeader]
group by SalesPersonID, CustomerID
having sum(SalesPersonID) is not null
order by SalesPersonID asc;   

13---------------------------------------------------------------------------------
Select [LocationID], [Shelf], sum([Quantity]) as TotalQuantity
from [Production].[ProductInventory]
group by rollup ([LocationID], [Shelf])
order by Totalquantity desc; -----

14---------------------------------------------------------------------------------
Select  [LocationID], [Shelf], sum([Quantity]) as TotalQuantity
from [Production].[ProductInventory]
group by rollup ([LocationID], [Shelf])
order by sum([Quantity]) desc;  ----

15---------------------------------------------------------------------------------
Select [LocationID], sum([Quantity]) as TotalQuantity
from [Production].[ProductInventory]
group by rollup [LocationID];

16---------------------------------------------------------------------------------
Select City, count([City]) as no_of_employees
from [Person].[Address] 
group by [City]
order by City

17----------------------------------------------------------------------------------
Select year([OrderDate]) as year, sum([TotalDue]) as orderAmnt
from [Sales].[SalesOrderHeader]
group by year(OrderDate)
order  by year asc; 

18----------------------------------------------------------------------------------
select year([OrderDate]) as year, sum([TotalDue]) as orderAmnt
from [Sales].[SalesOrderHeader]
where year([OrderDate]) <= 2016
group by Year([OrderDate])
order by Year([OrderDate]);

19----------------------------------------------------------------------------------
Select [ContactTypeID], [Name]
from [Person].[ContactType]
where Name Like '%Manager'
order by ContactTypeID desc;

20--------------------------------------------------------------------------------
Select p.BusinessEntityID, p.LastName, p.FirstName
from Person.Person as p
join Person.BusinessEntityContact as B
on p.BusinessEntityID = B.PersonID
join Person.ContactType as C
on B.ContactTypeID = C.ContactTypeID
where C.Name = 'Purchasing Manager'
order by p.LastName, p.FirstName;

21----------------------------------------------------------------------------------
Select C.ContactTypeID, C.Name as ContactTypeName, count(*) as NoContacts
from Person.BusinessEntityContact as B
join Person.ContactType as C
on B.ContactTypeID = C.ContactTypeID
group by C.ContactTypeID, C.Name
having count(*) >= 100
order by NoContacts desc;

22---------------------------------------------------------------------------------
Select convert(date, hr.RateChangeDate) as FromDate, concat(p.LastName, ', ', p.FirstName, 
Case
when p.MiddleName is null then '' 
else ' ' + p.MiddleName end) as NameInfull,
    (hr.Rate * 40) as SalaryInAWeek
from HumanResources.EmployeePayHistory as hr
join HumanResources.Employee as e
on hr.BusinessEntityID = e.BusinessEntityID
join Person.Person as p
on p.BusinessEntityID = hr.BusinessEntityID
order by NameInFull;

23----------------------------------------------------------------------------------
Select convert(date, hr.RateChangeDate) as FromDate, concat(p.LastName, ', ', p.FirstName, 
Case
when p.MiddleName is null then '' 
else ' ' + p.MiddleName end) as NameInfull,
    (hr.Rate * 40) as SalaryInAWeek
from HumanResources.EmployeePayHistory as hr
join HumanResources.Employee as e
on hr.BusinessEntityID = e.BusinessEntityID
join Person.Person as p
on p.BusinessEntityID = hr.BusinessEntityID
order by NameInFull;


24----------------------------------------------------------------------------------


25--------------------------------------------------------------------------------------------
Select [SalesOrderID], [ProductID], [OrderQty], sum([OrderQty]) as totalOrderqty, avg([OrderQty]) as avg_Orderqty,count([OrderQty]) as no_of_Orders, max([OrderQty]) as maxQuantity, min([OrderQty]) as minQuantity
from [Sales].[SalesOrderDetail]
where [SalesOrderID] in ('43659','43664')
group by [SalesOrderID], [ProductID], [OrderQty]