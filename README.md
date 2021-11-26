# O SQL possui comandos divididos em:
    - DML: Data Manipulation Language (SELECT,
        INSERT, UPDATE e DELETE);

    - DDL: Data Definition Language (CREATE,
        ALTER e DROP);

    - DCL: Data Control Language (GRANT,
        DENY e REVOKE).

 # Constraints:
    - São objetos do banco de dados que restrigem dados das colunas;
    - Utilizadas para garantir a integridade dos dados;
    - Constraint NULL e NOT NULL.
# Habilitar ou desabilitar constraint:
    - ALTER TABLE <table> ADD ...
    - ALTER TABLE <table> DISABLE CONSTRAINT <nome_constraint>
    - ALTER TABLE <table> ENABLE CONSTRAINT <nome_constraint>

# Views:
    - Importantes objetos que são basicamente uma instrução SELECT armazenada.

# UNION:
    - O operador UNION combina os resultados de duas ou mais queries em um único result set, 
retornando todas as linhas pertencentes a todas as queries envolvidas na execução. Para utilizar 
o UNION, o número e a ordem das colunas precisam ser idênticos em todas as queries e os data types 
precisam ser compatíveis.
     - Existem dois tipos:
        * UNION: executa o equivalente à um SELECT DISTINCT;
        * UNION ALL: Aprsenta todas as linhas, até as duplicadas.

    
# Indices:
    - São objetos oracle que duplicam informações para tornar
        o acesso(leitura de dados) mais rápido.

# Procedures:
    - Permite o uso de SQL e elementos comuns de linguagens de programação
            (variáveis, if, loop, operadores, etc).

# Bloco PL/SQL:
    - É uma unidade de execução de código dividida em três partes:
        * DECLARE: onde são colocadas as variáveis.
        * BEGIN: onde será escrito o código.
        * EXCEPTION: tratamento de erros por exceção.
        * END;
