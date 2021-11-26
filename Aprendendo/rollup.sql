/*
    ROLLUP:
        * executa as funções de agregação para os grupos
        * executa as mesmas funções de agregação para os subgrupos
        * retorna uma única linha sumarizada para cada subgrupos
        
        Ex.: 
            ** rollup(continent, country, city), obterá
                *** continent, country e city
                *** continent e country
                *** continent
                *** geral
*/

-- Utilizando ROLLUP

SELECT continent
     , country
     , city
     , SUM(units_sold)
FROM sales
WHERE ROWNUM <= 3
GROUP BY ROLLUP(continent, country, city)
;
