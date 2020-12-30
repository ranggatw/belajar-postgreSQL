-- Select Job id and Salary from employees

select 
distinct
  department_id
from employees;


select
  distinct (department_id, salary) as grouping,
  department_id,
  salary
from employees;