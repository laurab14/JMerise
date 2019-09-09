#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Specialty
#------------------------------------------------------------

CREATE TABLE Specialty(
        ID        Int  Auto_increment  NOT NULL ,
        specialty Varchar (50) NOT NULL
	,CONSTRAINT Specialty_PK PRIMARY KEY (ID)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Doctor
#------------------------------------------------------------

CREATE TABLE Doctor(
        ID           Int  Auto_increment  NOT NULL ,
        lastName     Varchar (50) NOT NULL ,
        firstName    Varchar (50) NOT NULL ,
        mail         Varchar (50) NOT NULL ,
        ID_Specialty Int NOT NULL
	,CONSTRAINT Doctor_PK PRIMARY KEY (ID)

	,CONSTRAINT Doctor_Specialty_FK FOREIGN KEY (ID_Specialty) REFERENCES Specialty(ID)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Patient
#------------------------------------------------------------

CREATE TABLE Patient(
        ID        Int  Auto_increment  NOT NULL ,
        lastName  Varchar (50) NOT NULL ,
        firstName Varchar (50) NOT NULL ,
        birthday  Date NOT NULL ,
        ID_Doctor Int NOT NULL
	,CONSTRAINT Patient_PK PRIMARY KEY (ID)

	,CONSTRAINT Patient_Doctor_FK FOREIGN KEY (ID_Doctor) REFERENCES Doctor(ID)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Hours
#------------------------------------------------------------

CREATE TABLE Hours(
        ID    Int  Auto_increment  NOT NULL ,
        hours Varchar (50) NOT NULL
	,CONSTRAINT Hours_PK PRIMARY KEY (ID)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: RDV
#------------------------------------------------------------

CREATE TABLE RDV(
        ID         Int  Auto_increment  NOT NULL ,
        date       Date NOT NULL ,
        ID_Patient Int NOT NULL ,
        ID_Doctor  Int NOT NULL ,
        ID_Hours   Int NOT NULL
	,CONSTRAINT RDV_PK PRIMARY KEY (ID)

	,CONSTRAINT RDV_Patient_FK FOREIGN KEY (ID_Patient) REFERENCES Patient(ID)
	,CONSTRAINT RDV_Doctor0_FK FOREIGN KEY (ID_Doctor) REFERENCES Doctor(ID)
	,CONSTRAINT RDV_Hours1_FK FOREIGN KEY (ID_Hours) REFERENCES Hours(ID)
)ENGINE=InnoDB;

