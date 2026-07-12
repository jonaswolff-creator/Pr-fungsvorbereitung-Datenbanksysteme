-- @block Aggregatfunktionen
SELECT 
    department_id, 
    COUNT(employee_id) AS 'Anzahl Mitarbeiter',
    ROUND(MIN(salary),0) AS Mindestgehalt,
    ROUND(AVG(salary),0) AS Durchschnittsgehalt,
    ROUND(MAX(salary),0) AS Maximalgehalt,
    ROUND(SUM(salary),0) AS Gesamtgehalt,
    GROUP_CONCAT(last_name SEPARATOR ', ') AS Mitarbeiternamen
FROM hr.employee
GROUP BY department_id;