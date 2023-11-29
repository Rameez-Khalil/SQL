-- Show me titles by salaries.

/*
    First decide what you need to see.
    the decide from where you can get the data.
    then decide how will you get the dataset.
*/

/*
    Since we need to see empID, salary and title so we first select those.
    emp_id and salary can be received from slary table, and since title is present in another table
    we will add that in a subquery.
*/


-- This can also be solved with left outer join0
SELECT 
    emp_no, 
    salary, 
    from_date, 
    (
        SELECT title FROM titles AS t WHERE t.emp_no = s.emp_no AND t.from_date = s.from_date 
    )
    FROM salaries AS s
    ORDER BY emp_no; 