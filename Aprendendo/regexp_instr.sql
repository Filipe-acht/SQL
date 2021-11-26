/*
	REGEXP_INSTR:
		
		SINTAXE -> regexp_instr(string
							  , padrão
							  [,posição
							  [,ocorrencia
							  [,opção_de_retorno
							  [,opção_de_match]]])
			* String: expressão
			* Padrão:  expressão regular que estamos procurando dentro da expressão
			* Posição: (número) para iniciar a pesquisa
			* Ocorrencia: que deve ser alterada
			* Opção_de_retorno:
					** 0: retorna a posição exata que combina com o padrão da expressão regular
					** 1: retorna a próxima posição que combina com o padrão da expressão regular
			* Opção_de_match:
					** 'c': case sensitivo - default
					** 'i': não case sensitivo
					** 'm': origem de multiplas linhas
					
*/			

select name
     , regexp_instr(name, '^[A-Z][[:alpha:]]+ ') as position  
from ememployees_copy;

select name
     , regexp_instr(name, '^[A-Z][[:alpha:]]+ ',1,1,0,'c') as position  
from ememployees_copy;