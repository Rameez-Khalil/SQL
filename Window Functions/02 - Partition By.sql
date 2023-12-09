/*
    Partition By: 
        Divide rows into groups so each function can be applied againt each group.
        //Show me how much a difference is there b/w what an employee is earning and what the depart
        average salary is. 
*/

/*
    This is going to give us back the average salary per department along with what the resourc is earning.
*/

SELECT 
    a.emp_no AS "Empoyee ID", 
    a.salary AS "Salary", 
    b.dept_no AS "Department COde", 
    avg(a.salary) OVER(
        PARTITION BY b.dept_no
    )
    FROM salaries AS a
    INNER JOIN dept_emp AS b USING(emp_no); 