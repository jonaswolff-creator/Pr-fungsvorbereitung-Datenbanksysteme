-- @block Anzeige der "Updatebarkeit" von Views
SELECT TABLE_NAME, IS_UPDATABLE FROM INFORMATION_SCHEMA.VIEWS;

-- @block Schreibender Zugriff: Neues Modul
INSERT INTO hans.Vorlesungsverzeichnis(Modulnummer, Modulname, v_Personalnummer) VALUES('WIN-DB', 'Anwendung von DBS', 600);

-- @block Schreibender Zugriff: Neuer Dozent
INSERT INTO hans.Vorlesungsverzeichnis(d_Personalnummer, Dozentname, Email) VALUES (800, 'Wenk', 'Wenk@hs-ansbach.de');

-- @block Schreibender Zugriff: Neues Modul und Neuer Dozent
INSERT INTO hans.Vorlesungsverzeichnis(d_Personalnummer, Dozentname, Email, Modulnummer, Modulname, v_Personalnummer) VALUES (900, 'Schulze', 'Schulze@hs-ansbach.de', 'KIK-KI1', 'maschinelles Lernen 1', 900);
