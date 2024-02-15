-- Création et utilisation de la bdd

DROP DATABASE IF EXISTS Animaux;
CREATE DATABASE Animaux;

USE Animaux;

-- Création des tables

CREATE TABLE alimentation (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    regime SET('Carnivore', 'Herbivore', 'Omnivore') NOT NULL,
    nourriture VARCHAR(200) NOT NULL,
    preference VARCHAR(100) NULL
);

CREATE TABLE mobilite (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    deplacement VARCHAR(100) NOT NULL,
    details VARCHAR(150) NULL
);

CREATE TABLE milieu_de_vie (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    habitat VARCHAR(100) NOT NULL,
    milieu SET('Terrestre', 'Aquatique', 'Aérien') NOT NULL,
    localisation VARCHAR(100) NULL
);

CREATE TABLE apparence (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    peau SET('Peaux nues', 'Peaux minces et dures', 'Plumes', 'Ecailles', 'Poils', 'Piquants', 'Coquilles', 'Carapaces' ) NOT NULL,
    taille VARCHAR(80) NOT NULL,
    couleur VARCHAR(100) NOT NULL,
    poid VARCHAR(80) NOT NULL,
    nombre_patte SMALLINT NOT NULL,
    nombre_aile SMALLINT NOT NULL,
    nombre_nageoir SMALLINT NOT NULL,
    details VARCHAR(350) NOT NULL
);

CREATE TABLE espece (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nom VARCHAR(100) NOT NULL,
    nom_scientifique VARCHAR(150) NULL,
    eteint BOOLEAN NOT NULL,
    proteger BOOLEAN NOT NULL,
    dangereux BOOLEAN NOT NULL,
    comestible BOOLEAN NOT NULL,
    comportement VARCHAR(150) NOT NULL,
    longevite_sauvage VARCHAR(50) NOT NULL,
    longevite_domestique VARCHAR(50) NULL,
    id_apparence INT NOT NULL,
    id_milieu_de_vie INT NOT NULL,
    id_mobilite INT NOT NULL,
    id_alimentation INT NOT NULL,
    CONSTRAINT fk_espece_apparence FOREIGN KEY(id_apparence) REFERENCES apparence(id),
    CONSTRAINT fk_espece_milieu_de_vie FOREIGN KEY(id_milieu_de_vie) REFERENCES milieu_de_vie(id),
    CONSTRAINT fk_espece_mobilite FOREIGN KEY(id_mobilite) REFERENCES mobilite(id),
    CONSTRAINT fk_espece_alimentation FOREIGN KEY(id_alimentation) REFERENCES alimentation(id)
);

CREATE TABLE classe (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nom VARCHAR(60) NOT NULL
);

CREATE TABLE famille (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nom VARCHAR(60) NOT NULL
);

CREATE TABLE classification (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    vertebre BOOLEAN NOT NULL,
    type_squelette VARCHAR(40) NULL,
    id_classe INT NOT NULL,
    id_famille INT NOT NULL,
    CONSTRAINT fk_classification_classe FOREIGN KEY(id_classe) REFERENCES classe(id),
    CONSTRAINT fk_classification_famille FOREIGN KEY(id_famille) REFERENCES famille(id)
);

CREATE TABLE animal (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nom VARCHAR(80) NOT NULL,
    autre_nom VARCHAR(100) NOT NULL,
    crie VARCHAR(40) NOT NULL,
    date_ajout DATETIME NOT NULL,
    id_classification INT NOT NULL,
    id_espece INT NOT NULL,
    CONSTRAINT fk_animal_classification FOREIGN KEY(id_classification) REFERENCES classification(id),
    CONSTRAINT fk_animal_espece FOREIGN KEY(id_espece) REFERENCES espece(id)
);

-- fin création des tables
