create table emp(
	id int primary key,
	fname varchar(255),

	);

	create table man(
	id int primary key identity(1,1),
	lname varchar(255),
	dept varchar(255)
	);

	 alter table man add mid int

	select * from emp e 
	left join man m on e.num=m.mid
	where m.id is null

	select fname,count(fname) from emp e group by fname
	having count(fname)=1
	order by count(fname) desc

	select * from emp


	select * from emp join man
	on emp.num=man.mid


	
