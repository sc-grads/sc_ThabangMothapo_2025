 select name,price 
 FROM products
 WHERE price > (
   select max(price) FROM products WHERE department = 'Toys'
   );