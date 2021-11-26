/*
A função DENSE_RANK é uma função de agrupamento que retorna 
a posição de determinado valor levando em conta as suas variáveis.
*/

create table filipesoares.denserank(
       dtvenc date,
       vlrprest real,
       cdcontr  number generated always as identity,
       primary key (cdcontr)
      
);

select * from filipesoares.denserank

insert into filipesoares.denserank(dtvenc, vlrprest)
values('04/12/2025', 1222.48005);

SELECT to_char( dtvenc, 'MM-YYYY') dtvenc, cdcontr, vlrprest,

       DENSE_RANK() OVER

        (PARTITION BY to_char(dtvenc,'YYYYMM')

         ORDER BY vlrprest ) dense_rank

  FROM denserank

 WHERE dtvenc = dtvenc;
 


 ----COM a LAG:

SELECT to_char( dtvenc, 'MM-YYYY') dtvenc, cdcontr, vlrprest,
       lag(dtvenc)
          OVER (PARTITION BY dtvenc order by vlrprest),
           DENSE_RANK() OVER

        (PARTITION BY to_char(dtvenc,'YYYYMM')

         ORDER BY vlrprest ) dense_rank

  FROM denserank

 WHERE dtvenc = dtvenc;