-- Exibi o resto da divisão de um valor por outro
SELECT last_name, salary, MOD(salary, 5000)
  FROM hr.employees
 WHERE employee_id IN (150, 174, 176, 178);
 
SELECT MOD(10,2)
  FROM dual;