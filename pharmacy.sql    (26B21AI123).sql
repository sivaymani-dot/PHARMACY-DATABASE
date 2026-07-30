CREATE DATABASE pharmacy3;
USE pharmacy3;

CREATE TABLE Tablets1 (
    Tablet_ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Weight INT,
    Disease VARCHAR(30),
    Symptoms VARCHAR(30)
    );
INSERT INTO Tablets1 (Tablet_ID, Name, Weight, Disease,Symptoms)
VALUES
(1,'Paracetamol',500,'Fever','High Fever'),
(2,'Crocin',650,'Fever','Body Pain'),
(3,'Dolo 650',650,'Fever','Headache'),
(4,'Cetirizine',10,'Allergy','Sneezing'),
(5,'Azithromycin',500,'Infection','Sore Throat');
SELECT * FROM Tablets1;
ALTER TABLE Tablets1 ADD Cost INT;
ALTER TABLE Tablets1 RENAME COLUMN Cost TO Tablet_Cost;
INSERT INTO Tablets1 (Tablet_ID, Name, Weight, Disease,Symptoms,Cost)
VALUES
(6,'Amoxicillin',250,'Infection','Cough',30.00),
(7,'Pantoprazole',40,'Acidity','Heartburn',18.00),
(8,'Omeprazole',20,'Acidity','Stomach Pain',20.00),
(9,'Metformin',500,'Diabetes','High Sugar',25.00),
(10,'Glimipride',2,'Diabetes','Fatigue',22.00),
(11,'Ibuprofen',400,'Pain','Joint Pain',16.00),
(12,'Diclofenac',50,'Pain','Back Pain',19.00),
(13,'Vitamin C',500,'Deficiency','Weakness',14.00),
(14,'Zincovit',100,'Deficiency','Low Immunity',28.00),
(15,'Levocetirizine',5,'Allergy','Itching',9.00),
(16,'Aspirin',75,'Heart Disease','Chest Pain',11.00),
(17,'Losartan',50,'Blood Pressure','High BP',35.00),
(18,'Amlodipine',5,'Blood Pressure','Dizziness',32.00),
(19,'ORS',200,'Dehydration','Loose Motion',18.00),
(20,'Loperamide',2,'Diarrhea','Loose Motion',26.00);
SELECT * FROM Tablets1;
ALTER TABLE Tablets1 DROP COLUMN Cost;
select * from Tablets1;
select Weight from Tablets1;
SELECT COUNT(*) AS total_Tablets FROM Tablets1;
SELECT 
AVG(Weight) AS average_Weight,
  MAX(Weight) AS highest_Weight,
  MIN(Weight) AS lowest_Weight,
  SUM(Weight) AS total_Weight
FROM Tablets1;
UPDATE Tablets1 SET Tablet_Cost='20' WHERE Tablet_ID=18;
DELETE FROM Tablets1 WHERE Tablet_ID=9;
ALTER TABLE Tablets1 ADD AGE INT;
UPDATE Tablets1 SET AGE = 15 WHERE Tablet_ID = 1;
UPDATE Tablets1 SET AGE = 10 WHERE Tablet_ID = 2;
UPDATE Tablets1 SET AGE = 18 WHERE Tablet_ID = 3;
UPDATE Tablets1 SET AGE = 26 WHERE Tablet_ID = 4;
UPDATE Tablets1 SET AGE = 27 WHERE Tablet_ID = 5;
UPDATE Tablets1 SET AGE = 18 WHERE Tablet_ID = 6;
UPDATE Tablets1 SET AGE = 15 WHERE Tablet_ID = 7;
UPDATE Tablets1 SET AGE = 29 WHERE Tablet_ID = 8;
UPDATE Tablets1 SET AGE = 18 WHERE Tablet_ID = 10;
UPDATE Tablets1 SET AGE = 19 WHERE Tablet_ID = 11;
UPDATE Tablets1 SET AGE = 25 WHERE Tablet_ID = 12;
UPDATE Tablets1 SET AGE = 10 WHERE Tablet_ID = 13;
UPDATE Tablets1 SET AGE = 36 WHERE Tablet_ID = 14;
UPDATE Tablets1 SET AGE = 28 WHERE Tablet_ID = 15;
UPDATE Tablets1 SET AGE = 19 WHERE Tablet_ID = 16;
UPDATE Tablets1 SET AGE = 18 WHERE Tablet_ID = 17;
UPDATE Tablets1 SET AGE = 27 WHERE Tablet_ID = 18;
UPDATE Tablets1 SET AGE = 26 WHERE Tablet_ID = 19;
UPDATE Tablets1 SET AGE = 13 WHERE Tablet_ID = 20;
SELECT * FROM Tablets1;
SELECT Name, Weight FROM Tablets1 WHERE AGE='18';
SELECT Name, Weight FROM Tablets1 WHERE  Disease='FEVER';
ALTER TABLE Tablets1 ADD QUANTITY INT;
UPDATE Tablets1 SET QUANTITY = 5 WHERE Tablet_ID = 1;
UPDATE Tablets1 SET QUANTITY = 10 WHERE Tablet_ID = 2;
UPDATE Tablets1 SET QUANTITY = 8 WHERE Tablet_ID = 3;
UPDATE Tablets1 SET QUANTITY = 6 WHERE Tablet_ID = 4;
UPDATE Tablets1 SET QUANTITY = 7 WHERE Tablet_ID = 5;
UPDATE Tablets1 SET QUANTITY = 8 WHERE Tablet_ID = 6;
UPDATE Tablets1 SET QUANTITY = 5 WHERE Tablet_ID = 7;
UPDATE Tablets1 SET QUANTITY = 9 WHERE Tablet_ID = 8;
UPDATE Tablets1 SET QUANTITY = 1 WHERE Tablet_ID = 10;
UPDATE Tablets1 SET QUANTITY = 9 WHERE Tablet_ID = 11;
UPDATE Tablets1 SET QUANTITY = 5 WHERE Tablet_ID = 12;
UPDATE Tablets1 SET QUANTITY = 10 WHERE Tablet_ID = 13;
UPDATE Tablets1 SET QUANTITY = 6 WHERE Tablet_ID = 14;
UPDATE Tablets1 SET QUANTITY = 8 WHERE Tablet_ID = 15;
UPDATE Tablets1 SET QUANTITY = 9 WHERE Tablet_ID = 16;
UPDATE Tablets1 SET QUANTITY = 4 WHERE Tablet_ID = 17;
UPDATE Tablets1 SET QUANTITY = 7 WHERE Tablet_ID = 18;
UPDATE Tablets1 SET QUANTITY = 6 WHERE Tablet_ID = 19;
UPDATE Tablets1 SET QUANTITY = 3 WHERE Tablet_ID = 20;
SELECT * FROM Tablets1;
-- Formula: Total_Weight = Weight × Quantity
SELECT
    Tablet_ID,
    Name AS Tablet_Name,
    (Weight * Quantity) AS Total_Weight,
    Symptoms AS Symptom
FROM Tablets1;
SELECT
 Tablet_ID,
    Name AS Tablet_Name,
    Weight AS Tablet_Weight,
    Disease,
    Symptoms AS Symptom
FROM Tablets1