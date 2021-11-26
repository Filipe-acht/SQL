/*
A função TRUNC tem como objetivo efetuar o truncamento(corte)
de números para a quantidade de casas determinada na função.
*/

select codprod, numregiao, ptabela, trunc(ptabela,2) from pctabpr;