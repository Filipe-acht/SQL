--A função COALESCE verifica os valores da expressão e retorna o primeiro valor não nulo.

select coalesce(vldesconto, vpago, valor) from pcprest;