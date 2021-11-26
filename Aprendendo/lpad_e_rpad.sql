SELECT first_name, RPAD(first_name, 12)
  FROM hr.employees
 WHERE employee_id = 100;
 
SELECT first_name, RPAD(first_name, 12, '*')
  FROM hr.employees
 WHERE employee_id = 100;
 
SELECT first_name, RPAD(first_name, 3)
  FROM hr.employees
 WHERE employee_id = 100;
 
SELECT first_name, LPAD(first_name, 12)
  FROM hr.employees
 WHERE employee_id = 100;
 
SELECT first_name, LPAD(first_name, 12, '*')
  FROM hr.employees
 WHERE employee_id = 100;
 
SELECT first_name, LPAD(first_name, 3)
  FROM hr.employees
 WHERE employee_id = 100;
