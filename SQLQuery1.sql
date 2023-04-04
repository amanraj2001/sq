CREATE DATABASE practice

USE practice

CREATE TABLE Person(
	personID int,
	LName varchar(255),
	FName varchar(255),
	PRIMARY KEY(personID)
	);

	ALTER TABLE Person
ADD num int;

INSERT INTO Person(personID,LName,FName) VALUES(1,'AMAN','RAJESH')
INSERT INTO Person(personID,LName,FName) VALUES(3,'raj','rajU')



ALTER TABLE Person
ADD price int;
INSERT INTO Person(personID,LName,FName,num,price) VALUES(2,'wye','cook',10,180)


SELECT MIN(price) FROM Person 
where personID=2

SELECT * FROM Person

WHERE LName='AMAN' OR FName='RAJESH'

UPDATE Person
SET LName = 'tim'
WHERE personID=2

DROP TABLE Person



CREATE TABLE TAB1(
	tabID int,
	tabname varchar(255),
	tabclass varchar(255),
	PRIMARY KEY(tabID)
	);


INSERT INTO TAB1(tabID,tabname,tabclass) VALUES(5,'raj','class5')

SELECT * FROM TAB1

SELECT * FROM Person
LEFT JOIN TAB1 ON tabname = FName
