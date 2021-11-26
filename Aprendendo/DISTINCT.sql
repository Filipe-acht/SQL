/*
Trata-se de uma cláusula para eliminar repetições em consultas,
considerando as colunas informadas na listagem de colunas do comando
SELECT que contenham valores iguais como o mesmo registro.

-Sintaxe:
SELECT
  [ DISTINCT ] [ coluna1, coluna2, … | * ]
FROM
  [ tabela ]
*/

SELECT
  DISTINCT nome,
           email
  FROM
  cliente

----------------------------
SELECT
  DISTINCT
    *
  FROM
  cliente