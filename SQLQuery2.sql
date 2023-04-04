create table countries(
	country_id int primary key identity(1,1),
	country_name varchar(255),
	region_id int unique,
	check (country_name in ('India','Italy','China'))

	);

insert into countries values('pakistan',4)


select * from countries

