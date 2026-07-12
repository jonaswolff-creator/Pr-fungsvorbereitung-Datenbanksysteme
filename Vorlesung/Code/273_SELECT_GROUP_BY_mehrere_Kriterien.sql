-- @block mehrere Gruppierungskriterien: Anzahl Mitarbeiter pro Abteilung und Manager
SELECT 
    IFNULL(department_id, 'unbekannt') AS Abteilung, 
    IFNULL(manager_id, 'unbekannt') AS Manager,
    COUNT(employee_id) AS 'Anzahl Mitarbeiter',
    ROUND(AVG(salary),0) AS Durchschnittsgehalt
FROM hr.employee
GROUP BY department_id, manager_id;