-- Self Joins ou auto-junção são junções de uma tabela com ela mesma.
SELECT
  A1.nome,
  A2.nome
FROM
  aluno A1
INNER JOIN
  aluno A2
ON (A1.idaluno <> A2.idaluno)
WHERE A1.idTurma = A2.idTurma
ORDER BY A1.nome