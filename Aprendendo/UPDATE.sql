/*
O UPDATE permite a alteração de um ou mais dados armazenados em uma tabela.
-Sintaxe:
UPDATE [ tabela ]
SET
  [ coluna_1 ] = [ novo_valor_1 ],
  [ coluna_2 ] = [ novo_valor_2 ]
WHERE
  [ condicao-de-busca ]
ORDER [ ordem ]
LIMIT [ limite ];
*/

UPDATE
  produtos
SET
  descrição = 'Lápis preto (unid)'
WHERE
  id = 2

UPDATE
  produtos
SET
  descrição = 'Resma de ofício com 500 folhas',
  preco = 18.50
WHERE
  id = 1 OR preco = 17.50
