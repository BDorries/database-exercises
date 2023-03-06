USE ymir_employees;

select first_name, last_name, birth_date
from employees
where hire_date IN (
    SELECT birth_date

    );