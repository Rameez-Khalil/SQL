/*
    1. Filtering against each group.
    2. Having applies filter against each group, whereas where applies filter against each row. 
    3. Aggregate functions are not allowed in where.
    4. Having is allowed because it will filter against each group. 
*/


--show me the total count of employees against each department.
-- select * from employees; 

-- select * from departments; 
-- select * from dept_emp; 


SELECT 
    d.dept_name AS "Department Name", 
    count(e.emp_no) AS "Employee Count"
    FROM employees AS e
    INNER JOIN dept_emp AS de ON de.emp_no = e.emp_no
    INNER JOIN departments AS d ON de.dept_no = d.dept_no
--     where gender = 'F'
    GROUP BY d.dept_name
    HAVING count(e.emp_no)>25000; 
	order by count(e.emp_no) asc //this will order the data set in ascending order. 



