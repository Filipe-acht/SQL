/*A função Decode tem como objetivo ‘decodificar’ o valor do campo selecionado, 

atribuindo um valor de resposta para cada valor de condição estipulado.*/

SELECT * FROM hr.employees;

SELECT first_name,
       salary,
       DECODE (job_id,'IT_PROG', salary * 1.2,
                      salary * 1.1) as aumento_salarial
  FROM hr.employees;

SELECT first_name,
       salary,
       DECODE (job_id,'IT_PROG', salary * 1.2,
                      salary * 1.1) as aumento_salarial
  FROM hr.employees
 WHERE employee_id = 100
    OR job_id = 'IT_PROG';
    
SELECT first_name,
       salary,
       DECODE (job_id,'IT_PROG', salary * 1.2,
                      'AD_PRES', salary * 1.3) as aumento_salarial
  FROM hr.employees
 WHERE employee_id = 100
    OR job_id IN ('IT_PROG', 'AD_VP'); 

SELECT first_name,
       salary,
       DECODE (job_id,'IT_PROG', salary * 1.2,
                      'AD_PRES', salary * 1.3,
                      salary) as aumento_salarial
  FROM hr.employees
 WHERE employee_id = 100
    OR job_id IN ('IT_PROG', 'AD_VP');