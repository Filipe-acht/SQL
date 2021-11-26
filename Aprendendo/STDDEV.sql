/*
- Uma função para quem trabalha com dados analíticos
- A função STDDEV é a função que calcula o desvio padrão dos valores.
            -Desvio Padrão: Indica o quanto um conjunto de dados é uniforme
*/

SELECT department_id AS DPTO,
       hire_date,
       last_name,
       salary,
       
       STDDEV(salary) 
        OVER (PARTITION BY department_id ORDER BY hire_date) AS STDDEV
  FROM hr.employees
 WHERE department_id IN (60, 30, 40);