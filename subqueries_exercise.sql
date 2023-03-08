USE ymir_employees;

select first_name, last_name, hire_date
from employees
where hire_date IN (
    SELECT hire_date
    from employees
    where emp_no = 101010
    );

select title
from titles
where emp_no in (
    select emp_no
    from employees
    where first_name = 'Aamod'
);

select first_name, last_name, gender
from employees
where emp_no in(
    select emp_no
    from dept_manager
)
and gender = 'F';
