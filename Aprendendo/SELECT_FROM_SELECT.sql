/*
Select from select:

permite que uma consulta seja feita dentro do resultado de outra consulta,
permitindo a construção de comandos SQL mais flexíveis,
 suportando o uso de funções agregadoras.

*/

SELECT * FROM (
  SELECT
    V.ID,
    V.VALOR,
    V.DATA,
    (SELECT
        COUNT(P.ID_VENDA)
     FROM
        FN_VENDAS_PARCELAS P
     WHERE
        (V.ID = P.ID_VENDA) AND
        (P.DATA_PAGAMENTO is NULL)
    ) AS QTD_PARCELAS_ABERTAS,
    (SELECT
        COUNT(P.ID_VENDA)
    FROM
        FN_VENDAS_PARCELAS P
    WHERE
        (V.ID = P.ID_VENDA) AND
        (P.DATA_PAGAMENTO is NOT NULL)
    ) AS QTD_PARCELAS_PAGAS
  FROM
    VENDAS V
  ) as TABELA
WHERE
  QTD_PARCELAS_PAGAS > 0
