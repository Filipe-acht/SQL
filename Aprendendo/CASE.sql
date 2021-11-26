/*
A função CASE é utilizada para determinar a exibição do resultado
a partir de condições especificadas dentro da função.
*/

SELECT first_name, salary,
CASE
  WHEN salary  1000 THEN salary * 1.2
  WHEN salary = 1000 AND salary = 3000 THEN salary * 1.1
  ELSE salary * 1.05
END AS NEW_SALARY
FROM hr.employees;