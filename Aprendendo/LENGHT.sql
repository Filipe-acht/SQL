--LENGTH : Retorna a quantidade de caracteres de uma string

SELECT LENGTH(A.DESCRICAO) NOME
FROM AUTOR A
WHERE A.IDAUTOR = 1

/*Outro exemplo: Decode com o Length, 
onde caso retorne 11 caracteres, 
teremos um coluna TipoAutor, 
indicando se é um PF ou PJ*/

SELECT DECODE(LENGTH(A.CGCCPF),11, 'PF','PJ') TIPOAUTOR
FROM AUTOR A
WHERE A.IDAUTOR = 1