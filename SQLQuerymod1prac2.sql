CREATE TABLE job_history(
	employee_id int primary key identity(1,1),
	st_date date,
	edate date,
	job_id int unique,
	department_id int
	);

insert into job_history values('01-31-2016','05-29-2018',3,201)

select employee_id, st_date,CONVERT(varchar(10),job_history.edate,103) as edate ,job_id,department_id from job_history




drop table job_history