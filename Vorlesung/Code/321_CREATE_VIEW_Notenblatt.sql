-- @block Schritt 1: SELECT Statement erstellen
SELECT 
    Studierende.Matrikelnummer AS Matrikelnummer,
    Studierende.Name AS Name,
    schreibt.Modulnummer AS Modulnummer,
    MIN(schreibt.Note) AS Note
FROM hans.Studierende
    JOIN hans.schreibt ON Studierende.Matrikelnummer = schreibt.Matrikelnummer
GROUP BY Matrikelnummer, Modulnummer;

-- @block Schritt 2: VIEW erstellen
CREATE OR REPLACE VIEW hans.Notenblatt AS 
    SELECT 
        Studierende.Matrikelnummer AS Matrikelnummer,
        Studierende.Name AS Name,
        schreibt.Modulnummer AS Modulnummer,
        MIN(schreibt.Note) AS Note
    FROM hans.Studierende
        JOIN hans.schreibt ON Studierende.Matrikelnummer = schreibt.Matrikelnummer
    GROUP BY Matrikelnummer, Modulnummer
;