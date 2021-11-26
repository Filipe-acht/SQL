--EXTRACT -> usada para extrair e retornar o ano, mês e o dia de um tipo date
select extract (day from sysdate)
     , extract (year from sysdate)
     , extract (month from sysdate)
     , extract (minute from current_timestamp)
     --, extract ( from sysdate)...
from dual;