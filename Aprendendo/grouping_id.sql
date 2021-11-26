/* 
    A função GROUPNG_ID() -> é utilizada para a identificação de grupos e subgrupos
        ** se retornar 0 -> tem valor
        ** se retornar 1 -> não tem valor
*/
-- Utilizando a Função GROUPING_ID 

SELECT continent, GROUPING_ID(continent) GCONTINENT
     , country,   GROUPING_ID(country) GCOUNTRY
     , city, GROUPING_ID(city) GCITY
     , SUM(units_sold)
FROM sales
GROUP BY ROLLUP(continent, country, city);