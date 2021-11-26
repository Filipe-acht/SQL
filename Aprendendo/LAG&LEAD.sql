/*
LAG:
Esta função analítica é utilizada para se realizar uma busca dentro da mesma tabela sem que haja necessidade
de realizar um self-join. A busca retornará uma linha que esteja anterior à posição atual do cursor (da busca).
*/
--EX: LAG
SELECT to_char( dtvenc, 'MM-YYYY') dtvenc, cdcontr, vlprest,

       LAG( vlprest,1,0 ) OVER

        ( PARTITION BY to_char( dtvenc, 'MM-YYYY')

          ORDER BY vlprest ) lag

  FROM vRECEBER

 WHERE dtvenc > sysdate;

 /*
LEAD:
Atua como o LAG, mas fará a busca nas linhas seguintes.
 */

 --EX: LEAD
SELECT to_char( dtvenc, 'MM-YYYY') dtvenc, cdcontr, vlprest,

       LEAD( vlprest,1,0 ) OVER

        ( PARTITION BY to_char( dtvenc, 'MM-YYYY')

          ORDER BY vlprest ) lag

  FROM vRECEBER

 WHERE dtvenc > sysdate;
