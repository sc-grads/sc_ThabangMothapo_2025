USE [AdventureWorks2016]
GO
/****** Object:  StoredProcedure [dbo].[selectallpersonaladresswithparams]    Script Date: 2025/03/12 10:34:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[selectallpersonaladresswithparams](@City nvarchar(30) = ' new york', @stateprovinceid int)
as
--begin
set nocount on

select * from person.address where City = @city;