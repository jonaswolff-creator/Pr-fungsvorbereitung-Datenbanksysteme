-- @block Studierende, die ein Modul sowohl hÃ¶ren, als auch die PrÃ¼fung ablegen
SELECT Matrikelnummer, Modulnummer FROM hans.hoert
INTERSECT
SELECT Matrikelnummer, Modulnummer FROM hans.schreibt;