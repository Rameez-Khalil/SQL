/*
    Number the current row within the partition 
    starting from 1 regardless of  framing. 
*/

-- Question - I want to know where my product is positioned 
-- in the category by price. 


SELECT 
    prod_id 
    price, 
    category, 
    row_number() OVER(PARTITION BY category ORDER BY price)
    AS "Position In Category By Price"
    FROM products; 