use hr;
select * from employees;
select concat(first_name,' ',last_name) as full_name,email,salary from employees;

select first_name,salary
from employees
where salary>10000;

select first_name,email,salary,hire_date
from employees
where year(hire_date)=2000;

select * from employees
where department_id=100;

select * from employees 
where department_id is not null and manager_id is not null;

select * from employees where first_name  like 'S%' and last_name like '%s';

select * from employees where first_name like 's____';

select * from employees where department_id not in (90,100);

select sum(salary) as total_salary
from employees;

select avg(salary) as average_salary from employees;

#Display the employee_id, first_name, and hire_date of all employees.
select employee_id,first_name,hire_date
from employees;

#Extract the year from hire_date.
select year(hire_date) as year
from employees;

#Extract the month from hire_date.
select month(hire_date) as month
from employees;

#Extract the day from hire_date.
select day(hire_date) as day
from employees;

#Display the employee name and the year in which they were hired
select concat(first_name,' ',last_name) as emp_name,hire_date
from employees;

#Find employees who were hired after January 1, 2005.
select * from employees 
where hire_date>'2000-01-01';

#Find employees who were hired before January 1, 2005
select * from employees
where hire_date<'2000-01-01';

#Find employees who were hired in the year 2006
select * from employees
where year(hire_date)=2006;

#Find employees who were hired in the month of June.
select * from employees 
where monthname(hire_date)='june';

#Find employees who were hired between 2004 and 2006
select * from employees
where year(hire_date) between 1999 and 2000;


#date calculation date_add,date_sub,datediff
#Display each employee's name and the date 5 years after their hiring date.
select first_name,date_add(hire_date,INTERVAL 5 YEAR) as date_after_5years
from employees;

#Display each employee's name and the date 1 month after their hiring date.
select first_name,date_add(hire_date,INTERVAL 1 month) as date_after_1month
from employees;

#Display each employee's name and the date 30 days after their hiring date.
select first_name,date_add(hire_date,interval 30 day) as date_after_30days
from employees;

#Find the number of years each employee has been working, approximately.
select employee_id,floor(datediff(current_date(),hire_date)/365) as exprience
from employees;

#Find how many days have passed since each employee was hired.
select employee_id,datediff(current_date(),hire_date) as days_passed
from employees;

#groupby
#Find the number of employees hired in each year.
select year(hire_date),count(employee_id) as emp_count
from employees
group by year(hire_date);

#Find the average salary of employees hired in each year.
select year(hire_date),floor(avg(salary))as avg_salary
from employees
group by year(hire_date);
