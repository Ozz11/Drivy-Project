USE d_vydri;

DROP TABLE IF EXISTS t_utilisateur;
CREATE TABLE t_utilisateur(
    id_user INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(20) NOT NULL,
    email VARCHAR(60) NOT NULL,
    pwd VARCHAR(16) NOT NULL,
    adresse VARCHAR(100) NOT NULL,
    permisDeConduire SET("AM","A1","A2","A","B1","B","BE","D1") NOT NULL,
    dateOptention DATE NOT NULL,
    paysOptention VARCHAR(20) NOT NULL,
    telephone CHAR(10),
    dateNaissance DATE,
    lieuNaissance VARCHAR(30),
    presentation TEXT,
    resauxSociaux SET("Facebook","Twitter","Instagram"),
    photo_user VARCHAR(255),
    CONSTRAINT pk_id_user PRIMARY KEY (id_user)
)ENGINE = INNODB;

DROP TABLE IF EXISTS t_vehicule;
CREATE TABLE t_vehicule(
    id_vehicule INT NOT NULL AUTO_INCREMENT,
    marque VARCHAR(30) NOT NULL,
    modele VARCHAR(30) NOT NULL,
    kilometrage INT NOT NULL,
    prix FLOAT(10,2) NOT NULL,
    lieu VARCHAR(100) NOT NULL,
    tempsMin INT NOT NULL,
    tempsMax INT NOT NULL,
    photo_vehicule VARCHAR(255),
    carburant VARCHAR(10),
    caracteristiqueTechnique TEXT,
    boiteAVitesse VARCHAR(6),
    optionVehicule SET("SiegeBebe","GPS","Climatisation","Porte-velo","Coffre-toit","RegulateurDeVitesse","LimiteurDeVitesse","PneuNeige","Chaine"),
    etat TEXT,
    conditionSuplementire TEXT,
    CONSTRAINT pk_id_vehicule PRIMARY KEY (id_vehicule)
)ENGINE = INNODB;