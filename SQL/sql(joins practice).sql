#joins
select * from employees;
select * from departments;
#Display employee name and department name using employees and departments.
select concat(e.first_name,' ',e.last_name) as emp_name,d.department_name
from employees e
join departments d
on e.department_id=d.department_id;

#Display:,employee_id,employee name,department_id,department name
select employee_id,concat(e.first_name,' ',e.last_name) as emp_name,d.department_id,d.department_name
from employees e
join departments d
on e.department_id=d.department_id;

#Display all employees who work in the IT department.
select concat(e.first_name,' ',e.last_name) as emp_name,d.department_name
from employees e 
left join departments d 
on e.department_id=d.department_id
where d.department_name='IT';

#Display employee name, salary, and department name for employees earning more than 10,000.
select concat(e.first_name,' ',e.last_name) as emp_name,e.salary,d.department_name
from employees e 
join departments d
on e.department_id=d.department_id
where e.salary>10000;

#Display employee name, job title, and salary using employees and jobs.
select concat(e.first_name,' ',e.last_name) as emp_name,j.job_title,e.salary
from employees e 
left join jobs j 
on e.job_id=j.job_id;

#Display all employees, including employees who are not assigned to a department.
select concat(e.first_name,' ',e.last_name) as emp_name,d.department_name,d.department_id
from employees e 
left join departments d 
on e.department_id=d.department_id;

#Display all departments and the number of employees in each department.
select d.department_name,count(e.employee_id) as emp_count
from departments d 
left join employees e 
on d.department_id=e.department_id
group by d.department_name;

#Find departments that have no employees.
select d.department_name,count(e.employee_id) as emp_count
from departments d 
left join employees e 
on d.department_id=e.department_id
group by d.department_name
having emp_count=0;

#Find the average salary of each department.
select avg(e.salary) as avg_salary, d.department_name
from employees e 
join departments d 
on e.department_id=d.department_id
group by d.department_name;

#Find departments where the average salary is greater than 8,000.
select avg(e.salary) as avg_salary, d.department_name
from employees e 
join departments d 
on e.department_id=d.department_id
group by d.department_name
having avg_salary >8000;

#multiple joins
#Display:employee_name | job_title | department_name
select concat(first_name,' ',last_name) as emp_name,d.department_name,j.job_title
from employees e 
join departments d 
on e.department_id=d.department_id
join jobs j
on e.job_id=j.job_id;

#Display:employee_name | salary | job_title | department_name | city
select concat(first_name,' ',last_name) as emp_name,e.salary,j.job_title,d.department_name,l.city
from employees e 
join departments d 
on e.department_id=d.department_id
join jobs j 
on e.job_id=j.job_id
join locations l 
on d.location_id=l.location_id;

#Find the employees who work in departments located in Seattle.
select concat(first_name,' ',last_name) as emp_name,e.salary,j.job_title,d.department_name,l.city
from employees e 
join departments d 
on e.department_id=d.department_id
join jobs j 
on e.job_id=j.job_id
join locations l 
on d.location_id=l.location_id
where l.city='Seattle';

#SELF JOIN
#Display:employee_name | manager_name
select concat(e.first_name,' ',e.last_name) as emp_name,concat(m.first_name,' ',m.last_name) as manager_name
from employees e 
join employees m 
on m.employee_id=e.manager_id;


#Find employees whose salary is greater than their manager's salary.
select concat(e.first_name,' ',e.last_name) as emp_name,e.salary as emp_salary,m.salary as manager_salary
from employees e 
join employees m 
on m.employee_id=e.manager_id
where e.salary>m.salary;