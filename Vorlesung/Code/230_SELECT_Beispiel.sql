SELECT 
    Aufsicht, 
    DATE_FORMAT(Zeitpunkt, '%d.%m.%Y') AS Datum,
    SUBSTR(Raum, 1, 2) AS GebÃ¤ude,
    CASE 
        WHEN SUBSTR(Semester,1,4) = 'WiSe' THEN 'Wintersemester'
        WHEN SUBSTR(Semester,1,4) = 'SoSe' THEN 'Sommersemester' 
        ELSE 'unbekannt'
    END AS Semester
FROM hans.pruefung
WHERE Aufsicht LIKE 'Wag%' OR Aufsicht = 'Werner';