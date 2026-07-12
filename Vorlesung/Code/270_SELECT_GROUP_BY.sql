SELECT Modulnummer, Ueberschrift FROM hans.kapitel;
-- @block Kapitelanzahl pro Modul:
SELECT 
    Modulnummer
    -- was passiert mit der Ãœberschriftenspalte?
    -- Ueberschrift 
FROM hans.kapitel 
GROUP BY Modulnummer;
