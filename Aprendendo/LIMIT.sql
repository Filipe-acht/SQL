/*
LIMIT é uma cláusula SQL que especifica o número de linhas
 que devem ser retornadas no resultado de uma consulta.
*/

SELECT
    *
  FROM
    alunos
ORDER BY
    nome ASC
  LIMIT
    0, 3

SELECT
  *
FROM
  alunos
ORDER BY
  nome ASC
LIMIT
  3
OFFSET --Pular de 1 em um
  1