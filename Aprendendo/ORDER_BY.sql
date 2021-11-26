/*ORDER BY organiza os resultados de acordo com uma ou mais colunas da tabela,
podendo definir a ordem do resultados como crescente ou decrescente.

- Caso não ordem não seja declarada, será crescente (ASC), por padrão.

- Sintaxe: 
SELECT
  [ coluna1, coluna2, ... | * ]
  FROM
  [ tabela ]
  ORDER BY
[ coluna1, coluna2 ] [ DESC | ASC ]

*/

SELECT
    *
    FROM
    aluno
    ORDER BY
  id ASC
