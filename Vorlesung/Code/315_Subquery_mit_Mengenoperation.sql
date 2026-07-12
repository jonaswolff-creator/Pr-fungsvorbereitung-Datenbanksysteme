-- @block Details zu Studierenden, die ein Modul hÃ¶ren, aber die PrÃ¼fung nicht schreiben
SELECT 
    Studierende.Matrikelnummer, 
    Studierende.Name, 
    Studierende.Studiengang,
    Vorlesung.Modulnummer,
    Vorlesung.Name
FROM (
    SELECT Matrikelnummer, Modulnummer FROM hans.hoert
    EXCEPT
    SELECT Matrikelnummer, Modulnummer FROM hans.schreibt
) AS ExceptErgebnis
JOIN hans.Studierende ON ExceptErgebnis.Matrikelnummer = Studierende.Matrikelnummer
JOIN hans.Vorlesung ON ExceptErgebnis.Modulnummer = Vorlesung.Modulnummer;