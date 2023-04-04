use [AdventureWorksLT2019]

--handson mod3

--aggregate function 

--sum

select * from SalesLT.Product


select sum(StandardCost) as stdcost,ProductCategoryID from SalesLT.Product
group by ProductCategoryID
--count
select count(name) as 'Product of same color',color from SalesLT.Product
group by Color
--max
select max(StandardCost) from SalesLT.Product

select max(StandardCost) as maximum,color from SalesLT.Product
group by Color
order by maximum desc

--min
select min(StandardCost) as minimum,color from SalesLT.Product
group by Color
order by minimum desc

--avg
select avg(StandardCost) as avg, Color from SalesLT.Product
group by Color

--having clause

select avg(StandardCost) as avg, color from SalesLT.Product
group by color
having color='blue'

select avg(StandardCost) as average, color from SalesLT.Product
group by color
having avg(StandardCost) >500




--join

select * from SalesLT.Product
select * from SalesLT.ProductCategory

--inner join

select distinct p.ProductNumber,p.Name,p.Color,p.ProductID,pc.Name,pc.ParentProductCategoryID,pc.ProductCategoryID,p.ProductCategoryID from SalesLT.Product p
inner join SalesLT.ProductCategory pc on p.ProductCategoryID=pc.ProductCategoryID


use [AdventureWorks2019]
--inner join

select * from [HumanResources].[EmployeePayHistory]
select * from [HumanResources].[Employee]

select e.BusinessEntityID,e.JobTitle,ep.Rate,ep.PayFrequency from [HumanResources].[Employee]  e
inner join [HumanResources].[EmployeePayHistory] ep on e.BusinessEntityID=ep.BusinessEntityID


--left join
select * from Sales.SpecialOfferProduct
select * from Sales.SalesOrderDetail

select p.ProductID,s.SalesOrderID,s.UnitPrice from sales.SpecialOfferProduct p left join Sales.SalesOrderDetail s
on p.ProductID=s.ProductID


--right join
select e.JobTitle,J.JobCandidateID from HumanResources.Employee e right join HumanResources.JobCandidate J
on e.BusinessEntityID=J.BusinessEntityID



--subqueries
select * from Sales.SalesOrderDetail
where OrderQty IN (select SpecialOfferID from Sales.SpecialOfferProduct where ProductID>800)



