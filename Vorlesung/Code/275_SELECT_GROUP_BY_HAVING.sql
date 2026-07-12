-- @block Filterung von Gruppen
SELECT 
    IFNULL(department_id, 'unbekannt') AS Abteilung, 
    IFNULL(manager_id, 'unbekannt') AS Manager,
    COUNT(employee_id) AS 'Anzahl Mitarbeiter',
    ROUND(AVG(salary),0) AS Durchschnittsgehalt
FROM hr.employee
GROUP BY department_id, manager_id
HAVING COUNT(employee_id) > 4;