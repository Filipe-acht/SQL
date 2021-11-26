--A função de MONTHS_BETWEEN retorna a diferença de meses entre duas datas.

SELECT months_between(TO_DATE('28/12/2017', 'DD/MM/YY'),
                      TO_DATE('03/08/2017', 'DD/MM/YY')) AS MONTHS_BETWEEN
 FROM dual;
 
SELECT trunc(months_between(TO_DATE('28/12/2017', 'DD/MM/YY'),
                            TO_DATE('03/08/2017', 'DD/MM/YY'))) AS MONTHS_BETWEEN
 FROM dual;
 
SELECT round(months_between(TO_DATE('28/12/2017', 'DD/MM/YY'),
                            TO_DATE('03/08/2017', 'DD/MM/YY'))) AS MONTHS_BETWEEN
 FROM dual;