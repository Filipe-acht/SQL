
SELECT *
FROM EMPLOYEES



CREATE OR REPLACE VIEW EMPVU80
AS
SELECT  EMPLOYEE_ID
       ,LAST_NAME
       ,SALARY
       ,FIRST_NAME || ' ' || LAST_NAME AS FULL_NAME
       ,ROWNUM AS NUM
FROM EMPLOYEES
WHERE DEPARTMENT_ID = 80
WITH READ ONLY

DESCRIBE EMPVU80

SELECT * 
FROM EMPVU80
WHERE NUM > 10
ORDER BY NUM DESC

CREATE OR REPLACE VIEW DEPT_SUM_VU(NAME,MINSAL,MAXSAL,AVGSAL)
AS
SELECT D.DEPARTMENT_NAME
      ,MIN(E.SALARY)
      ,MAX(E.SALARY)
      ,AVG(E.SALARY)
FROM EMPLOYEES E, DEPARTMENTS D
WHERE E.DEPARTMENT_ID = D.DEPARTMENT_ID
GROUP BY D.DEPARTMENT_NAME

SELECT *
FROM DEPT_SUM_VU

ALTER VIEW...
DROP VIEW DEPT_SUM_VU
