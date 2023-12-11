SELECT * FROM salaries AS a
JOIN last_salary_change AS b ON a.emp_no = b.emp_no;