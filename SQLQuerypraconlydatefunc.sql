select day(DATEADD(mm,-3,GETDATE()))

use practice2
select datename(weekday,hire_date),hire_date from Employee
where datename(weekday,hire_date)= 'monday'

select datename(weekday,datename(year,getdate())-1)


select datename(year,getdate())-1


select datediff(year,'2001-09-10',GETDATE())      

select FORMAT(GETDATE(), 'hh:mm tt')+ space(1)+ datename(MONTH,GETDATE())+space(1)+FORMAT(GETDATE(),'dd,yyyy')

select FORMAT(GETDATE(), 'hh:mm tt')+ space(1)+ datename(MONTH,GETDATE())+space(1)+FORMAT(GETDATE(),'dd,yyyy') + space(1)+datename(WEEKDAY,GETDATE())


SELECT CAST('12454' AS date);


Select DateAdd(DAY,96,DateFromParts(Year(GetDate())-1,12,31))



select CONVERT(datetime, '12022012')
SELECT DATEPART(DAYOFYEAR, GETDATE())


use practice3

select * from Employee

create procedure ne_pr @abc varchar(244)
as
select * from Employee
where first_name != @abc

exec ne_pr @abc='John'

