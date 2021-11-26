--A função ROUND tem como objetivo efetuar o arredondamento de números para a quantidade de casas decimais determinada na função.
/*O código abaixo seleciona dos registros da tabela pctabpr os campos codprod, 
numregiao, ptabela, e exibe, logo em seguida, o campo ptabela com seu valor arredondado 
para 2 casas decimais.*/

select codprod, numregiao, ptabela, roundO(ptabela,2) from pctabpr;