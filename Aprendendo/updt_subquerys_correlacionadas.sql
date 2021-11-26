/*
	UPDATE COM SUBCONSULTAS CORRELACIONADAS:
	
		SINTAXE:
			
				UPDATE tabelas alias 1
				SET(coluna1, coluna2,...) = (SELECT coluna1, coluna2, ...
												FROM tabela alias 2
												WHERE alias1.coluna1 = alias2.coluna1)
*/

CREATE TABLE departments_average_temp
(
    department_id NUMBER(4),
    salary_average NUMBER(8,2),
    commission_pct_average NUMBER(2,2)
);

--------
INSERT INTO departments_average_temp
    SELECT department_id
         , 0
         , 0
    FROM employees
    GROUP BY department_id;
    
COMMIT;

------
UPDATE departments_average_temp d
SET (d.salary_average, d.commission_pct_average) = ( SELECT ROUND(AVG(e.salary),2)
                                                          , AVG(e.commission_pct)
                                                     FROM employees e
                                                     WHERE d.department_id = e.department_id
                                                     GROUP BY e.department_id);
COMMIT;                                            


-------

SELECT * FROM departments_average_temp;

-----

SELECT * FROM departments_average_temp;