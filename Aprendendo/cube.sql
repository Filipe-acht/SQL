/*
	CUBE:
		* executa as funções de agregação para os grupos
        * executa as mesmas funções de agregação para os subgrupos
        * retorna uma única linha sumarizada para cada subgrupos
        
        EX.: cube(continent, country, city
            ** continent
            ** country
            ** city
            ** continent, country e city
            ** continent e country
            ** continent e city
            ** country e city
*/

-- Utilizando CUBE

SELECT continent
     , country
     , city
     , SUM(units_sold)
FROM sales
GROUP BY CUBE(continent, country, city)
order by country desc;