-- create table products(
-- id serial primary key,
-- name varchar(40),
-- department varchar(40),
-- price integer,
-- weight integer
-- );

insert into products (name,department,price,weight)
values('Shirt','clothes',20,1);

insert into products (name,department,weight)
values('pants','clothes',3);

select * from products 
order by id asc

update products
set price = 999
where price  is null;

Alter table products
alter column price
set not null;

Alter table products
alter column price
set default 999;


insert into products (name,department,weight)
values('shoes','clothes',9);


insert into products (name,department,price,weight)
values('Shirt','Tools',24,1);

alter table products
add unique(name);

alter table products
drop constraint products_name_key;