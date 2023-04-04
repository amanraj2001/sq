create database practice2
use practice2
create table abcd(
age int
);
drop table abcd
create table DML(
	id int,
	fname varchar(255),
	lname varchar(255),
	age int
	);

--insert
insert into DML values(1,'aman','rajput',21),(2,'tim','joshua',25)

--select
select * from DML

--update
update DML
set age=20
where id=2

--delete 
delete from DML where id = 1

create table DQL(
	id int identity(1,1),
	fname varchar(255),
	lname varchar(255),
	phonenum decimal(10,0)
	);

	select id,fname,lname,phonenum from DQL
	select 'raj ' + 'tom'

	select fname + ' adding it '+ lname + ' to this ' as newcol from DQL

	select id,phonenum = 2*id,id=2*id
	from DQL


create table product(
	id int,
	prname varchar(255),
	price int,
	pr_id int
	);

	select * from product

	--derived table
	select * from (
	select fname,id from DQl) as derivedtable
	where id = 3


	select * from (
	select fname,prname,price from DQL d inner join product p on d.id = p.pr_id) as Dtable
	
	--common table
	with calculate (number,total)
	as
	(
	select prname, sum(price)
	from product
	group by prname
	)
	select avg(total) as 'total sal'
	from calculate

	--where
	select * from DQL
	where id=1

	select * from product
	where price>1000

	--range operator in where

	select * from product 
	where price between 2000 and 2600

	--in/not
	select * from DQL
	where fname in ('aman','timm')

	--like
	select * from DQL
	where fname like 'a%'
	or  fname like 't%'

	--null

	select * from DQL 
	where id is null

	--orderby
	select  fname from DQL
	order by fname 

	--top
	select top 3 fname from DQL
	order by fname 

	--distinct
	select distinct fname from DQL
	order by fname

	--union
	select fname,lname from DQl 
	where fname like 'a%'
	union
	select fname,lname from DQL
	where fname = 'timm'
	
	--string functions

	-- ASCII
	select ascii('a') as A , ascii('b') as B

	--char
	select char(98)
	select fname + char(97)  + lname from DQl 


	--char index
	select CHARINDEX('a','aman rajput',2)

	--concat
	select concat('rajput',' aman')

	alter table product 
	add dob date
	
	select * from product
	--format
	declare @d date = '05/01/2022'
	select format(@d,'d','en-US')

	--left
	select left('aman rajput',7)

	--len
	select len ('aman')

	--lower to convert to lowercase
	select lower('AMAN RAJPUT')
	select upper(fname) from DQL

	--ltrim
	select ltrim ('  aman rajput')

	--patindex
	select PATINDEX('am%',fname) from DQL

	--replace
	select replace(fname,'joshua','tom') from DQl
	

	--rtrim
	select rtrim('aman   a')

	--soundex
SELECT SOUNDEX ('Smith'), SOUNDEX ('Smythe')

--space
	select 'aman'+space(2)+'rajput' 

	--convertnumber to string
	select str(23131)

	--stuff
	select stuff('aman',2,1,'rajput')

	--substring

	select fname , SUBSTRING(fname,2,4), SUBSTRING(fname,3,2) from DQL

	--translate (is similar to replace but better)
	select TRANSLATE('"aman"','""','(')


	--replicate

	select REPLICATE(fname , 2) as name from DQL

	--reverse

	select reverse(fname) from DQL

	--right (returns characters from right side)

	select right(fname, 2) from DQl

	--Date function
	select * from product
	--date add
	select dateadd(mm,3,dob)  from product
	--datename

	select datename(mm,dob) from product

	--getdate

	select getdate()

	--day

	select day(dob) from product
	select year(dob) from product
	select month(dob) from product

	--mathematical function
	--ceiling	return roundoff of greater number of specified value
	select CEILING(16.05)

	--exp return exponential value
	select exp(12)

	--floor
	select floor(13.05)
	

	--power
	select power(3,4)
	
	--round
	select round(1.0023151,4)

	select HOST_ID() as 'hostid',HOST_NAME() as 'hostname'
	