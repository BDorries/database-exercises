USE ymir_employees;

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena','Vidya','Maya')
ORDER BY last_name ASC, first_name ASC;

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

SELECT emp_no, CONCAT(first_name,' ', last_name), gender
FROM employees
WHERE first_name IN ('Irena','Vidya','Maya')
  AND gender = 'M'
  AND (last_name LIKE 'E%'
    OR last_name LIKE '%E')
ORDER BY emp_no DESC;

SELECT emp_no, CONCAT(first_name,' ', last_name)
FROM employees
WHERE birth_date LIKE '%12-25';

SELECT emp_no, CONCAT(first_name,' ', last_name)
FROM employees
WHERE birth_date LIKE '%12-25'
    AND  hire_date BETWEEN '1990-01-01' AND '1999-12-31';

SELECT emp_no, CONCAT(first_name,' ', last_name)
FROM employees
WHERE birth_date LIKE '%12-25'
  AND  hire_date BETWEEN '1990-01-01' AND '1999-12-31'
ORDER BY birth_date ASC,
hire_date DESC;

SELECT emp_no, CONCAT(first_name,' ', last_name) AS full_name,datediff(curdate(),hire_date) AS current_time_employed
FROM employees
WHERE birth_date LIKE '%12-25'
  AND  hire_date BETWEEN '1990-01-01' AND '1999-12-31'
ORDER BY birth_date ASC,
         hire_date DESC;