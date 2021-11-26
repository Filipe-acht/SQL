/*
	REGEXP_REPLACE:
		
			SINTAXE -> regexp_replace(string
									, padrão
								   [, string_para_substituicao
								   [,posicao
								   [,ocorrencia
								   [,opção_de_match]]])
				* String: expressão
				* Padrão: expressão regular que estamos procurando dentro do string
				* String_para_substituicao: o novo string
				* Posição: (numero) para iniciar a pesquisa
				* Ocorrencia: que deve ser alterada
				* Opção_de_match:
					** 'c': case sensitivo - default
					** 'i': não case sensitivo
					** 'm': trata a origem de multiplas linhas
*/

select phone_number
	 , regexp_replace(phone_number, '\.','-')as phone 
  from hr.employees;
  
  
select phone_number
     , regexp_replace(phone_number, '\.','-',1,0,'c')as phone 
  from hr.employees;
  
select phone_number
     , regexp_replace(phone_number, '\.','-',1,0,'i')as phone 
  from hr.employees;  