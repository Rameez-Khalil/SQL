/*
    INNER JOIN
    the result of innerjoin depends on what we are trying to match.
    table a has 1000 records, and table b only has 500 = > result will be 500
    Where I am selecting from and to what I am joining to  - IMP.
    
*/

/*
    Question - you want to know the original salary
    and also the salary at promotion.
*/


SELECT 
    a.emp_no, 
    concat(a.first_name, a.last_name) AS "Name", 
    b.salary, 
    COALESCE(c.title, 'No Title Change'), 
    COALESCE(c.from_date::TEXT, '-') AS "title taken"
FROM employees AS a
INNER JOIN salaries AS b ON a.emp_no = b.emp_no
INNER JOIN titles AS c ON c.emp_no = a.emp_no AND (
    c.from_date = b.from_date + INTERVAL '2 days' OR c.from_date =  b.from_date
)

ORDER BY a.emp_no; 

