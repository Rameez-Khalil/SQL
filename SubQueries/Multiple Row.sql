-- Now this returns one more rows depending upon the condition satisfaction.

SELECT 
    title, price, category
    FROM products
    WHERE category IN (
    SELECT category FROM categories
        WHERE categoryname IN ('Classics', 'Family', 'Classics')
    );


