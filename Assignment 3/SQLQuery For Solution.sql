
use prepleadAssignments

-- Datasets Uploaded



-- Q1. You are given four datasets pets.csv, owners.csv, proceduredetails.csv, 
-- proedurehistory.csv. Upload all of them in your SQL server. Find the primary key 
-- in each of the tables and write a query to: (Hint: Use joins)-- a) Q1. Extract information on pet names along with their owner names in the 
-- same table.# Answer Q1.aSELECT p.Name, Concat_ws(' ',o.Name,o.Surname) AS Owner_NameFROM Pets AS pINNER JOIN Owners AS o ON p.OwnerID = o.OwnerID-- b) Extract information for those pets whose owners live in either “Grand 
-- Rapids” or “Southfield”.# Answer Q1.bSELECT p.Name, Concat_ws(' ',o.Name,o.Surname) AS Owner_Name, o.City As CityFROM Pets AS pINNER JOIN Owners AS o ON p.OwnerID = o.OwnerID WHERE o.City = 'Grand Rapids' OR o.City = 'Southfield'-- c) Find the pet’s information which had a procedure performedSELECT p.PetID, p.Name, p.Kind, ph.Date, ph.ProcedureTypeFROM pets AS pINNER JOIN ProceduresHistory AS ph ON p.PetID = ph.PetIDSELECT p.PetID,ph.ProcedureSubCode FROM pets AS pInner JOIN ProceduresHistory as ph ON p.PetID = ph.PetID-- d) Extract information on pet ids along with a description of the procedure 
-- performed on them SELECT r.PetID,pd.*FROM (SELECT p.PetID,ph.ProcedureSubCode AS psc		FROM pets AS p		Inner JOIN ProceduresHistory as ph ON p.PetID = ph.PetID) AS rINNER JOIN ProceduresDetails as pd ON r.psc = pd.ProcedureSubCode-- e) Same as d but only keep those pet ids which are present in pets.csv
SELECT r.PetID,pd.*FROM (SELECT p.PetID,ph.ProcedureSubCode AS psc		FROM pets AS p		Inner JOIN ProceduresHistory as ph ON p.PetID = ph.PetID) AS rINNER JOIN ProceduresDetails as pd ON r.psc = pd.ProcedureSubCode -- f) Find the sum of the price incurred on each pet’s procedure.
SELECT y.PetID,Concat(SUM(Price),' ','Rs.') AS Total_Incurred FROM (SELECT ph.PetID,ph.ProcedureSubCode,pd.Price 
	FROM ProceduresHistory as ph	INNER JOIN ProceduresDetails as pd ON ph.ProcedureSubCode = pd.ProcedureSubCode	) AS y GROUP BY y.PetID-- g) Same as f but only consider those pet’s whose names start with ‘C’SELECT l.*,pt.NameFROM (SELECT y.PetID,Concat(SUM(Price),' ','Rs.') AS Total_Incurred 	FROM (SELECT ph.PetID,ph.ProcedureSubCode,pd.Price 
	FROM ProceduresHistory as ph	INNER JOIN ProceduresDetails as pd ON ph.ProcedureSubCode = pd.ProcedureSubCode	) AS y 	GROUP BY y.PetID) AS lINNER JOIN pets as pt ON l.PetID = pt.PetID WHERE pt.Name Like 'C%'--  h) Same as f but only consider those pet’s whose owner’s name starts with 
-- ‘T’SELECT l.*,pt.Name,ow.Name AS Owner_NameFROM (SELECT y.PetID,Concat(SUM(Price),' ','Rs.') AS Total_Incurred 	FROM (SELECT ph.PetID,ph.ProcedureSubCode,pd.Price 
	FROM ProceduresHistory as ph	INNER JOIN ProceduresDetails as pd ON ph.ProcedureSubCode = pd.ProcedureSubCode	) AS y 	GROUP BY y.PetID) AS lINNER JOIN pets as pt ON l.PetID = pt.PetID INNER JOIN owners as ow ON pt.OwnerID = ow.OwnerIDWhere ow.Name Like 'T%'-- i) Find the owner names who own more than 1 pet

SELECT * FROM OwnersSELECT d.OwnerID,o.Name,d.NnumberOfPetsOwnedFROM (SELECT p.OwnerID,COUNT(p.OwnerID) as NnumberOfPetsOwned
	FROM pets as pGROUP BY p.OwnerID) as dINNER JOIN owners as o ON d.OwnerID = o.OwnerID-- j) Find the count of procedures performed on each pet who are Dogs
SELECT p.OwnerID,p.Name ,l.pId as petOwnsFROM (SELECT COUNT(petID) as pId,petID
	FROM ProceduresHistory	Group By PetID ) as lINNER JOIN pets as p ON l.petID = p.PetID-- k) Find the average price incurred by each owner for their pet’s procedure
SELECT p.OwnerID,p.Name ,l.pId as petOwnsFROM (SELECT COUNT(petID) as pId,petID
	FROM ProceduresHistory	Group By PetID ) as lINNER JOIN pets as p ON l.petID = p.PetID







-- Q4. Determine the no. of records that we will get when you perform
DROP TABLE table2

CREATE TABLE table1(
A int,
B varchar(5)
)

CREATE TABLE table2(
A int,
C varchar(5)
)


INSERT INTO table1 
VALUES (1,'B1'),
(1,'B2'),
(1,'B3'),
(3,'B4'),
(3,'B5'),
(5,'B6'),
(5,'B7'),
(5,'B8'),
(5,'B9')

INSERT INTO table2
VALUES (1,'C1'),
(1,'C2'),
(2,'C3'),
(3,'C4'),
(3,'C5'),
(3,'C6'),
(4,'C7'),
(4,'C8'),
(5,'C9')



SELECT * FROM table1
SELECT * FROM table2


--a. Inner join

SELECT *
FROM table1
INNER JOIN table2 ON table1.A = table2.A

--b. Left join
SELECT * 
FROM table1
LEFT JOIN table2 ON table1.A = table2.A

--c. Full Outer joinSELECT * 
FROM table1
Full JOIN table2 ON table1.A = table2.A;

-- d. Right joinSELECT * 
FROM table1
Right JOIN table2 ON table1.A = table2.A;



SELECT *
FROM ownersSELECT * 
FROM pets

SELECT *
FROM owners

SELECT * 
FROM ProceduresDetails

SELECT *
FROM ProceduresHistory