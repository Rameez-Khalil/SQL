/*
    Returns a value evaluated against the first row
    within its partition.
*/


-- I want to know how my price compares to the item with the lowest price in the same category.

SELECT 
    prod_id, 
    price, 
    category , 
    first_value(price) OVER(
        PARTITION BY category 
        ORDER BY price 
    ) AS "Cheapeast in category"
    FROM products; 