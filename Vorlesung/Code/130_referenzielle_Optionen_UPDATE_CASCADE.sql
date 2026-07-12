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

CREATE TABLE Vorlesung (
    Modulnummer     CHAR(10),
    Name            VARCHAR(30) NOT NULL,
    Personalnummer  INT NOT NULL,
    PRIMARY KEY (Modulnummer),
    FOREIGN KEY (Personalnummer) 
        REFERENCES Dozent(Personalnummer) 
        ON UPDATE CASCADE                        -- <-- CASCADE als referenzielle Option
        ON DELETE RESTRICT
);

INSERT INTO Dozent VALUES (300, 'Weber', '0123/45678300', 'Weber@hs-ansbach.de');
INSERT INTO Vorlesung VALUES ('KIK-Info1', 'Grundlagen der Informatik', 300);

-- @block Aktualisiere PrimÃ¤rschlÃ¼ssel des Dozenten
USE hans;
UPDATE Dozent SET Personalnummer=333 WHERE Personalnummer=300;