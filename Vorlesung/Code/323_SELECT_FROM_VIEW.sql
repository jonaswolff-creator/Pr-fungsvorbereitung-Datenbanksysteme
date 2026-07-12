-- @block Anzeige des Vorlesungsverzeichnisses
SELECT * FROM hans.Vorlesungsverzeichnis;

-- @block Notenschnitte basierend auf Notenblatt View
SELECT 
    Matrikelnummer,
    Name,
    AVG(Note) AS 'aktueller Schnitt'
FROM hans.Notenblatt
GROUP BY Matrikelnummer;