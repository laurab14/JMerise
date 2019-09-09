SELECT Eleves.Nom, Eleves.Prenom, Notes.note, Matieres.matiere FROM `Eleves` INNER JOIN `Notes` ON Eleves.ID = Notes.Id_Eleves INNER JOIN `Matieres` ON Matieres.ID = Notes.ID_Matieres GROUP BY Eleves.ID;

SELECT Eleves.Nom, Eleves.Prenom, Classe.Classe, Professeurs.Nom, AVG(Notes.Note) FROM `Eleves` INNER JOIN `Classe` ON Eleves.ID_Classe = Classe.ID INNER JOIN `Professeurs` ON Classe.ID_Professeurs = Professeurs.ID INNER JOIN `Notes` ON Eleves.ID = Notes.Id_Eleves GROUP BY Eleves.ID;


SELECT `Professeurs`.`Nom` AS `profName`, `Professeurs`.`Prenom` AS `profFirstname`, `Classe`.`Classe`, `Eleves`.`Nom` AS `eleveName`, `Eleves`.`Prenom` AS `eleveFirstname` FROM `Classe`
RIGHT JOIN `Professeurs` ON `Professeurs`.`ID` = `Classe`.`ID_Professeurs`
RIGHT JOIN `Eleves` ON `Eleves`.`ID_Classe` = `Classe`.`ID`;
