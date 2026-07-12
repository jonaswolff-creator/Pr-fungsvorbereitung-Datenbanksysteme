-- @block Inhalt der Relation Vorlesung
SELECT * FROM hans.Vorlesung;

-- @block Inhalt der Relation Dozent
SELECT * FROM hans.Dozent;

-- @block LEFT OUTER Join Vorlesung und Dozent
SELECT
    *
FROM hans.Dozent
    LEFT OUTER JOIN hans.Vorlesung ON Dozent.Personalnummer = Vorlesung.Personalnummer;

-- @block RIGHT OUTER Join Vorlesung und Dozent
SELECT
    *
FROM hans.Dozent
    RIGHT OUTER JOIN hans.Vorlesung ON Dozent.Personalnummer = Vorlesung.Personalnummer;

