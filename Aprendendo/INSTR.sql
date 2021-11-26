SELECT instr('O Aprendaplsql é o melhor site', 'a') 
  FROM dual;
  
SELECT instr('O Aprendaplsql é o melhor site', 'e', 10) 
  FROM dual;

SELECT instr('O Aprendaplsql é o melhor site', 'e', 10, 2) 
  FROM dual;
  
SELECT instr('O Aprendaplsql é o melhor site', 'e', -1) 
  FROM dual;
  
SELECT substr('O Aprendaplsql é o melhor site', 
        instr('O Aprendaplsql é o melhor site', 'A'), 12) 
  FROM dual;
  
SELECT substr('teste' ,instr('O Aprendaplsql é o melhor site', 'A'), 6) 
  FROM dual;

SELECT instr2('O Aprendaplsql é o melhor site', 'e', -3) 
  FROM dual;
  
SELECT instr('O Aprendaplsql é o melhor site', 'e', -3) 
  FROM dual;

SELECT instr('O Aprendaplsql é o melhor site', 'a') 
  FROM dual;

--Regular expressio

SELECT regexp_instr('O Aprendaplsql é o melhor site', 'a', 1, 1, 0, 'i') 
  FROM dual;

SELECT regexp_instr('O Aprendaplsql é o melhor site', 'a', 1, 1, 0, 'c') 
  FROM dual;

SELECT regexp_instr('O Aprendaplsql é o melhor site', 'a|e|i|o|u') 
  FROM dual;
  
SELECT regexp_instr('O Aprendaplsql é o melhor site', 'a|e|i|o|u', 1, 1, 0, 'i') 
  FROM dual;