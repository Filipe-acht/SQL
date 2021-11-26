SELECT first_name, commission_pct FROM hr.employees;

SELECT first_name, NVL(commission_pct, 0) FROM hr.employees;

SELECT first_name, NVL(commission_pct, 'Sem Comissão') FROM hr.employees;

SELECT STREET_ADDRESS, NVL(STATE_PROVINCE, 'Sem Estado') FROM hr.locations
WHERE STATE_PROVINCE is NULL;

SELECT STREET_ADDRESS, NVL(STATE_PROVINCE, 0) FROM hr.locations
WHERE STATE_PROVINCE is NULL;

SELECT first_name, NVL(manager_id, 'Sem Chefe') FROM hr.employees;

SELECT distinct NVL(commission_pct, 0) FROM hr.employees;

SELECT distinct NVL(commission_pct, 0) FROM hr.employees
WHERE commission_pct is NULL;

SELECT STREET_ADDRESS, NVL2(STATE_PROVINCE,'Com Estado', 'Sem Estado') 
  FROM hr.locations
 WHERE STATE_PROVINCE is NULL;