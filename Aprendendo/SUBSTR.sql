/*SUBSTR : Retorna a quantidade de caracteres especificadas, onde o segundo parâmetro(3) é a posição iniciar,
e o terceiro(12) é a quantidade de caracteres a serem exibidos.*/

SELECT substr('O Aprendaplsql é o melhor site', 3) 
  FROM dual;
  
SELECT substr('O Aprendaplsql é o melhor site', 3, 12) 
  FROM dual;
  
SELECT substr('O Aprendaplsql é o melhor site', -11, 6) 
  FROM dual;