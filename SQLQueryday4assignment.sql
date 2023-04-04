use practice3

--1
create view [Bank Dept] as
select department from Employee
where department ='Banking'

create view [Insurance Dept] as 
select department from Employee
where department = 'Insurance'

create view [Service Dept] as 
select department from Employee
where department='Services'

select * from [Bank Dept] 
select * from [Service Dept]
select * from [Insurance Dept]


select * from Employee
select * from Incentives



--3
create view [roy_sal]
as
select * from Employee
where first_name='roy'

select * from roy_sal

select * from Employee
where salary>(select salary from roy_sal)

--4
create view sel1 as
select e.first_name,e.last_name,e.salary,e.joining_date,
i.Incentive_date,i.Incentive_amount 
from employee e
full join Incentives i 
on e.Employee_ID=i.Employee_ref_id

select * from sel1

--5
create view sel2 as
select e.first_name,i.incentive_amount from Employee e 
left join Incentives i
on e.Employee_ID=i.Employee_ref_id
where Incentive_amount>3000

select * from sel2

