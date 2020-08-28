

--1)List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT employees.emp_no, employees.last_name, employees.first_name, 
	employees.gender, salaries.salary
FROM employees
INNER JOIN salaries ON
employees.emp_no=salaries.emp_no;

--2)List employees who were hired in 1986.
SELECT 
	emp_no,
	last_name, 
	first_name,
	hire_date
	--EXTRACT (YEAR FROM hire_date) AS YEAR
FROM employees
WHERE hire_date >= '1/1/1986'
AND hire_date <= '12/31/1986';


--3) List the manager of each department include dept #, dept name,
	--manager's emp #, last, first, start and end dates

SELECT 
department.dept_no,department.dept_name,
department_managers.emp_no,
employees.last_name, employees.first_name,  
department_managers.from_date, department_managers.to_date
FROM department
INNER JOIN department_managers ON department_managers.dept_no = department.dept_no
INNER JOIN employees ON department_managers.emp_no = employees.emp_no;

--4)list dept of each employee  with employee #, last name, first name, dept name
SELECT
department_employees.emp_no,
employees.last_name, 
employees.first_name,
department.dept_name
FROM department
INNER JOIN department_employees ON department_employees.dept_no = department.dept_no
INNER JOIN employees ON department_employees.emp_no = employees.emp_no

--5) List all employees whose first name is "Hercules" and last name begins with a "B"
select * from employees
where first_name like '%Hercules%'
and last_name like 'B%';

--6)List all employees in the Sales department, including their 
	--employee number, last name, first name, and department name.
SELECT
department_employees.emp_no,
employees.last_name, 
employees.first_name,
department.dept_name
From department
Where dept_name = 'Sales'
INNER JOIN department_employees ON department_employees.dept_no = department.dept_no
INNER JOIN employees ON department_employees.emp_no = employees.emp_no;

--7) List all employees in the Sales and Development departments, including their employee number, 
		--last name, first name, and department name.
SELECT
department_employees.emp_no,
employees.last_name, 
employees.first_name,
department.dept_name
From department
Where dept_name = 'Sales'
And dept_name = 'Development'
INNER JOIN department_employees ON department_employees.dept_no = department.dept_no
INNER JOIN employees ON department_employees.emp_no = employees.emp_no;

--8) In descending order, list the frequency count of employee last names, i.e.,
		--how many employees share each last name.
SELECT last_name, COUNT(last_name) As "Last Name Count"
from employees
Group By last_name
Order By "Last Name Count" DESC;

--Epilogue
Select last_name, first_name, emp_no
FROM employees
Where emp_no = 499942;
