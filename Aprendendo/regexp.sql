/*
RegExp - Expressões regulares
[] - buscar caracteres
[0-9] buscar qualquer número entre 0 e 9
[0][0] localiza 00

Quantificadores:
[0]{2} - significa duas ocorrências de 0
[0-9]{6} - 6 primeiros digitos de todas as linhas
$ - fim da linha
^ -  começo da linha
+ - número qualquer de ocorrências
^[0-9] +[a-z]$
^[0-9] +[-][a-z]$

Validar o formato de um cpf:
[0-9]{3}[.][0-9]{3}[.][-][0-9]{2}

Data: ([0-9]{4})[-]([0-9]{2})[-]([0-9]{2})
		"2020-12-20"
		$3/$2/$1  = "20/12/2020" 
*/		
--REGEXP_SUBSTR:
    SELECT REGEXP_SUBSTR('Teste1234 667','[667]+') "REGEXPR_SUBSTR"
      FROM DUAL;
--REGEXPR_REPLACE:
    SELECT REGEXP_REPLACE(TEXTO,'\S(([A-ZA-Z]+))',' ') 
    FROM DUAL;
   WHERE ID = 1