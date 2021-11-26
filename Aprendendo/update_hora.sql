UPDATE <tabela> SET 
    coluna = TO_DATE(nvl('','06/09/2021 11:48:00'),'DD/MM/YYYY HH24:MI:SS')
WHERE <condição>