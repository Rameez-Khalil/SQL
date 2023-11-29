-- Returns zero or one row.

SELECT 
    emp_no,
    salary, 
    (SELECT avg(salary) FROM salaries)
    FROM salaries;