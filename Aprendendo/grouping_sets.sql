/*
	GROUPING SETS, ROLLUP E CUBE -> são subtotais e tabulações sobre as dimensões
	
	** GROUPING SETS -> utilizada para obtermos somentos os subtotais de um SELECT que utiliza funções de agregação(grupo)
*/

SELECT *
FROM sales
ORDER BY continent
       , country
       , city;
--------------
SELECT continent
     , SUM(units_sold)
FROM sales 
GROUP BY continent;
---------------

SELECT country, SUM(units_sold)
FROM sales 
GROUP BY country;
----------------

SELECT city, SUM(units_sold)
FROM sales 
GROUP BY city;

-- Utilizando GROUPING SETS

SELECT continent
     , country
     , city
     , SUM(units_sold)
FROM sales
GROUP BY GROUPING SETS( continent
                      , country
                      , city);

-- Utilizando GROUPING SETS (Incluindo Total Geral)

SELECT continent
     , country
     , city
     , SUM(units_sold)
FROM sales
GROUP BY GROUPING SETS(continent, country, city, ());--null, null, null = () -> significa que quero o total geral




