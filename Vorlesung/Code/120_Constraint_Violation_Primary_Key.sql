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

INSERT INTO Dozent VALUES (700, 'Hauf', '0123/45678700', 'Hauf@hs-ansbach.de');

-- @block doppelter PrimÃ¤rschlÃ¼ssel
USE hans;
INSERT INTO Dozent VALUES (700, 'HÃ¶ft', '0123/45678800', 'Hoeft@hs-ansbach.de');
