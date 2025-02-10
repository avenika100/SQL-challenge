--Data Analysis

--1. List the employee number, last name, first name, sex, and salary
--of each employee.

select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
inner join salaries on
employees.emp_no=salaries.emp_no;

--2. List the first name, last name, and hire date for the employees 
--who were hired in 1986.

select first_name,last_name,hire_date
from employees
where extract(year from hire_date)=1986;


--3. List the manager of each department along with their department
--number, department name, employee number, last name, and first name.

Select departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
from dept_manager
left join departments on departments.dept_no = dept_manager.dept_no
left join employees on dept_manager.emp_no = employees.emp_no;


--4. List the department number for each employee along with that 
--employee’s employee number, last name, first name, and department name.

Select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp
left join departments on departments.dept_no = dept_emp.dept_no
left join employees on dept_emp.emp_no = employees.emp_no;


--5. List first name, last name, and sex of each employee whose first name
--is Hercules and whose last name begins with the letter B.

select first_name, last_name, sex
from employees
where first_name='Hercules'
and last_name like 'B%';


--6. List each employee in the Sales department, including their employee
--number, last name, and first name.


--7. List each employee in the Sales and Development departments,including
--their employee number, last name, first name, and department name.


--8. List the frequency counts, in descending order, of all the employee
--last names (that is, how many employees share each last name).

SELECT last_name, COUNT(*) AS frequency_count
FROM employees
GROUP BY last_name
ORDER BY frequency_count DESC;
