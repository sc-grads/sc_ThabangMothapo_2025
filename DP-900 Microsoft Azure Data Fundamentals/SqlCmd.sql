sqlcmd -S sqlserver355465.database.windows.net -d appdb -U sqladmin -P Azure@123 -I
select * from Customers
GO
:setvar SQLCMDMAXVARTYPEWIDTH 30
:setvar SQLCMDMAXFIXEDTYPEWIDTH 30
select * from Customers
GO