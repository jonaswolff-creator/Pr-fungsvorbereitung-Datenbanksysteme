-- @block alle Personen der Hochschule
SELECT CONCAT(Name, " (Studierender)") AS Name FROM hans.Studierende
UNION
SELECT CONCAT(Name, " (Dozent)") FROM hans.Dozent;

-- @block alle Personen der Hochschule inkl. Duplikaten
SELECT CONCAT(Name, " (Studierender)") AS Name FROM hans.Studierende
UNION ALL
SELECT CONCAT(Name, " (Dozent)") FROM hans.Dozent;
