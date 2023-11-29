

-- Filter from_date where it equals to the max from_date from salaries
-- where emp_no is equal to the current emp_no


SELECT 
    emp_no, salary, from_date
    FROM salaries AS s
    WHERE from_date =  (
        SELECT max(s2.from_date) AS max
        FROM salaries AS s2
        WHERE s2.emp_no = s.emp_no
    )
    ORDER BY emp_no;