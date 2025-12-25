-- Datenbank erstellen und auswählen
CREATE DATABASE IF NOT EXISTS Pruefung;
USE Pruefung;

-- Hinweis: Die leeren Werte oder Fehler sind beabsichtigt
-- In Prüfungen dient dies zur Übung von Abfragen auf fehlende Daten (z.B. WHERE Ort = '').

-- Tabelle Objekt
CREATE TABLE IF NOT EXISTS Objekt (
    OID INT PRIMARY KEY,
    Bezeichnung VARCHAR(100)
);

INSERT INTO Objekt (OID, Bezeichnung) VALUES
(1, 'Rasenfläche'),
(2, 'Rosengarten'),
(3, 'Tropenhaus'),
(4, 'Palmenhaus'),
(5, 'Avocadoplantage'),
(6, 'Kirschbaumgarten'),
(7, 'Orchideengarten'),
(8, 'Außenanlage Nord');

-- Tabelle Mitarbeiter
CREATE TABLE IF NOT EXISTS Mitarbeiter (
    MID INT PRIMARY KEY,
    Nachname VARCHAR(100),
    Vorname VARCHAR(100),
    Geburtstag DATE
);

-- Mitarbeiterdaten
INSERT INTO Mitarbeiter (MID, Nachname, Vorname, Geburtstag) VALUES
(1, 'Rose', 'Ines', '1997-11-23'),
(2, 'Baum', 'Jürgen', '1964-02-02'),
(3, 'Nana', 'Marie', '1996-08-02'),
(4, 'Schmidt', 'Heinrich', '1977-09-05'),
(5, 'Schuster', 'Erika', '2001-11-11'),
(6, 'Lovely', 'Maximillia', '1979-01-03'),
(7, 'Schmidt', 'Max', '1956-10-08'),
(8, 'Meier', 'Willhelm', '1988-12-19'),
(9, 'Franz', 'Anja', '2002-10-02'),
(10, 'Schmitt', 'Andrea', '1995-04-18'),
(11, 'Kreuzer', 'Peter', '1989-12-12'),
(12, 'Lang', 'Ina', '1973-05-26'),
(13, 'Kurz', 'Katrin', '1987-07-18'),
(14, 'Klein', 'Petra', '1996-10-13'),
(15, 'Groß', 'Karin', '1992-09-09'),
(16, 'Pfennig', 'Marion', '1990-08-24'),
(17, 'Krenz', 'Ulrich', '2000-02-02'),
(18, 'Lulli', 'Manfred', '2001-02-14'),
(19, 'Smith', 'John', '1985-03-12'),
(20, 'Garcia', 'Maria', '1993-07-22'),
(21, 'Chen', 'Wei', '1990-11-05'),
(22, 'Dupont', 'Jean', '1975-01-30'),
(23, 'Müller', 'Stefan', '1982-08-14'),
(24, 'Silva', 'Ricardo', '1998-04-03'),
(25, 'Novak', 'Petra', '1991-12-10'),
(26, 'Ivanov', 'Dimitri', '1980-06-15'),
(27, 'Sato', 'Yuki', '1994-09-28'),
(28, 'O''Connor', 'Siobhan', '1989-02-17'),
(29, 'Kim', 'Ji-won', '2003-05-09'),
(30, 'Abadi', 'Amira', '1996-10-21'),
(31, 'Holz', 'Walter', '2006-07-15'),
(32, 'Brown', 'Charlie', '1995-10-30'),
(33, 'Larsen', 'Erik', '1984-04-12'),
(34, 'Zanetti', 'Luigi', '1972-11-20'),
(35, 'Santos', 'Beatriz', '1999-01-08'),
(36, 'Lee', 'Bruce', '1973-11-27'),
(37, 'Andersson', 'Sven', '1968-03-14'),
(38, 'Dubois', 'Claire', '1992-06-25'),
(39, 'Hansen', 'Mette', '1987-09-02'),
(40, 'Kowalski', 'Jan', '1981-05-19'),
(41, 'Wong', 'Mei', '1997-12-04'),
(42, 'Rodriguez', 'Elena', '2000-08-11'),
(43, 'Kamau', 'David', '1994-02-28'),
(44, 'Yilmaz', 'Fatma', '1991-03-15'),
(45, 'Bakker', 'Lars', '1986-07-07'),
(46, 'Nielsen', 'Freja', '1995-04-23'),
(47, 'Papadopoulos', 'Nikos', '1983-10-10'),
(48, 'Popov', 'Alexei', '1979-12-12'),
(49, 'Johansson', 'Karin', '1990-01-01'),
(50, 'Martinez', 'Sofia', '2002-05-20');


CREATE TABLE IF NOT EXISTS Taetigkeit (
	TID INT PRIMARY KEY,
    Bezeichnung VARCHAR(100)
);

INSERT INTO Taetigkeit (TID, Bezeichnung) VALUES
(1, 'Rosenschnitt'),
(2, 'Rasen mähen'),
(3, 'Unkrautjäten'),
(4, 'Bäume_stutzen'),
(5, 'Orchideen bewässern'),
(6, 'Avocados pflücken'),
(7, 'Bewässern'),
(8, 'Heckenschnitt');

CREATE TABLE IF NOT EXISTS Pflegearbeit (
    PID INT PRIMARY KEY,
    OID INT,
    TID INT,
    MID_Soll INT,
    MID_Ist INT,
    Datum_Soll DATE,
    Datum_Abschluss DATE,
    FOREIGN KEY (OID) REFERENCES Objekt (OID),
    FOREIGN KEY (TID) REFERENCES Taetigkeit (TID),
    FOREIGN KEY (MID_Soll) REFERENCES Mitarbeiter (MID),
    FOREIGN KEY (MID_Ist) REFERENCES Mitarbeiter (MID)
);

