--CONCAT : Concatena duas strings somente.

SELECT CONCAT(A.DESCRICAO,';') NOME
FROM AUTOR A
WHERE A.IDAUTOR = 1
