  (
  select id,name
from products
order BY price DESC
limit 4
)
except  
(
select id,name
from products
order BY price/weight DESC
limit 6
  );
