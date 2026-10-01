select department_id,avg(salary) as avg_salaryofdepartment from employees
group by department_id ;

#max salary of employees based on department they are working

select department_id,max(salary)as max_salary
from employees
group by department_id;

select department_id,count(employee_id)as emp_count from employees
group by department_id
having emp_count >10; 

select * from employees;

select department_id,avg(salary) as avg_salary
from employees
group by department_id
having avg_salary >10000;

select concat(first_name,' ',last_name) as emp_name,salary
from employees
order by salary desc
limit 5;

#Find all employees whose salary is greater than 10,000.
select * from employees
where salary>10000;

#Find employees whose salary is between 5,000 and 10,000.
select * from employees
where salary between 5000 and 10000;

#Find employees who belong to department 50.
select * from employees
where department_id=50;

#Find employees whose job is IT_PROG.
select * from employees 
where job_id='IT_PROG';

#Find employees hired after 2005-01-01
select * from employees
where hire_date>='2000-01-01';

#Find the total number of employees.
select count(employee_id) as total_emps
from employees;

#Find the average salary of all employees.
select avg(salary)as avg_salary
from employees;

#Find the highest salary.
select max(salary)as highest_salary
from employees;

select salary from employees
order by salary desc;

#Find the lowest salary.
select min(salary)as lowest_salary
from employees;

#Find the total salary paid to all employees.
select sum(salary) as total_salary
from employees;

#groupby
#Find the number of employees in each department.
select department_id,count(*) as noof_emp
from employees
group by department_id;

#Find the average salary in each department.
select department_id,avg(salary) as avg_salary
from employees
group by department_id;

#Find the maximum salary in each department
select department_id ,max(salary) as max_salary
from employees
group by department_id;

#Find the minimum salary in each department.
select department_id,min(salary) as min_salary
from employees
group by department_id;

#Find the total salary paid by each department.
select department_id ,sum(salary) as total_salary
from employees
group by department_id;

#where and group by
#Find the average salary of employees earning more than 5,000, for each department.
select department_id,avg(salary)as avg_salary
from employees
where salary>5000
group by department_id;

#Find the number of employees hired after 2000, for each department.
select department_id,count(*) as noof_emp
from employees
where year(hire_date) >=2000
group by department_id;

#Find the maximum salary of employees whose salary is greater than 5,000, for each department.
select department_id,max(salary) as max_salary
from employees
where salary >7000
group by department_id;

#Find the total salary of employees working in departments 50, 60, and 80, for each department.
select department_id,sum(salary)as total_salary
from employees
where department_id in(50,60, 80)
group by department_id;

select * from employees;

#Find the average salary of employees hired after 2005, for each job.
select job_id,avg(salary) as avg_salary
from employees
where year(hire_date)>=2000
group by job_id;

#having
#Find departments having more than 5 employees.
select department_id,count(employee_id) as emp_count
from employees
group by department_id
having emp_count>5;

#Find departments where the average salary is greater than 7,000.
select department_id,avg(salary)as avg_salary
from employees
group by department_id
having avg_salary>7000;







