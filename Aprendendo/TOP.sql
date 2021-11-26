/*O TOP é uma cláusula SQL que especifica o número de
 linhas que devem ser retornadas no resultado de uma consulta.
*/
SELECT
  TOP 3
  *
FROM
  aluno
ORDER BY
  nome ASC

-----------------------------------------
SELECT TOP 3
   P.nome,
   SUM(VN.valor) as TOTAL
  FROM
   produto P, venda_produto VN
  WHERE
   P.id = VN.id_produto
  GROUP BY
   P.id
  ORDER BY
   TOTAL DESC