CREATE TABLE oracle_owner
(
       ID NUMBER,
       NAME VARCHAR2(50)
);

CREATE INDEX IX_teste3 ON oracle_owner.teste3(NAME);

INSERT INTO teste3 VALUES(1, 'A')
/
INSERT INTO teste3 VALUES(2,'B')
/
INSERT INTO teste3 VALUES(3, NULL)
/
INSERT INTO teste3 VALUES(1, 'A')

SELECT * FROM oracle_owner.teste3

SELECT * FROM user_indexes
WHERE INDEX_NAME = 'IX_TESTE3'
