use practice3

select * from employee1

--declare
declare @dept varchar(30)
select @dept=max(salary)
from Employee
print @dept

--IF ELSE STATEMENT

DECLARE @RES INT
SELECT @RES=SALARY FROM Employee
WHERE Employee_ID=5
IF @RES > 5000000
PRINT @RES 
ELSE 
BEGIN 
PRINT 'ENTERED VALUE IS LESS THAN RES'
END

--case

select salary,
(case
	when salary < 7000000 then salary+500
	else salary
	end) as increased_sal
	from Employee

--while
declare @init int
set @init = 0
print @init

declare @res int
set @res = (select count(*) from Employee1)
print @res

--(select ROW_NUMBER() over (order by employee_id) from Employee)

while (@init<=@res)
begin 
	update Employee1
	set salary=salary + @init*1000
 
	where Employee_ID=@init
	set @init= @init +1
	
	end

	select * from Employee1


--JSON
--is json
/*
declare @sample nvarchar(max)
set @sample = '[
		{"stname":"aman","address":"31 st behind sk bungalows","city":"ahmedabad","D.O.B":"01-02-2001","standard":12},
		{"stname":"john","address":"354 st ahead sk bungalows","city":"rajkot","D.O.B":"05-22-2017","standard":5},
		{"stname":"james","address":"53 st beside sk bungalows","city":"ahmedabad","D.O.B":"06-25-2005","standard":9},
		{"stname":"rihan","address":"99 st around sk bungalows","city":"jamnagar","D.O.B":"10-15-2003","standard":11},
		{"stname":"tim","address":"55 st side by side sk bungalows","city":"surat","D.O.B":"11-18-2002","standard":12}
]'
select * from OPENjson(@sample)
WITH(stname VARCHAR(215))
select isjson('stname',value)*/


--json modify
declare @sample nvarchar(max)
declare @t nvarchar(max)
set @sample = '
	{"info": {"address":[{"town":"kolla"},{"town":"paris"},{"town":"otowa"}]}}
'
set @sample = JSON_MODIFY(@sample,'$.info.address[2].town','bangla');

select modifiedjson = @sample

--json value
set @t = JSON_VALUE(@sample,'$.info.address[1].town')
select info = @t
print @t

--json query
declare @js varchar(max)='
[{ "given" : "John",  "surname" : "Smith", "sku" : "20223", "price" :  23.95},
{ "given" : "Alice", "surname" : "Brown", "sku" : "54321", "price" : 199.95}]'
select JSON_QUERY(@js,'$[0]') 

declare @dummy varchar(max)='{"name":"aman","age":20,"job":"devloper"}'
set @dummy= json_modify(@dummy,'$.job','fullstack')
print @dummy


--open json
declare @sample nvarchar(max)
set @sample = '[
		{"stname":"aman","address":"31 st behind sk bungalows","city":"ahmedabad","D.O.B":"01-02-2001","standard":12},
		{"stname":"john","address":"354 st ahead sk bungalows","city":"rajkot","D.O.B":"05-22-2017","standard":5},
		{"stname":"james","address":"53 st beside sk bungalows","city":"ahmedabad","D.O.B":"06-25-2005","standard":9},
		{"stname":"rihan","address":"99 st around sk bungalows","city":"jamnagar","D.O.B":"10-15-2003","standard":11},
		{"stname":"tim","address":"55 st side by side sk bungalows","city":"surat","D.O.B":"11-18-2002","standard":12}
]'
select * from openjson(@sample)
with
(
	studentname varchar(20) '$.stname',address varchar(100),city varchar(20),[D.O.B] date,[standard] int
)


--for json path

create table stu(
	studentname varchar(15),
	address varchar(100),city varchar(20),[D.O.B] date,[standard] int
)
declare @sample nvarchar(max)
set @sample =  '[
		{"stname":"aman","address":"31 st behind sk bungalows","city":"ahmedabad","D.O.B":"01-02-2001","standard":12},
		{"stname":"john","address":"354 st ahead sk bungalows","city":"rajkot","D.O.B":"05-22-2017","standard":5},
		{"stname":"james","address":"53 st beside sk bungalows","city":"ahmedabad","D.O.B":"06-25-2005","standard":9},
		{"stname":"rihan","address":"99 st around sk bungalows","city":"jamnagar","D.O.B":"10-15-2003","standard":11},
		{"stname":"tim","address":"55 st side by side sk bungalows","city":"surat","D.O.B":"11-18-2002","standard":12},
		{"stname":"jack","friend":["raj","rihansh"],"address":"53 st beside sk bungalows","city":"ahmedabad","D.O.B":"06-25-2005"}
]'
 
select stname,address,city,[D.O.B],[standard],student into stu  from openjson(@sample)
with (
	stname nvarchar(max) '$.stname' ,
	address varchar(100),
	city varchar(20),
	[D.O.B] date,
	[standard] int,
	friend nvarchar(max) '$.friend' as json
)
OUTER APPLY OPENJSON(friend) WITH (student NVARCHAR(8) '$')
for json path,include_null_values



select * from stu 
for json path, root('stud')

--json auto
select * from stu for json auto, root('student')

--array wrapper
select * from stu 
without_array_wrapper
for json path, root('stud'),
include_null_values







