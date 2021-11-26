SELECT TO_CHAR(
       ROUND (
            :PESO
                / 
            (
            (TO_NUMBER
            (REGEXP_REPLACE(:ESTATURA,'[,.]','')) 
                * 
            TO_NUMBER
            (REGEXP_REPLACE(:ESTATURA,'[,.]',''))
                * 
                0.0001)),1)
            ) AS IMC 
FROM DUAL;