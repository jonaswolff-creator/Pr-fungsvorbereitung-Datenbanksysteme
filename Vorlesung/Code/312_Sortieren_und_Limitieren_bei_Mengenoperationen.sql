-- @block alle Personen der Hochschule nach Name sortiert
SELECT CONCAT(Name, " (Studierender)") AS Name FROM hans.Studierende
UNION
SELECT CONCAT(Name, " (Dozent)") FROM hans.Dozent
ORDER BY Name
LIMIT 10;