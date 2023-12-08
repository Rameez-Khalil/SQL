/*
    Show me the average salary against each item.
    In this case, max is getting applied againt salary col over the entire set of data. 
*/


/*
 1. Here we can see the limit has been set to 100, however, this max is still getting applied against  the entire set of data. 
2. Here window can be altered via filtering 
*/
SELECT *, 
    max(salary) OVER()
    FROM salaries
    WHERE salary < 100000
    LIMIT 100; 