use practice3


declare @dec nvarchar(max)
set @dec = '[
	{"stname":"aman","address":"31 st behind sk bungalows","city":"ahmedabad","D.O.B":"01-02-2001","standard":12},
	{"stname":"john","address":"354 st ahead sk bungalows","city":"rajkot","D.O.B":"05-22-2017","standard":5},
	{"stname":"james","address":"53 st beside sk bungalows","city":"ahmedabad","D.O.B":"06-25-2005","standard":9},
	{"stname":"rihan","address":"99 st around sk bungalows","city":"jamnagar","D.O.B":"10-15-2003","standard":11},
	{"stname":"tim","address":"55 st side by side sk bungalows","city":"surat","D.O.B":"11-18-2002","standard":12}

]'

select * into students_table from openjson(@dec)
with(
	stname varchar(20),city varchar(23),[add] Nvarchar(255) '$.address',[D.O.B] date,standard int
)

 


select * from students_table

select * from students_table
for json path, root('ord')

--2

create table std
(
	stname varchar(30),
	city varchar(255),
	address varchar(255),
	[D.O.B] date,
	standard int
)
select * from std



declare @dec nvarchar(max)
set @dec = '[
	{"stname":"aman","address":"31 st behind sk bungalows","city":"ahmedabad","D.O.B":"01-02-2001","standard":12},
	{"stname":"john","address":"354 st ahead sk bungalows","city":"rajkot","D.O.B":"05-22-2017","standard":5},
	{"stname":"james","address":"53 st beside sk bungalows","city":"ahmedabad","D.O.B":"06-25-2005","standard":9},
	{"stname":"rihan","address":"99 st around sk bungalows","city":"jamnagar","D.O.B":"10-15-2003","standard":11},
	{"stname":"tim","address":"55 st side by side sk bungalows","city":"surat","D.O.B":"11-18-2002","standard":12}

]'

exec n_proc @xyz = @dec

create procedure n_proc  
@xyz nvarchar(max) as
insert into std 
select * from openjson(@xyz)
with(
	stname varchar(30),
	city varchar(255),
	address varchar(255),
	[D.O.B] date,
	standard int
)

select * from std

drop table std





create table course(
	courseid int,
	coursename varchar(255)
);
create table stud(
	studentid int,
	studentname varchar(255)
);


CREATE PROCEDURE new_proc
	@abc nvarchar(max)
AS 
	insert into course
		select * from 
		openjson(@abc)
			with(
				courseid int '$.Courseid',
		coursename varchar(255) '$.Coursename'
		)

	insert into stud
		select * from 
		openjson(@abc)
			with(
				studentid int '$.Studentid',
		studentname varchar(255) '$.Studentname'
		)
go

declare @student nvarchar(max)
set @student ='[
	{"Studentid":1,"Studentname":"aman","Courseid":1,"Coursename":".net professionals"},
	{"Studentid":2,"Studentname":"John","Courseid":2,"Coursename":"php professionals"},
	{"Studentid":3,"Studentname":"james","Courseid":3,"Coursename":"django professionals"},
	{"Studentid":4,"Studentname":"tim","Courseid":4,"Coursename":"react professionals"},
	{"Studentid":5,"Studentname":"rihan","Courseid":5,"Coursename":"nodejs professionals"}
	
]'
exec dbo.new_proc @abc = @student

select * from stud
select * from course