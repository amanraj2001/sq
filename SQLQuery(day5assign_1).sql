use practice3

create procedure prc1
as
select department ,
(case 
	when department= 'Banking' then 'Bank Dept'
	when department = 'Insurance' then 'Insurance Dept'
	when department = 'Services' then 'Services Dept'
	else department
	end) as Dept
	from Employee

	exec [prc1]

select * from Employee 
select * from Incentives
--2
select * from Employee inner join Incentives
on Employee_ID=Employee_ref_id

--3
create procedure roysal
as
select first_name,salary from Employee where first_name='Roy'

exec roysal






	