use AdventureWorks2019
--view

select * from HumanResources.Employee

select * from HumanResources.JobCandidate

create view emp
as 
select he.JobTitle,he.LoginID,hd.[Name] from HumanResources.Employee he inner join HumanResources.Department hd
on he.BusinessEntityID=hd.DepartmentID

select * from emp

alter view emp as
select he.JobTitle,he.LoginID,hd.[Name],hd.ModifiedDate,he.HireDate from HumanResources.Employee he inner join HumanResources.Department hd
on he.BusinessEntityID=hd.DepartmentID 


--index

create index indx
on [HumanResources].[Employee]([NationalIDNumber],[LoginID])

--stored procedure

create procedure prc
as
select h.BirthDate,h.JobTitle,h.CurrentFlag,h.ModifiedDate from HumanResources.Employee h

exec prc

create procedure find @gender varchar(20)
as
select * from HumanResources.Employee
where HumanResources.Employee.Gender like @gender

exec find @gender='m'


