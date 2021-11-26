/*
Select as Field: uma forma de realizar uma subquery

permite que uma outra subconsulta do tipo SELECT seja utilizada como uma coluna da consulta principal,
permitindo a construção de comandos SQL mais flexíveis,
 suportando o uso de funções agregadoras.

-Sintaxe Completa:

SELECT
[
   tabela.coluna1, tabela.coluna2, … |
   * |
   (SUBQUERY) AS alias_campo,
   [FUNÇÃO AGREGADA] (tabela.coluna1)
]
FROM
[
  tabela1 |
  tabela1, tabela2 |
  (SUBQUERY) AS alias_tabela
]
WHERE
[
    tabela1.coluna1 LIKE (condição) |
    tabela1.coluna1 IN ( Valores | SUBQUERY ) |
      EXISTS (SUBQUERY)
]
GROUP BY
[
    Tabela1.coluna1, tabela1.coluna2 ...
]
HAVING
[
    tabela.coluna1 [FUNÇÕES AGREGADAS (tabela1.coluna1)]
]
ORDER BY
[
    tabela.coluna1, tabela.coluna2, ...
]

*/
--Sintaxe:


SELECT
    [
        coluna1,
        coluna2,
        [
           SELECT
               [ coluna ]
           FROM
              [ tabela1 ]
        ] AS coluna 3
    ... | *
    ]
    FROM
  [ tabela1, tabela2, ... ]