/*
REGEXP_LIKE:

	SINTAXE -> regexp_like(string, padrão[, opção+de_match])
		* String: caracteres que serão utilizados na pesquisa;	
		* padrão: a expressão regular que procuramos dentro da string
		* opção_de_match:
				** 'c': case sensitivo para combinar(match)  - default
				** 'i': não case sensitivo para combinar(match)
				** 'm': trata a origem como múltiplas linhas
*/

select * from hr.employees
where regexp_like(first_name, '^Ste(v|ph)en$');


select * from hr.employees
where regexp_like(first_name, '^Ste(v|ph)en$', 'i');				