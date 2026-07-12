-- @block activate ONLY_FULL_GROUP_BY mode:
SET SESSION sql_mode = sys.list_add(@@session.sql_mode, 'ONLY_FULL_GROUP_BY');

-- @block deactivate ONLY_FULL_GROUP_BY mode:
SET SESSION sql_mode = '';

-- @block mehrere Gruppierungskriterien: Anzahl Mitarbeiter pro Abteilung und Manager
SELECT 
    department_id, 
    manager_id,
    first_name,
    COUNT(employee_id) AS 'Anzahl Mitarbeiter',
    ROUND(AVG(salary),0) AS Durchschnittsgehalt
FROM hr.employee
GROUP BY department_id;