/*
A cláusula HAVING é utilizada para efetuar restrições de informações baseadas
em resultados das funções de grupo (SUM, AVG, MAX, MIN e COUNT).
*/

select codcli, sum(vltotal)
    from pcnfsaid
    group by codcli
    having sum(vltotal) > 10000;