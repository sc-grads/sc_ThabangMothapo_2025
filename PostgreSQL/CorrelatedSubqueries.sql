select name,department,price
from products as p1 
where p1.price=(
select max(price)
from products as p2
where p1.department =p2.department
);