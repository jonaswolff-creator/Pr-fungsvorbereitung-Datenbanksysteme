-- @block Sortieren und Limitieren der Subqueries
SELECT CONCAT(Name, " (Studierender)") AS Name FROM hans.Studierende
UNION
-- nur die ersten beiden Dozent im Alphabet:
(SELECT CONCAT(Name, " (Dozent)") FROM hans.Dozent ORDER BY Name ASC LIMIT 2) 
ORDER BY Name
LIMIT 5 -- insgesamt max 5 Personen
;