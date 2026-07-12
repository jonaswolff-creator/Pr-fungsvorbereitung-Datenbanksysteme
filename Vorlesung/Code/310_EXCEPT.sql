-- @block Studierende, die ein Modul hÃ¶ren, aber die PrÃ¼fung nicht schreiben
SELECT Matrikelnummer, Modulnummer FROM hans.hoert
EXCEPT
SELECT Matrikelnummer, Modulnummer FROM hans.schreibt;