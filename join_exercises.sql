USE ymir_employees;

SELECT dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees e
JOIN dept_manager dm on e.emp_no = dm.emp_no
JOIN departments d on dm.dept_no = d.dept_no
WHERE to_date LIKE '9999%';

SELECT dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees e
JOIN dept_manager dm on e.emp_no = dm.emp_no
JOIN departments d on dm.dept_no = d.dept_no
WHERE to_date LIKE '9999%'
    AND (e.gender = 'F');

# d009
SELECT t.title, COUNT(*) as 'Total'
FROM employees e
JOIN titles t on e.emp_no = t.emp_no
JOIN dept_emp de on e.emp_no = de.emp_no
WHERE de.to_date LIKE '9999%'
    AND (de.dept_no = 'd009'
    AND t.to_date LIKE '9999%')
GROUP BY t.title;

SELECT dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', s.salary
FROM employees e
JOIN dept_manager dm on e.emp_no = dm.emp_no
JOIN departments d on dm.dept_no = d.dept_no
JOIN salaries s on dm.emp_no = s.emp_no
WHERE dm.to_date LIKE '9999%'
    AND s.to_date LIKE '9999%'
GROUP BY dept_name;

