 Create Table salestaff(

 staffid int not null Primary key,
 fname nvarchar(30) not null,
 lname nvarchar(30) not null
 )

 Insert into salestaff(staffid, fname, lname) 
 Values (200, 'Abbas', 'mehmood')

 SELECT * FROM salestaff
 Insert into salestaff(staffid, fname, lname) 
 Values (300, 'Imran', 'Afzal'), (325, 'John', 'vick'),(314, 'James', 'Dino')

 Create Table salestaffnew(
	ID int NOT NULL IDENTITY PRIMARY KEY,
 staffid int not null,
 fname nvarchar(30),
 lname nvarchar(30)
 )
 SELECT * FROM salestaffnew

 Insert into salestaffnew(staffid, fname, lname) 
 Values (200, 'Abbas', 'mehmood')

 Insert into salestaffnew(staffid, fname, lname) 
 Values (300, 'Imran', 'Afzal'), (325, 'John', 'vick'),(314, 'James', 'Dino')

 Create Table nameOnlyTable(

 fname nvarchar(30),
 lname nvarchar(30)
 )
 select * from nameOnlyTable

 insert nameOnlyTable(fname, lname)
 select fname,lname from salestaffnew WHERE id >3

 select * into salesstaffnew from salestaffnew

 select * from salesstaffnew