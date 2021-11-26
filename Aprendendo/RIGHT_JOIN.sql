/*A cláusula RIGHT JOIN ou RIGHT OUTER JOIN retorna todos os dados encontrados na tabela à direita de JOIN.
Caso não existam dados associados entre as tabelas à esquerda e à direita de JOIN,
serão retornados valores nulos.

-Sintaxe:
SELECT
  [ tabela1.coluna1, tabela1.coluna2, ... | N.coluna1, N.coluna2, … ]
FROM
  [ tabela1 | tabela1 F ]
RIGHT JOIN
  [ tabelaX | tabelaX N]
ON
  [ tabelaX.coluna1 = tabela1.coluna1 | N.coluna1 = F.coluna1 ]
 */

 SELECT
  turma.nome as Turma,
  professor.nome as Professor
FROM
  professor
RIGHT JOIN
  turma
ON
  turma.id = professor.idturma