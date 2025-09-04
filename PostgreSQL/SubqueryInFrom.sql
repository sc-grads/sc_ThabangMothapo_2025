select name, pw
FROM (
  select name,price/weight as pw
  from products
  ) as p
  WHERE pw>5;