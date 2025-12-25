 /* =============================================
IHK PRÜFUNGSVORBEREITUNG DATENBANK
Zweck: Übungsdatenbank für SQL-Abfragen
Hinweis: Fehler/leere Felder sind beabsichtigt!
In Prüfungen dient dies zur Übung von Abfragen auf fehlende Daten (z.B. WHERE Ort = '').
Es soll keine perfekte Datenbank sein, sondern eine zum lernen (auch Fehler zu erkennen)
 ============================================= */

-- Datenbank erstellen und auswählen
CREATE DATABASE IF NOT EXISTS Pruefung;
USE Pruefung;

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

CREATE TABLE Abteilung (
	AbtID INT PRIMARY KEY,
    Abteilung VARCHAR(50)
);

INSERT INTO Abteilung (AbtID, Abteilung) VALUES
(1, 'Verwaltung'),
(2, 'Produktion'),
(3, 'Entwicklung'),
(4, 'Gärtner'),
(5, 'Hausmeister'),
(6, 'IT');


CREATE TABLE FehlzeitArt (
	FzAID INT PRIMARY KEY,
    Fehlzeitart VARCHAR(30)
);

INSERT INTO FehlzeitArt (FzAID, Fehlzeitart) VALUES
(1, 'AU'),
(2, 'Urlaub'),
(3, 'Dienstreise'),
(4, 'Unentschuldigt'),
(5, 'Elternzeit'),
(6, 'Überstunden Abfeiern'),
(7, 'Lockdown');

-- Tabelle Objekte
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


CREATE TABLE IF NOT EXISTS Wohnort (
    WohnID INT PRIMARY KEY,
    MID INT,
    Strasse VARCHAR(100),
    PLZ VARCHAR(6),
    Ort VARCHAR(30),
    FOREIGN KEY (MID) REFERENCES Mitarbeiter (MID)
);

INSERT INTO Wohnort (WohnID, MID, Strasse, PLZ, Ort) VALUES
( 1, 1, 'Musterstrasse 12', '50733', 'Köln'),
( 2, 2, 'Hauptstra. 22', '52063', 'Aachen'),
( 3, 3, 'Bahnhofstrasse 3', '52063', 'Aachen'),
( 4, 4, 'Gosse 13', '52063', 'Aachen'),
( 5, 5, 'Aachenstrasse 65', '50733', 'Köln'),
( 6, 6, 'Gethostrasse 112', '', ''),
( 7, 7, 'Wurzelberg 96', '50733', 'Köln'),
( 8, 8, 'Kölnerstr. 65', '52063', 'Aachen'),
( 9, 9, 'Klichstr. 7', '50733', 'Köln'),
( 10, 10, 'Von Bern Str.5', '52063', 'Aachen'),
( 11, 11, 'Peterstr. 7', '52063', 'Aachen'),
( 12, 12, 'Golfstrasse 86', '', ''),
( 13, 13, 'Undsoweisterstr. 89', '50733', 'Köln'),
( 14, 14, 'Alle 787', '50733', 'Köln'),
( 15, 15, 'Münsterstr. 4', '50733', 'Köln'),
( 16, 16, 'Mannheimerstrasse 6', '52063', 'Aachen'),
( 17, 17, 'WohinDahin 23', '50733', 'Köln'),
( 18, 18, 'VeggiWürstchen 45', '52063', 'Aachen'),
( 19, 31, 'Suppenteller 87', '50733', 'Köln'),
( 20, 19, 'Bäckerweg 1', '50733', 'Köln'),
( 21, 20, 'Römerstraße 10', '52063', 'Aachen'),
( 22, 21, 'Kanalgasse 4', '50733', 'Köln'),
( 23, 22, 'Marktplatz 1', '52063', 'Aachen'),
( 24, 23, 'Feldweg 50', '50733', 'Köln'),
( 25, 24, 'Eichenallee 5', '52063', 'Aachen'),
( 26, 25, 'Brunnenstr. 12', '50733', 'Köln'),
( 27, 26, 'Waldhang 15', '52063', 'Aachen'),
( 28, 27, 'Kirchweg 2', '50733', 'Köln'),
( 29, 28, 'Wiesenstr. 1', '52063', 'Aachen'),
( 30, 29, 'Bergstr. 99', '50733', 'Köln'),
( 31, 30, 'Talweg 3', '52063', 'Aachen'),
( 32, 32, 'Schulstr. 10', '50733', 'Köln'),
( 33, 33, 'Postweg 5', '52063', 'Aachen'),
( 34, 34, 'Gartenstr. 20', '50733', 'Köln'),
( 35, 35, 'Hafenstr. 11', '52063', 'Aachen'),
( 36, 36, 'Industriestr. 4', '50733', ' '),
( 37, 37, 'Nordweg 10', '52063', 'Aachen'),
( 38, 38, 'Südkurve 8', '50733', 'Köln'),
( 39, 39, 'Westend 2', ' ', 'Aachen'),
( 40, 40, 'Ostwall 1', '50733', 'Köln'),
( 41, 41, 'Zentralplatz 5', '52063', 'Aachen'),
( 42, 42, 'Kurzer Weg 7', '50733', 'Köln'),
( 43, 43, 'Langer Gang 1', '52063', 'Aachen'),
( 44, 44, 'Mittelweg 1', '50733', 'Köln'),
( 45, 45, 'Steingasse 10', '52063', 'Aachen'),
( 46, 46, 'Parkallee 3', '50733', 'Köln'),
( 47, 47, 'Sonnenhang 1', '52063', 'Aachen'),
( 48, 48, 'Mondstr. 12', '50733', 'Köln'),
( 49, 49, 'Sternweg 22', '52063', 'Aachen'),
( 50, 50, 'Regenbogen 5', '50733', 'Köln');

CREATE TABLE IF NOT EXISTS Fehlzeit (
    FzID INT PRIMARY KEY,
    FzAID INT,
    MID INT,
    VonDatum DATE,
    BisDatum DATE,
    FehltageSum INT, -- wird für eine IHK Prüfung so gebraucht
    FOREIGN KEY (FzAID) REFERENCES FehlzeitArt (FzAID),
    FOREIGN KEY (MID) REFERENCES Mitarbeiter (MID)
);

-- FehltageSum wurde von einer alten IHK Pruefung so gewohlt
INSERT INTO Fehlzeit (FzID, FzAID, MID, VonDatum, BisDatum, FehltageSum) VALUES
(1, 6, 31, '2022-05-10', '2022-05-20', 10),
(2, 3, 6, '2022-05-16', '2022-05-29', 13),
(3, 6, 2, '2022-05-18', '2022-05-22', 4),
(4, 1, 5, '2022-05-18', '2023-05-22', 369),
(5, 1, 7, '2022-05-23', '2022-05-29', 6),
(6, 3, 1, '2022-05-30', '2022-06-16', 17),
(7, 2, 12, '2022-05-25', '2022-05-26', 1),
(8, 4, 4, '2022-06-06', '2022-06-08', 2),
(9, 1, 31, '2022-06-27', '2022-06-29', 2),
(10, 2, 8, '2022-06-15', '2022-06-24', 9),
(11, 3, 10, '2022-06-22', '2022-06-26', 4),
(12, 1, 3, '2023-02-12', '2023-02-20', 8),
(13, 4, 6, '2023-02-04', '2023-02-21', 17),
(14, 3, 9, '2023-03-02', '2023-03-10', 8),
(15, 4, 31, '2023-02-12', '2023-03-16', 32),
(16, 4, 16, '2023-05-14', '2023-05-22', 8),
(17, 2, 7, '2023-05-12', '2023-05-29', 17),
(18, 3, 10, '2023-05-16', '2023-06-22', 37),
(20, 6, 3, '2023-05-12', '2023-06-29', 48),
(21, 5, 9, '2022-03-01', '2023-05-15', 440),
(22, 5, 12, '2022-06-24', '2023-12-31', 555),
(23, 2, 19, '2023-01-10', '2023-01-24', 14),
(24, 1, 20, '2023-02-01', '2023-02-05', 4),
(25, 3, 21, '2023-03-15', '2023-03-18', 3),
(26, 6, 22, '2023-04-10', '2023-04-12', 2),
(27, 2, 23, '2023-05-01', '2023-05-15', 14),
(28, 1, 24, '2023-06-20', '2023-06-25', 5),
(29, 2, 25, '2023-07-01', '2023-07-20', 19),
(30, 4, 26, '2023-08-05', '2023-08-06', 1),
(31, 3, 27, '2023-09-10', '2023-09-15', 5),
(32, 2, 28, '2023-10-01', '2023-10-10', 9),
(33, 1, 29, '2023-11-12', '2023-11-15', 3),
(34, 6, 30, '2023-12-01', '2023-12-05', 4),
(35, 2, 32, '2023-01-15', '2023-01-30', 15),
(36, 1, 33, '2023-02-10', '2023-02-14', 4),
(37, 3, 34, '2023-03-05', '2023-03-10', 5),
(38, 4, 35, '2023-04-20', '2023-04-21', 1),
(39, 2, 36, '2023-05-10', '2023-05-25', 15),
(40, 1, 37, '2023-06-01', '2023-06-03', 2),
(41, 6, 38, '2023-07-15', '2023-07-18', 3),
(42, 3, 39, '2023-08-10', '2023-08-20', 10),
(43, 2, 40, '2023-09-05', '2023-09-15', 10),
(44, 1, 41, '2023-10-10', '2023-10-12', 2),
(45, 2, 42, '2023-11-01', '2023-11-10', 9),
(46, 4, 43, '2023-12-15', '2023-12-16', 1),
(47, 3, 44, '2023-01-20', '2023-01-25', 5),
(48, 2, 45, '2023-02-15', '2023-02-28', 13),
(49, 1, 46, '2023-03-10', '2023-03-12', 2),
(50, 6, 47, '2023-04-05', '2023-04-08', 3);

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

INSERT INTO Pflegearbeit (PID, OID, TID, MID_Soll, MID_Ist, Datum_Soll, Datum_Abschluss) VALUES
(1, 1, 2, 31, 31, '2023-04-20', '2023-04-20'),
(2, 1, 2, 2, 2, '2023-05-11', NULL),
(3, 2, 1, 1, 2, '2023-03-20', '2023-03-21'),
(4, 2, 1, 1, NULL, '2023-08-01', NULL),
(5, 2, 3, 31, NULL, '2023-07-28', NULL),
(6, 8, 8, 7, NULL, '2023-06-19', NULL),
(7, 8, 2, 3, NULL, '2023-06-19', NULL),
(8, 8, 3, 4, NULL, '2023-06-22', NULL),
(9, 8, 1, 6, NULL, '2023-06-26', NULL),
(10, 8, 1, 2, NULL, '2023-06-27', NULL),
(11, 4, 4, 1, NULL, '2023-07-02', NULL),
(12, 5, 5, 31, NULL, '2023-07-12', NULL),
(13, 6, 6, 7, NULL, '2023-07-25', NULL),
(14, 7, 4, 3, NULL, '2023-07-29', NULL),
(15, 4, 7, 31, NULL, '2023-08-06', NULL),
(16, 2, 3, 5, NULL, '2023-08-18', NULL),
(17, 6, 1, 2, NULL, '2023-08-28', NULL),
(18, 3, 5, 19, 19, '2023-09-01', '2023-09-01'),
(19, 3, 7, 20, 20, '2023-09-02', '2023-09-02'),
(20, 1, 2, 21, 21, '2023-09-05', '2023-09-05'),
(21, 5, 6, 22, 22, '2023-09-10', '2023-09-11'),
(22, 4, 7, 23, 23, '2023-09-12', '2023-09-12'),
(23, 2, 1, 24, NULL, '2023-09-15', NULL),
(24, 8, 8, 25, 25, '2023-09-18', '2023-09-18'),
(25, 7, 4, 26, 26, '2023-09-20', '2023-09-21'),
(26, 6, 6, 27, 27, '2023-09-22', '2023-09-22'),
(27, 1, 2, 28, 28, '2023-09-25', '2023-09-25'),
(28, 3, 5, 29, NULL, '2023-09-28', NULL),
(29, 2, 3, 30, 30, '2023-10-01', '2023-10-01'),
(30, 4, 4, 32, 32, '2023-10-02', '2023-10-03'),
(31, 5, 6, 33, 33, '2023-10-05', '2023-10-05'),
(32, 8, 8, 34, 34, '2023-10-08', '2023-10-08'),
(33, 7, 3, 35, 35, '2023-10-10', '2023-10-10'),
(34, 6, 1, 36, 36, '2023-10-12', '2023-10-12'),
(35, 1, 2, 37, 37, '2023-10-15', '2023-10-15'),
(36, 2, 8, 38, 38, '2023-10-18', '2023-10-18'),
(37, 3, 5, 39, NULL, '2023-10-20', NULL),
(38, 4, 7, 40, 40, '2023-10-22', '2023-10-22'),
(39, 5, 6, 41, 41, '2023-10-25', '2023-10-25'),
(40, 8, 2, 42, 42, '2023-10-28', '2023-10-29'),
(41, 7, 3, 43, 43, '2023-11-01', '2023-11-01'),
(42, 6, 4, 44, 44, '2023-11-03', '2023-11-03'),
(43, 1, 2, 45, 45, '2023-11-05', '2023-11-05'),
(44, 2, 1, 46, NULL, '2023-11-08', NULL),
(45, 3, 5, 47, 47, '2023-11-10', '2023-11-10'),
(46, 4, 8, 48, 48, '2023-11-12', '2023-11-12'),
(47, 5, 6, 49, 49, '2023-11-15', '2023-11-15'),
(48, 8, 3, 50, 50, '2023-11-18', '2023-11-18'),
(49, 7, 4, 15, 15, '2023-11-20', '2023-11-20'),
(50, 6, 1, 10, 10, '2023-11-22', '2023-11-22');