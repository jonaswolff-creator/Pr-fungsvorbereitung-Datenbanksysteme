-- @block Join Vorlesung und Dozent mittels "USING"
SELECT
    *
FROM hans.Dozent
    JOIN hans.Vorlesung USING(Personalnummer);