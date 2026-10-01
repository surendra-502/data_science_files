#window functions:A window function performs a calculation across a set of related rows without removing the individual rows.
#ranking functions

#Display employee_id, first_name, salary and assign a row number based on salary from highest to lowest.
select employee_id,first_name,salary,
row_number() over(order by salary desc) as row_no
from employees;