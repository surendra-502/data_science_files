SELECT * FROM EMPLOYEES;
#Retrieve all employees whose salary is greater than 8000.
SELECT *
FROM EMPLOYEES 
WHERE SALARY >=8000;

#Retrieve employees working in department 50.
SELECT  EMPLOYEE_ID,CONCAT(FIRST_NAME,' ',LAST_NAME) AS EMPLOYEE_NAME
FROM EMPLOYEES
WHERE DEPARTMENT_ID=50;

#Display employee first name, last name, and salary where salary is less than 5000.
SELECT FIRST_NAME,LAST_NAME,SALARY
FROM EMPLOYEES
WHERE SALARY<=5000;

#Retrieve employees hired after January 1, 1998.
SELECT * 
FROM EMPLOYEES 
WHERE HIRE_DATE  > '1998-01-01';

SELECT MAX(HIRE_DATE),MIN(HIRE_DATE)
FROM EMPLOYEES;

#Retrieve employees whose commission percentage is NULL.
SELECT *
FROM EMPLOYEES 
WHERE COMMISSION_PCT IS NULL;

#Retrieve employees from department 90 whose salary is greater than 15000.
SELECT * 
FROM EMPLOYEES
WHERE DEPARTMENT_ID=90 AND SALARY>15000;

#Retrieve employees who belong to department 60 or department 100.
SELECT * 
FROM EMPLOYEES 
WHERE DEPARTMENT_ID=60 OR DEPARTMENT_ID=100;

#Retrieve employees whose salary is between 5000 and 10000 and department_id is 50
SELECT * 
FROM EMPLOYEES 
WHERE SALARY BETWEEN 5000 AND 10000 AND DEPARTMENT_ID=50;

#Retrieve employees whose job_id is 'IT_PROG' and salary is greater than 7000.
SELECT * 
FROM EMPLOYEES 
WHERE JOB_ID='IT_PROG' AND SALARY > 7000;

#Retrieve employees from department 50 or salary greater than 12000.
SELECT * FROM EMPLOYEES
WHERE DEPARTMENT_ID =50 OR SALARY > 12000;

#Find employees whose first name starts with 'A'.
SELECT * 
FROM EMPLOYEES 
WHERE FIRST_NAME LIKE 'A%';

#Find employees whose last name ends with 'n'
SELECT * 
FROM EMPLOYEES
WHERE LAST_NAME LIKE '%N';

#Find employees whose first name contains 'ar'.
SELECT*
FROM EMPLOYEES 
WHERE FIRST_NAME LIKE '%AR%';

#Find employees whose first name starts with 'S' and ends with 'n'.
SELECT *
FROM EMPLOYEES
WHERE FIRST_NAME LIKE 'S%N';

#Find employees whose first name has exactly 4 characters
SELECT *
FROM EMPLOYEES
WHERE FIRST_NAME LIKE '____';

#Find employees whose last name has exactly 6 characters
SELECT *
FROM EMPLOYEES
WHERE LAST_NAME LIKE '______';

#Find employees whose email starts with 'S'
SELECT * 
FROM EMPLOYEES 
WHERE EMAIL LIKE 'S%';

#Retrieve employees whose salary is between 7000 and 12000.
SELECT* 
FROM EMPLOYEES
WHERE SALARY BETWEEN 7000 AND 12000;

#Retrieve employees hired between '1999-01-01' and '2005-12-31'
SELECT *
FROM EMPLOYEES 
WHERE HIRE_DATE BETWEEN '1999-01-01' and '2002-12-31';

#Retrieve employees whose employee_id is between 120 and 150
SELECT *
FROM EMPLOYEES 
WHERE EMPLOYEE_ID BETWEEN 120 AND 150;

#Retrieve employees working in departments 50, 60, and 90.
SELECT *
FROM EMPLOYEES 
WHERE DEPARTMENT_ID IN(50,60,90);

#Retrieve employees not working in departments 50, 60, and 90
SELECT *
FROM EMPLOYEES 
WHERE DEPARTMENT_ID NOT IN(50,60,90);

#Retrieve employees whose manager_id is 100, 101, or 102.
SELECT* 
FROM EMPLOYEES 
WHERE MANAGER_ID IN(100,101,102);

#Retrieve employees whose job_id is not 'IT_PROG' or 'SA_REP'.
SELECT*
FROM EMPLOYEES 
WHERE JOB_ID  NOT IN( 'SA_REP' , 'IT_PROG');

#Display Full Name and Salary.
SELECT CONCAT(FIRST_NAME,LAST_NAME) AS FULL_NAME,SALARY
FROM EMPLOYEES;

#Display Full Name and Email.
SELECT CONCAT(FIRST_NAME,LAST_NAME) AS FULL_NAME,EMAIL
FROM EMPLOYEES;

#Display Full Name only for employees whose salary is greater than 10000
SELECT CONCAT(FIRST_NAME,LAST_NAME) AS FULL_NAME,SALARY
FROM EMPLOYEES
WHERE SALARY>10000;

#29. Find employees whose:
#First name starts with 'S'
#Salary greater than 5000
#Department ID is 50
SELECT * 
FROM EMPLOYEES
WHERE FIRST_NAME LIKE 'S%' AND SALARY>5000 AND DEPARTMENT_ID=50;

#Find employees whose:
# Last name ends with 'a'
# Salary between 5000 and 10000
SELECT * 
FROM EMPLOYEES
WHERE FIRST_NAME LIKE '%A'
AND SALARY BETWEEN 5000 AND 10000;

#Find employees whose first name contains exactly 5 letters and starts with 'A'.
SELECT *
FROM EMPLOYEES
WHERE FIRST_NAME LIKE 'A____';

#. Retrieve employees where department_id is NULL and salary greater than 5000.
SELECT * 
FROM EMPLOYEES 
WHERE DEPARTMENT_ID IS NULL 
AND SALARY > 5000;

#Find employees whose email contains the letter 'K'.
SELECT* 
FROM EMPLOYEES 
WHERE EMAIL LIKE '%K%';

#Display:EMPLOYEE NAME | EMAIL | SALARY
#Only for employees whose salary is greater than 10000 and department_id is 90
SELECT CONCAT(FIRST_NAME,LAST_NAME) AS EMPLOYEE_NAME,EMAIL,SALARY,DEPARTMENT_ID
FROM EMPLOYEES
WHERE SALARY>10000
AND DEPARTMENT_ID=90;


