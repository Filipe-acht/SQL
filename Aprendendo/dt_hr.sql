SELECT trunc(SYSDATE) AS DATA1
       , to_char(SYSDATE, 'DD-MM-YYYY') AS DATA2
       , to_char(SYSDATE,'HH24:MI:SS') AS hora
 FROM dual
