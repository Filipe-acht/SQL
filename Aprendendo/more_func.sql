--Funções:
--* CEIL é usada para arredondar um número para o número inteiro seguinte;
    SELECT ceil(121.22131) from dual = 122
--* FLOOR arredonda um número para o número inteiro anterior;
    SELECT floor(121.22131) from dual = 121
--*ABS: Retorna o valor absoluto de um número
    select abs(to_date('01/09/2021' - '10/09/2021'))  from dual;
--*VSIZE: retorna o tamanho
    select vsize('Tech on the net') from dual;
--* CONCAT: Concatenar    
    select concat('Filipe Nascimento',' Costa Soares') from dual;