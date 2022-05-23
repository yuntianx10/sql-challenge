-- 1. List the following details of each employee: 
-- employee number, last name, first name, sex, and salary.
select emp.emp_no, emp.last_name, emp.first_name, emp.sex, sa.salaries
from employees as emp
inner join salaries as sa on
emp.emp_no = sa.emp_no;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date 
from employees
where hire_date like '%1986';

-- 3. List the manager of each department with the following information:
-- department number, department name, the manager's employee number, last name, first name.
select dema.dept_no, de.dept_name, dema.emp_no, emp.last_name, emp.first_name
from dept_manager as dema
inner join employees as emp on
emp.emp_no = dema.emp_no
inner join departments as de on
de.dept_no = dema.dept_no
order by dept_no asc

-- 4. List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
select emp.emp_no, emp.last_name, emp.first_name, de.dept_name
from employees as emp
inner join dept_emp on 
dept_emp.emp_no = emp.emp_no
inner join departments as de on
dept_emp.dept_no = de.dept_no

-- 5. List first name, last name, and sex for employees 
-- whose first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex 
from employees
where first_name = 'Hercules'
and last_name like 'B%'

-- 6. List all employees in the Sales department, 
-- including their employee number, last name, first name, and department name.
select emp.emp_no, emp.last_name, emp.first_name, de.dept_name
from employees as emp
inner join dept_emp on 
dept_emp.emp_no = emp.emp_no
inner join departments as de on
dept_emp.dept_no = de.dept_no
where de.dept_name = 'Sales'

-- 7. List all employees in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.
select emp.emp_no, emp.last_name, emp.first_name, de.dept_name
from employees as emp
inner join dept_emp on 
dept_emp.emp_no = emp.emp_no
inner join departments as de on
dept_emp.dept_no = de.dept_no
where de.dept_name = 'Sales'
or de.dept_name = 'Development'

-- 8. List the frequency count of employee last names 
-- (i.e., how many employees share each last name) in descending order.
select count(*), last_name
from employees
group by last_name
order by last_name desc



