create table new(
	dt date
	);

insert into new values('05-05-2016')

select * from new

select CONVERT (varchar(10), new.dt, 103) FROM new