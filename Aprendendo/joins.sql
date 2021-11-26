/*
JOIN utilizando sintaxe ORACLE
    * Equijoin;
    * Nonequijoin;
    * Outer join;
    * Self-join;
*/
-- Equijoin: a condição de ligação vai no WHERE

 SELECT e.employee_id
     , e.last_name
     , e.department_id
     , d.department_id
FROM employees e
   , departments d 
WHERE e.department_id = d.department_id;

-- Nonequijoin: a condição de ligação também fica no WHERE
/*
 SELECT e.employee_id
     , e.salary
     , j.grade_level
     , j.highest_sal
FROM employees e
   , job_grades j
WHERE nvl(e.salary, 0) BETWEEN j.lowest_sal AND j.highest_sal
ORDER BY e.salary;
*/

/* Outer Join(+): é quando faço um join de uma tabela que pode não ter correspondente em outra tabela e vai no WHERE ao lado da coluna
   Coloca o (+) do lado da coluna que pode não ter valor
*/
/*
 SELECT e.first_name
     , e.last_name
     , d.department_id
     , d.department_name
FROM employees e, departments d
WHERE e.department_id = d.department_id (+)
ORDER BY e.department_id;
*/

-- Self-join: tabela x com ela mesmo e também vai no WHERE(usar alias diferentes)
/*
 SELECT empregado.employee_id
     , empregado.last_name
     , gerente.employee_id
     , gerente.last_name
FROM employees empregado
   , employees gerente
WHERE empregado.manager_id = gerente.employee_id
ORDER BY empregado.employee_id;*/