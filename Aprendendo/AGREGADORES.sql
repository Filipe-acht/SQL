/*SQL: Max, Min, Avg, Sum e Count

-Sintaxe: 
SELECT
  [ funcao-agregadora ](  [ coluna ] )
FROM
  [ tabela1, tabela2, … | * ]

*/

-- MAX
SELECT
  C.nome as Categoria,
  MAX(preco) as MAIOR_PRECO
FROM
  Produto P, categoria_produto C
WHERE
  P.id_categoria = C.id
GROUP BY
  C.id

-- MIN
SELECT
  C.nome as Categoria,
  MIN(preco) as MENOR_PRECO
FROM
  Produto P, categoria_produto C
WHERE
  P.id_categoria = C.id
GROUP BY
  C.id

-- COUNT
SELECT
  COUNT(id) as TOTAL
FROM
  produto

--SUM
SELECT
  P.nome,
  SUM(V.valor) as TOTAL_RECEBIDO
FROM
  produto P, venda_produto V
WHERE P.id = V.id_produto
GROUP BY P.id

--AVG
SELECT
  AVG(preco) as PRECO_MEDIO
FROM
  produto

-- COUNT & AVG
SELECT
  C.nome as Categoria,
  COUNT(P.ID) as TOTAL_DE_PRODUTOS,
  AVG(P.preco) as PRECO_MEDIO
FROM
  produto P, categoria_produto C
WHERE
  P.id_categoria = C.id
GROUP BY
  C.id