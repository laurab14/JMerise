SELECT RDV.date AS `RDV Jour`, Hours.hours AS `RDV Heure`, Patient.lastName AS `Nom du patient`, Patient.firstName AS `Prénom du patient`, Doctor.lastName AS `Docteur`, Specialty.specialty AS `Spécialité` FROM `RDV` INNER JOIN `Hours` ON RDV.Id_Hours = Hours.ID INNER JOIN `Patient` ON RDV.ID_Patient = Patient.ID INNER JOIN `Doctor` ON RDV.ID_Doctor = Doctor.ID INNER JOIN `Specialty` ON Specialty.ID = Doctor.ID_Specialty GROUP BY RDV.ID;

SELECT Doctor.lastName AS `Docteur`, RDV.date AS `RDV Jour`, Hours.hours AS `RDV Heure`, Patient.lastName AS `Nom du patient`, Patient.firstName AS `Prénom du patient` FROM `RDV` INNER JOIN `Hours` ON RDV.Id_Hours = Hours.ID INNER JOIN `Patient` ON RDV.ID_Patient = Patient.ID INNER JOIN `Doctor` ON RDV.ID_Doctor = Doctor.ID WHERE Doctor.ID=1 GROUP BY RDV.ID;

SELECT Patient.lastName AS `Nom du patient`, Patient.firstName AS `Prénom du patient`, Specialty.specialty AS `Spécialité`, Doctor.lastName AS `Docteur`, Doctor.firstName AS `Prénom`,  RDV.date AS `RDV Jour`, Hours.hours AS `RDV Heure` FROM `RDV` INNER JOIN `Hours` ON RDV.Id_Hours = Hours.ID INNER JOIN `Patient` ON RDV.ID_Patient = Patient.ID INNER JOIN `Doctor` ON RDV.ID_Doctor = Doctor.ID INNER JOIN `Specialty` ON Specialty.ID = Doctor.ID_Specialty WHERE Patient.ID=1 GROUP BY RDV.ID;