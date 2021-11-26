/*A função NEXT_DAY recebe 2 parâmetros de entrada, onde o primeiro é uma data
e o segundo é o dia da semana que eu quero trazer a próxima data.
Esta função retorna o próximo dia da semana em comparação a primeira data.
*/

SELECT next_day(TO_DATE('21/10/2019', 'DD/MM/YY'), 7) AS prox_sabado,
       next_day(TO_DATE('21/10/2019', 'DD/MM/YY'), 5) AS prox_quinta
  FROM dual;

/*  
SUNDAY  - SUN
MONDAY  - MON
TUESDAY  - TUE
WEDNESDAY- WED 
THURSDAY - THU 
FRIDAY  - FRI
SATURDAY - SAT 
*/