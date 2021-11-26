--A função REPLACE tem como objetivo possibilitar a substituição de caracteres específicos por outros.

SELECT REPLACE(A.DESCRICAO, 'YAMAZACK','Y.') NOME
FROM AUTOR A
WHERE A.IDAUTOR = 1

SELECT matricula, nome, REPLACE (nome,'A','*') FROM pcempr;