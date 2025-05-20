declare @mydate as datetime = '2015-06-24 12:34:56.124'
select @mydate as MyDate

declare @mydate1 as datetime2 = '2015-06-24 12:34:56.124'
select @mydate1 as MyDate

select datefromparts (2015-06-24) as thisdate
select datetime2fromparts(2015,06,24,12,34,56,124,3) as thatdate
select year(@mydate) as myYear, month(@mydate) as myMonth, day(@mydate) as myDay, hour(@mydate) as myhour