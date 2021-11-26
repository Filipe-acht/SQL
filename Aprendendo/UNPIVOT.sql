--O UNPIVOT executa praticamente a operação inversa de PIVOT, transformando colunas em linhas.
-- A função UNPIVOT desfaz uma matriz de informações conforme as necessidades do usuário.

CREATE table matriz_gerentes 
 AS
 WITH valores_pivot
AS
 (
  SELECT e.manager_id manager_id, d.department_name department_name, 
         e.employee_id qtd_empregados
  FROM hr.employees e
 INNER JOIN hr.departments d
    ON e.department_id = d.department_id
 )
 SELECT * FROM valores_pivot
   PIVOT
  (
    COUNT(qtd_empregados)
    FOR department_name IN ('IT' AS IT, 'Administration' AS Administration, 
                            'Executive' AS Executive, 'Marketing' AS Marketing,
                            'Purchasing' AS Purchasing, 'Sales' AS Sales, 
                            'Shipping' AS Shipping) 
  )
  ORDER BY manager_id;

  -----UNPIVOT-----

    
SELECT * FROM matriz_gerentes;

SELECT *
  FROM matriz_gerentes
UNPIVOT
(
  qtd_empregados
   FOR department_name IN (IT, Administration, 
                           Executive, Marketing,
                           Purchasing, Sales, 
                           Shipping)
)
ORDER BY manager_id, department_name
