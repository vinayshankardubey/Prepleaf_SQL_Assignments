
use prepleadAssignments

-- Datasets Uploaded



-- Q1. You are given four datasets pets.csv, owners.csv, proceduredetails.csv, 
-- proedurehistory.csv. Upload all of them in your SQL server. Find the primary key 
-- in each of the tables and write a query to: (Hint: Use joins)
-- same table.
-- Rapids� or �Southfield�.
-- performed on them 


	FROM ProceduresHistory as ph
	FROM ProceduresHistory as ph
-- �T�
	FROM ProceduresHistory as ph

SELECT * FROM Owners
	FROM pets as p

	FROM ProceduresHistory
SELECT p.OwnerID,p.Name ,l.pId as petOwns
	FROM ProceduresHistory







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

--c. Full Outer join
FROM table1
Full JOIN table2 ON table1.A = table2.A;

-- d. Right join
FROM table1
Right JOIN table2 ON table1.A = table2.A;



SELECT *
FROM owners
FROM pets

SELECT *
FROM owners

SELECT * 
FROM ProceduresDetails

SELECT *
FROM ProceduresHistory