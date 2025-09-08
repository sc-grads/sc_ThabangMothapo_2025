Create table orders(
id serial primary key,
name varchar(40) not null,
created_at Timestamp not null,
est_delivery Timestamp not null,
check(created_at<est_delivery)
);

insert into orders (name, created_at,est_delivery)
values('Shirt','2000-Nov-20 01:00AM','2000-Nov-25 01:00AM');