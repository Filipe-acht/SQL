/*
O INSERT é responsável pela inserção de uma ou mais linhas em uma tabela,
além de permitir que as colunas de destino sejam informadas em qualquer ordem em que forem declaradas.
*/

INSERT INTO produtos
 (id, descricao, preco, categoria)
  (SELECT id, descricao, preco, categoria FROM produtos WHERE id = 1)

