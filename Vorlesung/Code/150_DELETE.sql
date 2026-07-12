DROP DATABASE IF EXISTS hans;
CREATE DATABASE hans;
USE hans;

CREATE TABLE Dozent (
    Personalnummer  INT AUTO_INCREMENT,
    Name            VARCHAR(50) NOT NULL,
    Telefonnummer   VARCHAR(20),
    EMail           VARCHAR(40) NOT NULL,
    PRIMARY KEY (Personalnummer),
    CONSTRAINT EMailPattern CHECK (EMail RLIKE '.+@.+\..+'),
    CONSTRAINT TelefonPattern CHECK (Telefonnummer RLIKE '^(((\\+|00)[1-9][0-9]? ?|0)[1-9][0-9]{2,3}/?)?[1-9][0-9]{2,9}$')
);

INSERT INTO Dozent(Personalnummer, Name, Telefonnummer, EMail) VALUES (100, 'Schneider', '0123/45678100', 'Schneider@hs-ansbach.de');
INSERT INTO Dozent(Personalnummer, Name, EMail) VALUES (200, 'Fischer', 'Fischer@hs-ansbach.de');
INSERT INTO Dozent VALUES (300, 'Weber', '0123/45678300', 'Weber@hs-ansbach.de');
INSERT INTO Dozent VALUES (400, 'Wagner', '0123/45678400', 'Wagner@hs-ansbach.de'), (500, 'Becker', '0123/45678500', 'Becker@hs-ansbach.de');
INSERT INTO Dozent SET Personalnummer = 600, Name = 'Schmidt', Telefonnummer = '0123/45678600', Email = 'Schmidt@hs-ansbach.de';

-- @block LÃ¶sche Dozent mit Personalnummer 500
use hans;
DELETE FROM Dozent WHERE Personalnummer = 500;