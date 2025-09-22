CREATE TABLE customers
(
CustomerId int,
CustomerName varchar(1000),
Age int
)

INSERT INTO Customers(CustomerId,Customername,Age) VALUES (1,'userA',20)
INSERT INTO Customers(CustomerId,Customername,Age) VALUES (2,'userB',30)
INSERT INTO Customers(CustomerId,Customername,Age) VALUES (3,'userC',31)
INSERT INTO Customers(CustomerId,Customername,Age) VALUES (4,'userD',26)
INSERT INTO Customers(CustomerId,Customername,Age) VALUES (5,'userE',29)

SELECT * from Customers where CustomerId=3

CREATE CLUSTERED INDEX IX_customers_customerid
    ON dbo.Customers (CustomerId);  