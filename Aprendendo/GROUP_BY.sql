/*GROUP BY é uma cláusula SQL que agrupa um conjunto de dados similares,
podendo utilizar mais de um campo para realizar esta tarefa.
*/
SELECT
  SUM(VP.valor) AS TOTAL,
  C.nome as CATEGORIA
FROM
  produto P, categoria_produto C, venda_produto VP
WHERE
  P.id_categoria = C.id AND
  VP.id_produto = P.id
GROUP BY
  C.id