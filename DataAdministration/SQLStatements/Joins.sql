USE OurFirstDatabase
go

SELECT * from dbo.Student
GO

select * from dbo.course

SELECT * FROM Student S
inner join course c
on s.rollno = c.rollno

SELECT * FROM Student S
left join course c
on s.rollno = c.rollno

SELECT * FROM Student S
right join course c
on s.rollno = c.rollno

SELECT * FROM Student S
full join course c
on s.rollno = c.rollno