--DELETE COM SUBCONSULTAS CORRELACIONADAS:

SELECT * FROM departments_average_temp;

-----

SELECT d.department_id
     , d.department_name
FROM departments d
JOIN locations l
  ON l.location_id = d.location_id
WHERE country_id = 'US';

--DELETE:

DELETE FROM departments_average_temp d
WHERE  d.department_id IN (SELECT d.department_id
                            FROM departments d
                            JOIN locations l
                              ON l.location_id = d.location_id
                             WHERE country_id = 'US');
COMMIT;