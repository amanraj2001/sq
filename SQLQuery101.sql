use practice

create table employees(
	employee_id int primary key,
	first_name varchar(255),
	last_name varchar(255),
	email varchar(255),
	phone_number char(10),
	hire_date date,
	job_id int,
	salary int,
	commission int,
	manager_id int,
	department_id int,
	foreign key (department_id) references department(department_id) 
	);


	alter table employees 
	add foreign key (job_id) references jobs(job_id)


	insert into employees values(3,'tim','rajput','xyz@gmail.com','987654321','01-01-2020',2,4000,2,1,2)


select * from employees
 
insert into department values(1,301,'php')
insert into department values(2,401,'.net')
insert into department values(3,501,'python')
 
 drop table department
 











