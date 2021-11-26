/*
	REGEXP_COUNT:
	
		SINTAXE -> regexp_count(string
							  , padrão
							  [,posição
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
     , regexp_count(name, 'a|e|i|o|u')as numero_de_combinacoes
from ememployees_copy;

select name
     , regexp_substr(name,' [A-Z][[:alpha:]]+$') as last_name
     , regexp_count(name, ' [A-Z][[:alpha:]]+$')as numero_de_combinacoes
from ememployees_copy;