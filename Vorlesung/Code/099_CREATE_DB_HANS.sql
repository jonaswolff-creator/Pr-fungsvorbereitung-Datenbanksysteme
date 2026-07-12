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
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

CREATE TABLE Kapitel (
    Modulnummer     CHAR(10),
    Ueberschrift    VARCHAR(30),
    Inhalt          BLOB,
    PRIMARY KEY (Modulnummer, Ueberschrift),
    FOREIGN KEY (Modulnummer)
        REFERENCES Vorlesung(Modulnummer)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

CREATE TABLE Raumbelegung(
    Raumnummer      CHAR(7),
    Wochentag       CHAR(2),
    Uhrzeit         TIME,
    Semester        CHAR(8),
    Modulnummer     CHAR(10), -- allows NULL
    PRIMARY KEY (Raumnummer, Wochentag, Uhrzeit, Semester),
    FOREIGN KEY (Modulnummer)
        REFERENCES Vorlesung(Modulnummer)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT WochentagPattern CHECK (Wochentag IN ('Mo', 'Di', 'Mi', 'Do', 'Fr')),
    CONSTRAINT SemesterPattern CHECK (Semester RLIKE '^(WiSe|SoSe)[0-9]{4}$'),
    CONSTRAINT RaumnummerPattern CHECK (Raumnummer RLIKE '^[0-9]{2}\.[0-9]\.[0-9]{2}$')
);

CREATE TABLE Studierende(
    Matrikelnummer  INT AUTO_INCREMENT,
    Name            VARCHAR(50) NOT NULL,
    Studiengang     CHAR(3),
    PRIMARY KEY (Matrikelnummer)
);

CREATE TABLE hoert(
    Matrikelnummer  INT,
    Modulnummer     CHAR(10),
    Semester        CHAR(8),
    PRIMARY KEY (Matrikelnummer, Modulnummer),
    FOREIGN KEY (Matrikelnummer)
        REFERENCES Studierende(Matrikelnummer)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    FOREIGN KEY (Modulnummer)
        REFERENCES Vorlesung(Modulnummer)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT SemesterPattern CHECK (Semester RLIKE '^(WiSe|SoSe)[0-9]{4}$')
);

CREATE TABLE Pruefung(
    ID              INT AUTO_INCREMENT,
    Aufsicht        VARCHAR(50) NOT NULL,
    Zeitpunkt       TIMESTAMP NOT NULL,
    Raum            CHAR(7) NOT NULL,
    Semester        CHAR(8),
    PRIMARY KEY(ID),
    CONSTRAINT RaumnummerPattern CHECK (Raum RLIKE '^[0-9]{2}\.[0-9]\.[0-9]{2}$'),
    CONSTRAINT SemesterPattern CHECK (Semester RLIKE '^(WiSe|SoSe)[0-9]{4}$')
);

CREATE TABLE schreibt(
    Modulnummer     CHAR(10) NOT NULL,
    PruefungsID     INT,
    Matrikelnummer  INT,
    Note            DECIMAL(2,1), -- allows NULL
    PRIMARY KEY (PruefungsID, Matrikelnummer),
    FOREIGN KEY (Modulnummer)
        REFERENCES Vorlesung(Modulnummer)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    FOREIGN KEY (PruefungsID)
        REFERENCES Pruefung(ID)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    FOREIGN KEY (Matrikelnummer)
        REFERENCES Studierende(Matrikelnummer)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT Notenbereich CHECK (Note >= 1.0 AND Note <= 5.0)
);