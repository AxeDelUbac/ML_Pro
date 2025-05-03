create table Auteurs(
    AuteurID INT PRIMARY KEY,
    Nom VARCHAR(20),
    Prenom VARCHAR(20),
    Pays VARCHAR(30)
);


create table Genres(
    GenreID INT PRIMARY KEY,
    NomGenre VARCHAR(20)
);


create table Livres(
    LivreID INT PRIMARY KEY,
    Titre VARCHAR(30),
    DatePublication DATE,
    Disponibilite BOOLEAN,
    AuteurID INT,
    GenreID INT,
    FOREIGN KEY (AuteurID) REFERENCES Auteurs(AuteurID),
    FOREIGN KEY (GenreID) REFERENCES Genres(GenreID)
);


create table Emprunteurs(
    EmprunteurID INT PRIMARY KEY,
    Nom VARCHAR(30),
    Prenom VARCHAR(30),
    Email VARCHAR(30),
    Telephone VARCHAR(30)
);


create table Emprunts(
    EmpruntsID INT PRIMARY KEY,
    Titre VARCHAR(30),
    DateEmprunt DATE,
    DateRetourPrevu DATE,
    DateRetourEffective DATE,
    EmprunteurID INT,
    GenreID INT,
    FOREIGN KEY (EmprunteurID) REFERENCES Emprunteurs(EmprunteurID),
    FOREIGN KEY (GenreID) REFERENCES Genres(GenreID)
);
SELECT sql as SCHEMA
 FROM sqlite_schema
 WHERE type='table' AND name='Livres'
;
SELECT * FROM Genres
;
SELECT * FROM Livres
;
DROP TABLE Livres
;
DROP TABLE Genres
;
DROP TABLE Emprunts
;
DROP TABLE Emprunteurs
;
DROP TABLE Auteurs
;
create table Auteurs(
    AuteurID INT PRIMARY KEY,
    Nom VARCHAR(20),
    Prénom VARCHAR(20),
    Pays VARCHAR(30)
);



create table Genres(
    GenreID INT PRIMARY KEY,
    NomGenre VARCHAR(20)
);



create table Livres(
    LivreID INT PRIMARY KEY,
    Titre VARCHAR(30),
    DatePublication DATE,
    Disponible BOOLEAN,
    AuteurID INT,
    GenreID INT,
    FOREIGN KEY (AuteurID) REFERENCES Auteurs(AuteurID),
    FOREIGN KEY (GenreID) REFERENCES Genres(GenreID)
);



create table Emprunteurs(
    EmprunteurID INT PRIMARY KEY,
    Nom VARCHAR(30),
    Prénom VARCHAR(30),
    Email VARCHAR(30),
    Telephone VARCHAR(30)
);



create table Emprunts(
    EmpruntID INT PRIMARY KEY,
    DateEmprunt DATE,
    DateRetourPrévu DATE,
    DateRetourEffective DATE,
    EmprunteurID INT,
    GenreID INT,
    FOREIGN KEY (EmprunteurID) REFERENCES Emprunteurs(EmprunteurID),
    FOREIGN KEY (GenreID) REFERENCES Genres(GenreID)
);
INSERT INTO Auteurs (AuteurID, Nom, Prénom, Pays) VALUES

(1, 'Hugo', 'Victor', 'France'),

(2, 'Orwell', 'George', 'Royaume-Uni'),

(3, 'Asimov', 'Isaac', 'Russie'),

(4, 'Tolkien', 'J.R.R.', 'Royaume-Uni'),

(5, 'Austen', 'Jane', 'Royaume-Uni'),

(6, 'Dumas', 'Alexandre', 'France'),

(7, 'Bradbury', 'Ray', 'États-Unis'),

(8, 'Camus', 'Albert', 'France'),

(9, 'Verne', 'Jules', 'France'),

(10, 'Hemingway', 'Ernest', 'États-Unis');




INSERT INTO Genres (GenreID, NomGenre) VALUES

(1, 'Roman'),

(2, 'Science-fiction'),

(3, 'Fantasy'),

(4, 'Classique'),

(5, 'Philosophie'),

(6, 'Aventure'),

(7, 'Horreur'),

(8, 'Biographie');




INSERT INTO Livres (LivreID, Titre, AuteurID, GenreID, DatePublication, Disponible) VALUES

(1, 'Les Misérables', 1, 1, '1862-01-01', TRUE),

(2, '1984', 2, 2, '1949-06-08', FALSE),

(3, 'Fondation', 3, 2, '1951-01-01', TRUE),

(4, 'Le Seigneur des Anneaux', 4, 3, '1954-07-29', TRUE),

(5, 'Orgueil et Préjugés', 5, 4, '1813-01-28', TRUE),

(6, 'Le Comte de Monte-Cristo', 6, 6, '1844-08-28', TRUE),

(7, 'Fahrenheit 451', 7, 2, '1953-10-19', TRUE),

(8, 'L’Étranger', 8, 5, '1942-01-01', FALSE),

(9, 'Vingt mille lieues sous les mers', 9, 6, '1870-06-20', TRUE),

(10, 'Le Vieil Homme et la Mer', 10, 4, '1952-09-01', FALSE),

(11, 'Les Trois Mousquetaires', 6, 6, '1844-03-14', TRUE),

(12, 'Le Château', NULL, 4, '1926-01-01', TRUE);




INSERT INTO Emprunteurs (EmprunteurID, Nom, Prénom, Email, Telephone) VALUES

(1, 'Dupont', 'Jean', 'jean.dupont@mail.com', '0601020304'),

(2, 'Martin', 'Lucie', 'lucie.martin@mail.com', '0602030405'),

(3, 'Bernard', 'Paul', 'paul.bernard@mail.com', '0603040506'),

(4, 'Durand', 'Sophie', 'sophie.durand@mail.com', '0604050607'),

(5, 'Lefevre', 'Antoine', NULL, '0605060708'),

(6, 'Roux', 'Marie', 'marie.roux@mail.com', '0606070809'),

(7, 'Moreau', 'Julie', 'julie.moreau@mail.com', '0607080910'),

(8, 'Petit', 'Nicolas', 'nicolas.petit@mail.com', '0608091011'),

(9, 'Girard', 'Laure', 'laure.girard@mail.com', '0609101112'),

(10, 'Andre', 'Thomas', 'thomas.andre@mail.com', NULL),

(11, 'Lam', 'Marc', 'marc.lam@mail.com', '0609101113')

;
DROP TABLE Livres
;
DROP TABLE Genres
;
DROP TABLE Emprunts
;
DROP TABLE Emprunteurs
;
DROP TABLE Auteurs
;
create table Auteurs(
    AuteurID INT PRIMARY KEY,
    Nom VARCHAR(20),
    Prenom VARCHAR(20),
    Pays VARCHAR(30)
);



create table Genres(
    GenreID INT PRIMARY KEY,
    NomGenre VARCHAR(20)
);



create table Livres(
    LivreID INT PRIMARY KEY,
    Titre VARCHAR(30),
    DatePublication DATE,
    Disponibilite BOOLEAN,
    AuteurID INT,
    GenreID INT,
    FOREIGN KEY (AuteurID) REFERENCES Auteurs(AuteurID),
    FOREIGN KEY (GenreID) REFERENCES Genres(GenreID)
);



create table Emprunteurs(
    EmprunteurID INT PRIMARY KEY,
    Nom VARCHAR(30),
    Prenom VARCHAR(30),
    Email VARCHAR(30),
    Téléphone VARCHAR(30)
);



create table Emprunts(
    EmpruntsID INT PRIMARY KEY,
    Titre VARCHAR(30),
    DateEmprunt DATE,
    DateRetourPrevu DATE,
    DateRetourEffective DATE,
    EmprunteurID INT,
    LivreID INT,
    FOREIGN KEY (EmprunteurID) REFERENCES Emprunteurs(EmprunteurID),
    FOREIGN KEY (LivreID) REFERENCES Livres(LivreID)
);
INSERT INTO Auteurs (AuteurID, Nom, Prenom, Pays) VALUES

(1, 'Hugo', 'Victor', 'France'),

(2, 'Orwell', 'George', 'Royaume-Uni'),

(3, 'Asimov', 'Isaac', 'Russie'),

(4, 'Tolkien', 'J.R.R.', 'Royaume-Uni'),

(5, 'Austen', 'Jane', 'Royaume-Uni'),

(6, 'Dumas', 'Alexandre', 'France'),

(7, 'Bradbury', 'Ray', 'États-Unis'),

(8, 'Camus', 'Albert', 'France'),

(9, 'Verne', 'Jules', 'France'),

(10, 'Hemingway', 'Ernest', 'États-Unis');




INSERT INTO Genres (GenreID, NomGenre) VALUES

(1, 'Roman'),

(2, 'Science-fiction'),

(3, 'Fantasy'),

(4, 'Classique'),

(5, 'Philosophie'),

(6, 'Aventure'),

(7, 'Horreur'),

(8, 'Biographie');




INSERT INTO Livres (LivreID, Titre, AuteurID, GenreID, DatePublication, Disponibilite) VALUES

(1, 'Les Misérables', 1, 1, '1862-01-01', TRUE),

(2, '1984', 2, 2, '1949-06-08', FALSE),

(3, 'Fondation', 3, 2, '1951-01-01', TRUE),

(4, 'Le Seigneur des Anneaux', 4, 3, '1954-07-29', TRUE),

(5, 'Orgueil et Préjugés', 5, 4, '1813-01-28', TRUE),

(6, 'Le Comte de Monte-Cristo', 6, 6, '1844-08-28', TRUE),

(7, 'Fahrenheit 451', 7, 2, '1953-10-19', TRUE),

(8, 'L’Étranger', 8, 5, '1942-01-01', FALSE),

(9, 'Vingt mille lieues sous les mers', 9, 6, '1870-06-20', TRUE),

(10, 'Le Vieil Homme et la Mer', 10, 4, '1952-09-01', FALSE),

(11, 'Les Trois Mousquetaires', 6, 6, '1844-03-14', TRUE),

(12, 'Le Château', NULL, 4, '1926-01-01', TRUE);




INSERT INTO Emprunteurs (EmprunteurID, Nom, Prenom, Email, Téléphone) VALUES

(1, 'Dupont', 'Jean', 'jean.dupont@mail.com', '0601020304'),

(2, 'Martin', 'Lucie', 'lucie.martin@mail.com', '0602030405'),

(3, 'Bernard', 'Paul', 'paul.bernard@mail.com', '0603040506'),

(4, 'Durand', 'Sophie', 'sophie.durand@mail.com', '0604050607'),

(5, 'Lefevre', 'Antoine', NULL, '0605060708'),

(6, 'Roux', 'Marie', 'marie.roux@mail.com', '0606070809'),

(7, 'Moreau', 'Julie', 'julie.moreau@mail.com', '0607080910'),

(8, 'Petit', 'Nicolas', 'nicolas.petit@mail.com', '0608091011'),

(9, 'Girard', 'Laure', 'laure.girard@mail.com', '0609101112'),

(10, 'Andre', 'Thomas', 'thomas.andre@mail.com', NULL),

(11, 'Lam', 'Marc', 'marc.lam@mail.com', '0609101113')

;




INSERT INTO Emprunts (EmpruntsID, LivreID, EmprunteurID, DateEmprunt, DateRetourPrevu, DateRetourEffective) VALUES

(1, 1, 1, '2024-10-10', '2024-10-17', NULL),

(2, 2, 2, '2024-10-11', '2024-10-18', '2024-10-13'),

(3, 3, 3, '2024-10-12', '2024-10-19', NULL),

(4, 4, 4, '2024-10-13', '2024-10-20', '2024-10-17'),

(5, 5, 5, '2024-10-14', '2024-10-21', NULL),

(6, 6, 6, '2024-10-15', '2024-10-22', '2024-10-20'),

(7, 7, 7, '2024-10-16', '2024-10-23', NULL),

(8, 8, 8, '2024-10-17', '2024-10-24', '2024-10-28'),

(9, 9, 9, '2024-10-18', '2024-10-25', NULL),

(10, 5, 10, '2024-10-19', '2024-10-26', NULL),

(11, 11, 1, '2024-10-20', '2024-10-27', '2024-10-25'),

(12, 7, 2, '2024-10-21', '2024-10-28', NULL),

(13, 8, 3, '2024-10-22', '2024-10-29', NULL),

(15, 1, 5, '2024-10-24', '2024-10-31', NULL),

(16, 4, 6, '2024-10-25', '2024-11-01', NULL),

(17, 9, 7, '2024-10-26', '2024-11-02', NULL);
