use practice2
create table Employee(
	EMPLOYEE_ID int,
	FIRST_NAME VARCHAR(255),
	LAST_NAME VARCHAR(255),
	SALARY INT,
	JOINING_DATE DATETIME,
	DEPARTMENT VARCHAR(255)
	);

	INSERT INTO Employee VALUES(1,'John','Abraham',1000000, '01-JAN-2013 12:00:00 ','BANKING')

	SELECT * FROM Employee
	
	select JOINING_DATE FROM Employee


--2
select * from Employee

--3
select FIRST_NAME,LAST_NAME FROM Employee

--4
select FIRST_NAME AS 'Employee name' from Employee

--5
select * from Employee
where FIRST_NAME = 'John'

--6
select * from Employee
where FIRST_NAME in ('John','Roy')

--7
select * from Employee
where FIRST_NAME NOT IN ('John','Roy')

--8
select * from Employee
where FIRST_NAME like 'J%'

--9
select * from Employee
where FIRST_NAME like '%o%'

--10
select * from Employee
where SALARY between 500000 AND 800000

--11
SELECT DISTINCT DEPARTMENT FROM Employee

--12
SELECT TOP 2 SALARY FROM Employee

--13
WITH calculate(id,FNAME,LNAME,SAL,JOINDATE,DEP)
AS 
(
SELECT EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SUM(SALARY),JOINING_DATE,DEPARTMENT
FROM Employee
GROUP BY FIRST_NAME,EMPLOYEE_ID,LAST_NAME,JOINING_DATE,DEPARTMENT
)
SELECT AVG(SAL) as 'average salary'
FROM calculate


--14
select * from Employee
where salary between 500000 and 800000

--15
select * from Employee
where LAST_NAME like '%[%]' 

--16
select * from Employee

select  * from (
select EMPLOYEE_ID, FIRST_NAME,LAST_NAME,(SALARY + (SALARY *10)/100) AS INCENTIVESALARY , JOINING_DATE, DEPARTMENT 
FROM Employee ) AS DERIVEDEMPLOYEE



