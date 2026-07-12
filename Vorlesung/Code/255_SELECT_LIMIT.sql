-- @block Limitierung der Ergebnismenge auf erste n Tupel:
SELECT Modulnummer, Ueberschrift FROM hans.Kapitel LIMIT 5;

-- @block Limitierung der Ergebnismenge auf Tupel 6 bis 8:
SELECT Modulnummer, Ueberschrift FROM hans.Kapitel LIMIT 5, 3;
