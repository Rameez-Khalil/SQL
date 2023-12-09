/*
    Frame specifies a range of rows within a window function. 
    Frame clause specifies which rows are to be included in the frame. 
    
    KEYS: 
    Rows/Range - Specifies whether you want to use rows/range in a frame.
    Preceeding - rows before the current.
    Following - rows after the current. 
    Unbounded Preceeding/Following - Returns all before or after.
    Current Row - Your current row. 
    
*/


SELECT 
    emp_no AS "Employee ID", 
    count(salary) OVER(
        PARTITION BY emp_no
        ORDER BY salaries
        RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
        --Take into account everything before and after me which is why the result is the same  as of partition by. Since partition by creates chunks and we can apply function against it.
    )
    FROM salaries; 