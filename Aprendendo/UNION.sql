/*O operador UNION é utilizado para juntar os registros de duas ou mais tabelas. 
Assim como o operador JOIN, o UNION pode ser usado mais de uma vez na declaração. 
A limitação é que não se pode usar a cláusula ORDER BY em consultas de união.
*/

SELECT
 Nome
FROM
  professor
UNION
  SELECT
    Nome
  FROM
    coordenador