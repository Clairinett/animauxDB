## Base de données Animaux

Utilisation de Docker avec une image de MariaDB pour la base de donnée suivant se MLD

![image](https://github.com/Clairinett/animauxDB/assets/123460185/a740f5d3-e7b7-441b-af3b-7751a5b66c33)

## Prérequis :
Docker <br>
Docker Desktop _facultatif_

## Installation de l'image

https://hub.docker.com/_/mariadb

Dans un terminal de commande
```
docker run --detach --name some-mariadb --env MARIADB_USER=example-user --env
MARIADB_PASSWORD=my_cool_secret --env MARIADB_ROOT_PASSWORD=my-secret-pw mariadb:latest
```
(changer les valeurs par de vrai mots de passes et utilisateur)


Voir les containers allumés `docker ps ` <br>
Si besoin allumé le container avec `docker start nom_container;`

```
docker exec -it nom_container bash
mysql -u root -p
```
Mettre le mot de passe utiliser pour la création du container (MARIADB_ROOT_PASSWORD)

## Insertion du schéma et données

1 . Copier coller les trois première commande du fichier AnimauxDB.sql <br>
Puis copier coller le reste du fichier **(sans les commentaires)**

2 . Copier coller le fichier AnimauxDBData.sql ou AnimauxDBDataOPTI.sql **(sans les commentaires)**

Maintenant jouer avec les données avec des requêtes sql comme :
```
SELECT animal.nom, espece.nom_scientifique, alimentation.regime
FROM animal
JOIN espece ON animal.id_espece=espece.id
JOIN alimentation ON espece.id_alimentation=alimentation.id
WHERE regime = "Carnivore";
```
:)
