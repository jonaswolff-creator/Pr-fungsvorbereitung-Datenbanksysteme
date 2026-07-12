-- @block Inhalt der Relation Vorlesung
SELECT * FROM hans.Vorlesung;

-- @block Inhalt der Relation Dozent
SELECT * FROM hans.Dozent;

-- @block Join Vorlesung und Dozent mittels "ON"
SELECT
    *
FROM hans.Dozent
    JOIN hans.Vorlesung ON Dozent.Personalnummer = Vorlesung.Personalnummer;

