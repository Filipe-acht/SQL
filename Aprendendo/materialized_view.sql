/*
    * Utilizada para reduzir o custo do comando sql
    * Um select na MATERIALIZED VIEW -> o oracle retorna os dados a partir desta, ao invés das tabelas originais
    * Dá ganho me performance e sujeito à dados atualizados  
    
    SINTAXE:
            * BUILD:
                 ** immediate -> ela é populando imediatamente com o resultado do select
                 ** deferred  -> não é populada na criação, será populada após um refresh/aggendamento
            * REFRESH:
                ** fast -> atualiza somente as mudanças dos dados existentes ao invés de truncar
                           e popular a view M inteira("utilizando um log das mudanças");
                ** comlete -> a tabela da view é truncada e repopulada com o resultado da query associada
            * ON:
                ** commit -> a atualização é executada no commit de qualquer tabela dependente;
                ** demand -> é executada manualmente ou por uma tarefa agendada(scheduled);
            * QUERY REWRITE:
                ** enable query rewrite -> permite ao processo optimizer do Oracle, a utilizar a opção
                                           de query rewrite para melhorar a performance para os processos
                                           de alto custo ou demorados;
                ** desable wuery rewrite ->  não permite o processo;
                
            * ON REBUILTED TABLE -> permite a criação em uma tabela já existente, sem a necessidade 
                                    de recriar  e repopular a mesma;
    
    * GRANT CREATE MATERIALIZED VIEW TO <user> -> privilégio necessário para criar;        
*/


-- Passando system privilege necessário para criar uma Materialized View 

GRANT CREATE MATERIALIZED VIEW to hr;

-- Conectar como usuário HR

-- Removendo uma Materialized View 

DROP MATERIALIZED VIEW mv_department_max_salaries;

-- Criando uma Materialized View  

CREATE MATERIALIZED VIEW mv_department_max_salaries
BUILD IMMEDIATE 
REFRESH COMPLETE 
ON DEMAND
ENABLE QUERY REWRITE 
AS 
  SELECT department_id
       , MAX(salary) 
    FROM employees
    GROUP BY department_id
    ORDER BY department_id;
       
-- Consultando a Materialized View

SELECT *
FROM   mv_department_max_salaries;

