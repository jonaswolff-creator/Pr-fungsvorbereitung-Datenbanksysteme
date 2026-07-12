-- @block Schritt 1: SELECT Statement erstellen
SELECT 
    dozent.Personalnummer AS d_Personalnummer,
    dozent.Name AS Dozentname,
    dozent.Email,
    Vorlesung.Modulnummer,
    Vorlesung.Name AS Modulname,
    Vorlesung.Personalnummer AS v_Personalnummer
FROM hans.dozent
JOIN hans.vorlesung USING(Personalnummer)

-- @block Schritt 2: VIEW erstellen
CREATE OR REPLACE VIEW hans.Vorlesungsverzeichnis AS
    SELECT 
        dozent.Personalnummer AS d_Personalnummer,
        dozent.Name AS Dozentname,
        dozent.Email,
        Vorlesung.Modulnummer,
        Vorlesung.Name AS Modulname,
        Vorlesung.Personalnummer AS v_Personalnummer
    FROM hans.dozent
    JOIN hans.vorlesung USING(Personalnummer)
;