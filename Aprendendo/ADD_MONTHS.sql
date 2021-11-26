SELECT trunc(sysdate) AS Data_atual, 
       add_months(trunc(sysdate), 5) AS ADD_MONTHS
  FROM dual;
/*
SELECT add_months(to_date('29/02/16', 'DD/MM/YY'),1) AS ADD_MONTHS
  FROM dual;
  
SELECT add_months(to_date('28/02/17', 'DD/MM/YY'),1) AS ADD_MONTHS
  FROM dual;
  
SELECT add_months(to_date('27/02/16', 'DD/MM/YY'),1) AS ADD_MONTHS
  FROM dual;
  
SELECT trunc(sysdate) AS Data_atual, 
       add_months(trunc(sysdate), -1) AS ADD_MONTHS
  FROM dual;
*/