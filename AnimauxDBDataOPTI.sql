USE Animaux;

INSERT INTO classe (nom) 
    VALUES ('Amphibien'), ('Mammifère'), ('Gasteropode'), ('Oiseau');

INSERT INTO famille (nom)
    VALUES ('Ranidae'), ('Otariidae'), ('Viverridae'), ('Hélicidae'), ('Trochilidae');

INSERT INTO alimentation (regime, nourriture, preference)
    VALUES ('Carnivore', 'Insectes, Vers, Mollusques (Escargots, Limaces), Crustacés', 'Insectivore'), -- grenouille
('Carnivore', 'Poissons (Anchois, Harengs, Maquereaux, Saumons), Oiseaux marins', 'Piscivore'), -- Otarie
("Omnivore", "Rongeurs (Mulots), Oiseaux, Insectes, Baies, Fruits, Végétaux, Poissons", "Carnivore"), -- genette
("Herbivore", "Plantes, Débris végétaux, Légumes, Fruit", "Salade"), -- escargot
("", "Nectar de fleurs colorées écarlates et tubulaires, Fleurs sucrées", "Nectarivore"); -- colibri

INSERT INTO mobilite (deplacement, details)
    VALUES ("Marche, Saute, Nage", "Les grenouilles sautent pour se déplacer à travers leur habitat à la surface, et nage sous l'eau, tout en allant rechercher de l'aire à la surface."), --grenouille
("Nage, Marche", "Les Otaries utilisent leurs nageoirs comme si c'était des jambes et 'marche' en laissant leur corps suivre."), --otarie
("Marcher, Grimper", "La genette se déplace comme les chats avec leurs petites pattes. Leur griffent permettent de grimper aux arbres."), --genette
("Rampe", "Les escargots 'rampent' par reptation. Ils se déplacent donc avec leur ventre par le mouvement."), --escargot
("vole", "Les colibris battent environ 200 fois des ailes par seconde. Contrairement aux oiseaux les colibris peuvent battre des ailes de bas en haut."); --colibri

INSERT INTO apparence (peau, taille, couleur, poid, nombre_patte, nombre_aile, nombre_nageoir, details)
    VALUES ("Peaux nues", "10 cm environ", "Vert", "20 gr environ", 4, 0, 0, "Sa peau est verte et verruqueuse. Elle a des taches noires sur le dos ainsi que des rayures noires sur les pattes et les flancs. Son ventre est clair. Ses yeux sont jaunes aux pupilles horizontales."), --grenouille
("Poils", "1 à 2 m", "Gris clair ou sombre, Marron, Blond", "30 à 120kg", 2, 0, 2, "Sous son pelage se trouve une couche de graisse qui permet de le garder au chaud dans l'eau et les températures les plus froides. Museau court. Son corps est long, large et flexible. Les pattes au niveau de la queue et à l'avant sont en forme de nageoire et permettent de se déplacer, ce qui le rend agile dans l'eau et sur la terre."), --otarie
("Poils", "35 cm environ", "Gris clair, Marron, Noir", "2 kg environ", 4, 0, 0, "Silhouette élancée avec des courtes pattes. Souvent confondu avec le chat. Son pelage est tacheté sur le dos et présente des rayures sur sa longue queue. Le museau est allongé et pointu comme ses oreilles."), --genette
("Coquilles", "4 cm environ", "Blanc, Beige, Gris, Marron", "20 à 40 gr environ", 0, 0, 0, "Son corps grisâtre est un grand pied qui se déplace grace à sa bave. Sa tête à un museau et 4 tentacules, deux en haut avec les yeux, ceux du bas servent à se diriger. Il possède de nombreuses dents et une langue râpeuse pour se nourrir. Sa coquille grandit toute sa vie et est de couleur sable."), --escargot
("Plumes", "13 cm", "Vert, Violet, Bleu, Marron", "5 à 7 gr", 2, 2, 0, "Bec fin et courbé noir. Plume du corps bleuâtre et verdâtre métalliques. Son menton lui est bleu-violet. Ses pattes sont petites et noires. La queue possède de plus longue plume marron foncé."); --colibri

INSERT INTO milieu_de_vie (habitat, milieu, localisation)
    VALUES ("Mare, Marais, Etang, Eaux douces", "Terrestre,Aquatique", "Europe"), --grenouille
("Mer, Plage, Côtes rocheuses", "Terrestre,Aquatique", "Îles Antarctiques, Mers Antarctique"), --otarie
("Fôret", "Terrestre", "Europe, Afrique, Proche-Orient, L'Arabie, Yémen"), --genette
("Jardin, Fôret", "Terrestre", "Europe"), --escargot
("Montagne à haute altitude, Fôret, Parc, Jardin", "Aérien,Terrestre", "Nord-Est et Est d'Amérique du Sud"); --colibri

INSERT INTO espece (nom, nom_scientifique, eteint, proteger, dangereux, comestible, comportement, longevite_sauvage, longevite_domestique, id_apparence, id_milieu_de_vie, id_mobilite, id_alimentation)
    VALUES ("Grenouille Verte d'Europe", "Pelophylax kl. esculentus", false, true, false, true, "Vivent en groupe et se rechauffe au soleil", "5 à 10 ans", NULL, 1, 1, 1, 1), --grenouille
("Otarie de Kerguelen", "Arctocephalus gazella", false, true, true, false, "Vivent en communauté avec des mâles dominants", "15 à 25 ans", NULL, 2, 2, 2, 2), --otarie
("Genette d'Europe", "Genetta genetta", false, true, false, false, "Vit essentiellement la nuit pour chasser. Il n'a pas d'abris fixe, elle ère la nuit et se pose dans des lieux divers.", "6 ans", "15 ans", 3, 3, 3, 3), --genette
("Escargot de Bourgogne", "Hélix pomatia", false, true, false, true, "Hiberne en s'enfonçant dans le sol jusqu'à 30 cm. Supporte mal la captivité.", "3 ans", "5 à 10 ans", 4, 4, 4, 4), --escargot
("Colibris d'Anaïs", "Colibris coruscans", false, false, false, false, "Solitaire, se déplace en battant des ailes très rapidement.", "Inconnu", NULL, 5, 5, 5, 5); --colibri

INSERT INTO classification (vertebre, type_squelette, id_classe, id_famille)
    VALUES (true, "Os", 1, 1), --grenouille
(true, "os", 2, 2), --otarie
(true, "os", 2, 3), --genette
(false, NULL, 3, 4), --escargot
(true, "os", 4, 5); --colibri

INSERT INTO animal (nom, autre_nom, crie, date_ajout, id_classification, id_espece)
    VALUES ("Grenouille Verte", "Grenouille commune", "Coassement", NOW(), 1, 1), --grenouille
("Otarie", "Otarie à fourrure Antarctique", "Aboiement", NOW(), 2, 2), --otarie
("Genette", "Genette commune", "Miaulement", NOW(), 3, 3), --genette
("Escargot de Bourgogne", "Escargot à la bourguignonne", "Néant", NOW(), 4, 4), --escargot
("Colibri d'Anaïs", "Colibri à oreillons violets ou Oiseaux-Mouches", "Zinzinule", NOW(), 5, 5); --colibri