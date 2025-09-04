  (
  select *
from products
order BY price DESC
limit 4
)
INTERSECT  
(
select *
from products
order BY price/weight DESC
limit 4
  );