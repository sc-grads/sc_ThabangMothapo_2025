select * from inserted
union
select * from deleted

select convert(char(5), 'hi') as greeting
union
select convert(char(5), 'hello there')
