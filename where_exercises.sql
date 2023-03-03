SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena','Vidya','Maya');

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
   OR last_name LIKE '%E';

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%E%';

SELECT emp_no, first_name, last_name, gender
FROM employees
WHERE first_name IN ('Irena','Vidya','Maya')
AND gender = 'M';

SELECT emp_no, first_name, last_name, gender
FROM employees
WHERE first_name IN ('Irena','Vidya','Maya')
   AND gender = 'M'
   AND (last_name LIKE 'E%'
   OR last_name LIKE '%E');

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%q%'
     AND last_name NOT LIKE '%qu%';