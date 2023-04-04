use practice3

select * from Employee
select FORMAT(joining_date,'hh:mm tt')+ space(1)+ DATENAME(mm,joining_date)  from Employee
select CONVERT(varshar,joining_date,131) from Employee