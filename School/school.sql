#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Professeurs
#------------------------------------------------------------

CREATE TABLE Professeurs(
        ID           Int  Auto_increment  NOT NULL ,
        Nom          Varchar (50) NOT NULL ,
        Prenom       Varchar (50) NOT NULL ,
        Adresse_mail Varchar (50) NOT NULL
	,CONSTRAINT Professeurs_PK PRIMARY KEY (ID)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Classe
#------------------------------------------------------------

CREATE TABLE Classe(
        ID             Int  Auto_increment  NOT NULL ,
        Classe         Varchar (50) NOT NULL ,
        ID_Professeurs Int NOT NULL
	,CONSTRAINT Classe_PK PRIMARY KEY (ID)

	,CONSTRAINT Classe_Professeurs_FK FOREIGN KEY (ID_Professeurs) REFERENCES Professeurs(ID)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Eleves
#------------------------------------------------------------

CREATE TABLE Eleves(
        ID        Int  Auto_increment  NOT NULL ,
        Nom       Varchar (50) NOT NULL ,
        Prenom    Varchar (50) NOT NULL ,
        ID_Classe Int NOT NULL
	,CONSTRAINT Eleves_PK PRIMARY KEY (ID)

	,CONSTRAINT Eleves_Classe_FK FOREIGN KEY (ID_Classe) REFERENCES Classe(ID)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Matieres
#------------------------------------------------------------

CREATE TABLE Matieres(
        ID      Int  Auto_increment  NOT NULL ,
        Matiere Varchar (50) NOT NULL
	,CONSTRAINT Matieres_PK PRIMARY KEY (ID)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Notes
#------------------------------------------------------------

CREATE TABLE Notes(
        ID          Int  Auto_increment  NOT NULL ,
        Note        Int NOT NULL ,
        ID_Eleves   Int NOT NULL ,
        ID_Matieres Int NOT NULL
	,CONSTRAINT Notes_PK PRIMARY KEY (ID)

	,CONSTRAINT Notes_Eleves_FK FOREIGN KEY (ID_Eleves) REFERENCES Eleves(ID)
	,CONSTRAINT Notes_Matieres0_FK FOREIGN KEY (ID_Matieres) REFERENCES Matieres(ID)
)ENGINE=InnoDB;

