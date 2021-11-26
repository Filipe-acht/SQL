SELECT trunc(sysdate) AS Data_atual, 
       last_day(trunc(sysdate)) AS ultimo_dia_mes
  FROM dual;
  
SELECT last_day(to_date('10/02/2016', 'DD/MM/YY')) AS ultimo_dia_mes
  FROM dual;
  
SELECT hire_date, last_day(hire_date) AS Ultimo_dia_mes
  FROM hr.employees
 WHERE employee_id =114;