--LOWER : Retorna a coluna toda em Minúsculo.

SELECT LOWER(A.DESCRICAO,1,6) NOME
FROM AUTOR A
WHERE A.IDAUTOR = 1
