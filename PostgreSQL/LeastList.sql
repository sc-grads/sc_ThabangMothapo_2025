select name,weight,least(price*0.5,400)
FROM products;