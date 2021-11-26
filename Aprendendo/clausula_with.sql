WITH max_salaries as (
    select department_id
         , max(salary) maximum_salary
         , round(avg(salary),2) average_salary
    from employees e
    group by department_id
)

SELECT e.employee_id
     , e.salary
     , e.department_id
     , max_salaries.maximum_salary
     , max_salaries.average_salary
FROM employees e
    JOIN max_salaries on (e.department_id = max_salaries.department_id)
    ;