/*
	REGEXP_SUBSTR:
	
		SINTAXE -> regexp_substr(string
		                       , padrão
							   [,posição
							   [,ocorrencia
							   [,opção_de_match]]])
			* String: expressão
			* Padrão:  expressão regular que estamos procurando dentro da expressão
			* Posição: (número) para iniciar a pesquisa
			* Ocorrencia: que deve ser alterada
			* Opção_de_match:
					** 'c': case sensitivo - default
					** 'i': não case sensitivo
					** 'm': origem de multiplas linhas
*/

select name
     , regexp_substr(name,'^[A-Z][[:alpha:]]+ ') as first_name 
from ememployees_copy;

select name
     , regexp_substr(name,'^[A-Z][[:alpha:]]+ ',1,1,'c') as first_name 
from ememployees_copy;