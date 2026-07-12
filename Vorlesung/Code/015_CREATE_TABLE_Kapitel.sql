USE hans;

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