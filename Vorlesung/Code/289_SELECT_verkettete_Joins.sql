-- @block VerknÃ¼pfe Relationen Dozent, Vorlesung und Kapitel. 
-- Dozenten, die keine Vorlesung anbieten und Vorlesungen ohne Kapitel sollen ebenfalls ausgegeben werden
SELECT 
    Personalnummer,
    Dozent.Name as Dozent,
    Vorlesung.Name as Vorlesung,
    Kapitel.Ueberschrift as Ãœberschrift
FROM hans.Dozent
    LEFT OUTER JOIN hans.Vorlesung USING(Personalnummer)
    LEFT OUTER JOIN hans.Kapitel USING(Modulnummer)
ORDER BY Personalnummer;