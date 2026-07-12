-- @block Join Vorlesung und Kapitel
SELECT 
    Vorlesung.Modulnummer,
    Vorlesung.Name AS Modulname, 
    Kapitel.Ueberschrift AS KapitelÃ¼berschrift
FROM hans.Vorlesung 
    JOIN hans.Kapitel USING(Modulnummer);