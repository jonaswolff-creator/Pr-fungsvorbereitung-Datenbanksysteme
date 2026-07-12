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

INSERT INTO Dozent SET Personalnummer = 100, Name = "Weber", Telefonnummer = '0123/45678-200', EMail = 'Weber@hs-ansbach.de'; -- verletzt Telefonnummern Pattern Check Constraint