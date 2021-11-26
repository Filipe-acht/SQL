--A função pivot vai transformar linhas em colunas
--o WITH cria uma basicamente uma tabela temporaria(tabela em memória)

SELECT * FROM 
    --Subquery com as colunas que serão colocadas no PIVOT
  (SELECT nr_cartao, nm_usuario,
          teste_id
      FROM <table>
  )
  PIVOT
  (
  COUNT(teste_id)
  --Nome da coluna que tem as linhas que serão transformadas em colunas
  FOR nm_usuario IN /*campos*/('nome1',
                     'nome2',
                     'nome3'))
ORDER BY nr_cartao;

--ex2:

WITH valores_pivot
AS
(
  SELECT <table>.dt_inclusao_plano dt_inclusao_plano , <table>.nm_usuario nm_usuario,
            <table>.teste_id tipo_plano
  FROM <table> t2
 INNER JOIN <table> t1
    ON t2.id_pi = t1.teste_id
)
SELECT * FROM valores_pivot
  PIVOT
 (
   COUNT(tipo_plano)
   FOR nm_usuario IN ('nome*****') 
 )
 ORDER BY dt_inclusao_plano ;

 
/*select t1.nr_cartao, p.nome,
       count(t1.teste_id)
from <table> t1
  inner join <table> p
        on t1.teste_id = p.id_pi
  group by t1.nr_cartao, p.nome
  order by t1.nr_cartao, p.nome;*/


