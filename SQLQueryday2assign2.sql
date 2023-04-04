USE practice2

select * from employee

--1
select employee_id as ID,first_name as Fname,last_name as Lname,salary as Sal,
joining_date as date,department as Dep ,LEN(FIRST_NAME) as 'Firstname Length'
from employee
where FIRST_NAME like 'J%' or FIRST_NAME like 'A%' or FIRST_NAME like 'M%'
order by FIRST_NAME 


--2
select first_name , format(salary,'$########') as 'Salary' from Employee

--3

--first add hire date
alter table employee
add hire_date date

insert into Employee (hire_date) values('01-12-2020')

update Employee
set hire_date = '06-25-1987'
where employee_id in ('5','8')

select * from Employee

select Employee_id, first_name,last_name,hire_date from Employee
where day(hire_date)=7 or month(hire_date)=7

--4

select len(first_name) as length , last_name from Employee
where LAST_NAME like '%c%'

select CHARINDEX('c',LAST_NAME,1) from Employee


--5
alter table Employee
add phnum decimal(10,0)

update Employee
set phnum=123456789
where EMPLOYEE_ID in ('1','8')
update Employee
set phnum=9871247321
where EMPLOYEE_ID in ('2','7')
update Employee
set phnum=654321789
where EMPLOYEE_ID in ('3','6')
update Employee
set phnum=963258741
where EMPLOYEE_ID in ('4','5')

select right(phnum,4) from Employee

--6
select REPLACE(phnum,124,999) from Employee

--7

select * from Employee

select year(GETDATE()) - YEAR(joining_date) as 'AGE IN COMPANY' from Employee

--8
SELECT distinct datename(weekday,hire_date) as days from Employee
where datename(weekday,hire_date)='monday'

--9
select first_name, hire_date from Employee
where hire_date between '06-01-1987' and '07-30-1987'

--10
select convert(varchar,GETDATE(),109) 

--12
update Employee
set JOINING_DATE='06-01-2013'
where EMPLOYEE_ID=6

select first_name,last_name from Employee
where DATENAME(mm,JOINING_DATE)='june'

--13
select Employee_id,last_name, dateadd(mm,1,joining_date) from Employee

--14
select first_name,hire_date, DATEDIFF(year,hire_date,GETDATE()) as experience from Employee

--15
	select * from Employee
select first_name from employee
where datename(year,hire_date)='1987'

--16

select rank() over (order by (salary/12) desc) as d, * from Employee
--17

SELECT * FROM (
	SELECT FIRST_NAME, LAST_NAME,SALARY,  row_number()OVER( ORDER BY SALARY DESC) AS SAL
	FROM Employee) as emp
	WHERE emp.SAL = 4;

