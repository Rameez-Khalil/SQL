SELECT 
    title, price, (
    SELECT (avg(price)) FROM products
    )
    FROM products;