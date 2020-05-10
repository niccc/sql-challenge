--1
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees JOIN salaries ON employees.emp_no = salaries.emp_no;

--2
SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1987-01-01';

--3
SELECT dept_manager.emp_no, employees.first_name, employees.last_name, departments.dept_name, departments.dept_no
FROM dept_manager JOIN departments ON dept_manager.dept_no = departments.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no;

--4
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no;

--5
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--6
SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
FROM departments JOIN dept_emp ON departments.dept_no = dept_emp.dept_no
JOIN employees ON dept_emp.emp_no = employees.emp_no
WHERE departments.dept_name = 'Sales';

--7
SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
FROM departments JOIN dept_emp ON departments.dept_no = dept_emp.dept_no
JOIN employees ON dept_emp.emp_no = employees.emp_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development';

--8
SELECT COUNT(first_name) as tally, last_name
FROM employees
GROUP BY last_name
ORDER BY tally DESC ;
