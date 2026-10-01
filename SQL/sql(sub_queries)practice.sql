#Find employees who earn more than the average salary of all employees.
select concat(first_name,' ',last_name)as emp_name,salary
from employees
where salary>(select avg(salary) from employees);

#Find the employee(s) who earn the highest salary.
select * from employees
where salary=(select max(salary) from employees);

#Find the employee(s) who earn the lowest salary.
select * from employees
where salary=(select min(salary) from employees);

#Find employees who earn more than 10,000 and whose salary is also greater than the average salary.
select * from employees
where salary>10000 and salary>(select avg(salary) from employees);

#Find employees who work in the same department as 'Steven King'.
select * from employees
where department_id=(select department_id from employees
where first_name='steven' and
last_name='king');


#Find employees who work in the IT department using a subquery.
select * from employees
where department_id=(select department_id from departments
where department_name='IT');

#Find employees who have the same job as 'John Russell'.
select * from employees
where job_id=(select job_id from employees
              where concat(first_name,' ',last_name)='john russell');
              
#Find employees who work in the same department as the employee with employee_id = 105.
select * from employees
where department_id=
      (select department_id from employees
       where employee_id=105);         
       
       

#in /not in
#Find employees who work in departments located in Seattle.
select * from employees
where department_id in (select department_id from departments
					where location_id in(select location_id from locations
                    where city = 'Seattle'));


#Find employees who do not work in the same departments as employees in department 50.
select * from employees
where department_id not in (select department_id from employees where department_id =50);

#Find departments that have at least one employee earning more than 10,000
select department_name from departments
where department_id in (select department_id from employees
					   where salary >10000);
                       
                    
 #Correlated Subqueries                   
 #Find employees whose salary is greater than the average salary of their own department                   
 select * from employees e 
 where salary > (select avg(e2.salary) as avg_salary
                from employees e2
                where e2.department_id=e.department_id);
                
                
#Find employees who earn the highest salary within their department.
select * from employees e
where salary=(select max(e2.salary)
              from employees e2
              where e2.department_id=e.department_id);
              
              
#Find employees who earn more than every employee in department 50.
select * from employees 
where salary> all(select salary from
             employees 
             where department_id=50);
             
             
#Find employees whose salary is less than the average salary of their department.
select * from employees e 
where salary <(select avg(e2.salary) from employees e2
              where e2.department_id=e.department_id);
              
#Find employees whose salary is equal to the highest salary in their department
select * from employees e 
where salary=(select max(e2.salary) from employees e2
              where e2.department_id=e.department_id);
              
              
 #Find employees whose salary is equal to the lowest salary in their department.
 select * from employees e 
 where salary=(select min(e2.salary) from employees e2
              where e2.department_id=e.department_id);
              
	
 #Find employees whose salary is greater than the average salary of employees having the same job_id.
 select * from employees e
 where salary> (select avg(e2.salary) from employees e2
			    where e2.job_id=e.job_id);
                
	

