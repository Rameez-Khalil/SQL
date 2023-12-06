/*
    Give me the salary against each employee
*/

SELECT 
    concat(a.first_name, '-', a.last_name) AS "Name", 
    b.salary
    FROM employees AS a
    INNER JOIN salaries AS b USING(emp_no); 