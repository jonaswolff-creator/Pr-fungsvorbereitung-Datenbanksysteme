-- @block ohne Sortierung (Reihenfolge entspricht Erstellreihenfolge)
SELECT Modulnummer, Ueberschrift FROM hans.Kapitel;

-- @block einfache Sortierung nach Ueberschrift aufsteigend
SELECT Modulnummer, Ueberschrift FROM hans.Kapitel ORDER BY Ueberschrift;

-- @block Sortierung nach mehreren Kriterien:
SELECT Modulnummer, Ueberschrift FROM hans.Kapitel ORDER BY Ueberschrift, Modulnummer ASC;
