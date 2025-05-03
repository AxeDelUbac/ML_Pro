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


