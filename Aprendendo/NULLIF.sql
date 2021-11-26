/*A função NULLIF compara dois valores. Se os valores forem iguais,
a função retornará valor nulo. Se os valores dos campos valor e vpago
forem iguais, a função retornará valor nulo. Se os valores desses campos
forem diferentes, a função retornará o primeiro valor.*/

select valor, vpago, nullif(valor, vpago) from pcprest;