/*É uma instrução do tipo SELECT dentro de outra instrução SQL.
Desta forma, se torna possível efetuar consultas que de outra forma seriam extremamente
complicadas ou impossíveis de serem feitas de outra forma.
*/

SElECT
    id,
    Produto,
    MAX(TOTAL_VENDIDO) as MAIOR
FROM (
        SELECT
            P.id,
            P.nome as Produto,
            (SELECT
                COUNT(VP.id_produto)
                FROM
                    venda_produto VP
                WHERE
                    P.id = VP.id_produto
                GROUP BY
                    P.id
            ) as TOTAL_VENDIDO
        FROM
            produto P
        GROUP BY
            P.id
) as Tabela

/*
select  * 
    from pcprodut
where codprod not in (select distinct(codprod) from pcmov);
*/