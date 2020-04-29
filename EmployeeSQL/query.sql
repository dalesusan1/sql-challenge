--- List the following details of each employee: employee number, last name, first name, gender, and salary

SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees e
LEFT JOIN salaries s
ON s.emp_no = e.emp_no


-- List employees who were hired in 1986
SELECT *
FROM employees e
WHERE e.hire_date > '1985-12-31' and e.hire_date < '1987-01-01'


--- List the manager of each department with the following information: department number, department name, 
----the manager's employee number, last name, first name, and start and end employment dates

SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name, dm.from_date, dm.to_date  
FROM dept_manager dm
LEFT JOIN departments d
ON d.dept_no = dm.dept_no
LEFT JOIN employees e
ON e.emp_no = dm.emp_no

-- List the department of each employee with the following information: employee number, last name, first name, and department name

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
LEFT JOIN dept_emp de
ON de.emp_no = e.emp_no
LEFT JOIN departments d
ON d.dept_no = de.dept_no


--List all employees whose first name is "Hercules" and last names begin with "B."
SELECT * 
FROM employees 
WHERE first_name = 'Hercules' and last_name like 'B%'


-- List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
LEFT JOIN dept_emp de
ON de.emp_no = e.emp_no
LEFT JOIN departments d
ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales'

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
LEFT JOIN dept_emp de
ON de.emp_no = e.emp_no
LEFT JOIN departments d
ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales' or d.dept_name = 'Development'

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name

SELECT last_name,
COUNT(last_name) AS "frequency"
FROM employees
GROUP BY last_name
ORDER BY
COUNT(last_name) DESC;














