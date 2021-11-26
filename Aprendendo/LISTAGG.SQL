/*
O Listagg agrupa os dados na mesma linha de uma instrução SELECT e 
concatenando o resultado em uma coluna que pode ser utilizada em conjunto com as funções ORDER BY e OVER.
*/
SELECT LIS.ID
     , LIS.TESTE
     , LIS.NUMERO
     , LISTAGG(LIS.ID || '-' || LIS.NUMERO,';')
        WITHIN GROUP ( ORDER BY LIS.NUMERO ASC) IDS
FROM <TABELA>.TB_LISTAGG LIS
WHERE ROWNUM <= 10
GROUP BY LIS.ID, LIS.TESTE, LIS.NUMERO