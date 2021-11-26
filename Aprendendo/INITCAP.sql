/*
O código abaixo seleciona dos registros da tabela pcempr os campos matricula e nome,
convertendo o conteúdo do campo nome para que seja exibido com as iniciais em caracterees maiúsculos.
*/

select matricula, initcap(nome) from pcempr;