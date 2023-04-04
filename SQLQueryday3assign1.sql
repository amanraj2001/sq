
use practice3

create table Employee(
	Employee_ID int,
	first_name varchar(255),
	last_name varchar(255),
	salary int,
	joining_date date,
	department varchar(255),
	manager_id int
	);
	select * from Employee
	insert into Employee values(8,'TestName2','Lname%',6000000,'01-feb-2013 12:00:00','Insurance',2)

	update employee
	set manager_id = 3
	where Employee_ID in (5,6)

	alter table employee
	add manager_id int

	alter table employee
	add foreign key (manager_id) references manager(manager_id)

	create table Incentives(
		Employee_ref_id int,
		Incentive_date date,
		Incentive_amount int,
		);

	insert into Incentives values(2,'01-feb-2013',3500)

	select * from Incentives
	update Incentives
	set Incentive_date='01-jan-2013'
	where Incentive_amount in (4500,3500)

	create table manager(
		manager_id int primary key,
		manager_name varchar(255)
	);

select * from manager


--1 diff in dates
select datediff(day,joining_date,Incentive_Date) as diff from Employee
inner join Incentives on Employee_ID = Employee_ref_id

--2 
select first_name,Incentive_amount from employee
inner join Incentives on Employee_ID=Employee_ref_id
where Incentive_amount>3000

--3
select first_name,incentive_amount from employee 
left join Incentives on Employee_ID=Employee_ref_id


--4
--using left join and another table
select first_name,manager_name from Employee e
inner join manager m on m.manager_id=e.manager_id

--using self join for same manager and employee
select e.first_name,m.first_name from employee e
join employee m
on e.Employee_ID=m.manager_id

--5
select first_name,isnull(incentive_amount,0) as incenamount from Employee
left join Incentives on Employee_ID=Employee_ref_id

--6

select department,sum(salary) from Employee
group by department

--7
select department,sum(salary) from Employee
group by department
order by sum(salary) desc

--8
select department, max(salary) from Employee
group by department
order by max(salary) asc

--9 
select department, min(salary) from Employee
group by department
order by min(salary) asc

--10
select department,sum(salary) from Employee
group by department
having sum(salary) >800000
order by sum(salary) desc


