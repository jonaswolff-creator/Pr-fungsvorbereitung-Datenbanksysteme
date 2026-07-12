-- @block Variante 1 mit Spaltennennung
USE hans;
INSERT INTO Dozent(Personalnummer, Name, Telefonnummer, EMail) VALUES (100, 'Schneider', '0123/45678100', 'Schneider@hs-ansbach.de');
-- @block Variante 1 mit unvollstÃ¤ndiger Spaltennennung
-- Spaltennennung notwendig, wenn nicht fÃ¼r alle Spalten Werte vorgegeben werden!
USE hans;
INSERT INTO Dozent(Personalnummer, Name, EMail) VALUES (200, 'Fischer', 'Fischer@hs-ansbach.de');

-- @block Variante 1 ohne Spaltennennung
-- nur mÃ¶glich, wenn fÃ¼r alle Spalten Werte vorgegeben werden
USE hans;
INSERT INTO Dozent VALUES (300, 'Weber', '0123/45678300', 'Weber@hs-ansbach.de');

-- @block Variante 1 mit mehreren Tupeln auf einmal
USE hans;
INSERT INTO Dozent VALUES (400, 'Wagner', '0123/45678400', 'Wagner@hs-ansbach.de'), (500, 'Becker', '0123/45678500', 'Becker@hs-ansbach.de');

-- @block Variante 2
USE hans;
INSERT INTO Dozent SET Personalnummer = 600, Name = 'Schmidt', Telefonnummer = '0123/45678600', Email = 'Schmidt@hs-ansbach.de';