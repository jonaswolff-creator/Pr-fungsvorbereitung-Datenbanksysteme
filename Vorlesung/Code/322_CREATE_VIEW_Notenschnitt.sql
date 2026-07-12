-- @block Schritt 1: SELECT Statement erstellen
SELECT 
    Matrikelnummer,
    ROUND(AVG(Note),1) AS 'Schnitt'
FROM hans.Notenblatt -- Notenblatt = VIEW
GROUP BY Matrikelnummer;

-- @block Schritt 2: VIEW erstellen
CREATE OR REPLACE VIEW hans.Notenschnitt AS
    SELECT 
        Matrikelnummer,
        ROUND(AVG(Note),1) AS 'Schnitt'
    FROM hans.Notenblatt -- Notenblatt = VIEW
    GROUP BY Matrikelnummer
;