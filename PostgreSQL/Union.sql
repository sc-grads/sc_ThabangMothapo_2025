(
  select *
from products
order BY price DESC
limit 4
)
UNION all -- UNION  
(
select *
from products
order BY price/weight DESC
limit 4
  );