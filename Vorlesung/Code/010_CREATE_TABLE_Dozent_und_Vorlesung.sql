DROP DATABASE IF EXISTS hans;
CREATE DATABASE hans;
USE hans;

CREATE TABLE Dozent (
    Personalnummer  INT AUTO_INCREMENT,
    Name            VARCHAR(50) NOT NULL,
    Telefonnummer   VARCHAR(20),
    EMail           VARCHAR(40) NOT NULL,
    PRIMARY KEY (Personalnummer)
);

CREATE TABLE Vorlesung (
    Modulnummer     CHAR(10),
    Name            VARCHAR(30) NOT NULL,
    Personalnummer  INT NOT NULL,
    PRIMARY KEY (Modulnummer),
    FOREIGN KEY (Personalnummer) 
        REFERENCES Dozent(Personalnummer) 
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);