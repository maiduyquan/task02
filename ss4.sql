--1
use AdventureWorks2019
select LoginID from HumanResources.Employee
where JobTitle='design Engineer'
--2
create type usertype from varchar(20) NOT NULL
--3
declare @Number int;
set @Number=2+2*(4+(5-3))
select @Number
--4
use AdventureWorks2019
Select SalesOrderID,CustomerID,SalesPersonID,TerritoryID,YEAR(OrderDate) AS CurrentYear,Year(OrderDate)+1 AS NextYear
From Sales.SalesOrderHeader
--5
if DATENAME(weekday, GETDATE()) IN (N'Saturday',N'Sunday')
 Select 'it is a Weekend';
ELSE
 Select 'it is a Weekday';
 --6
 use AdventureWorks2019
 -- HumanResources.Employee table contains the details of an employee.
 -- this statement retrieves all the rows of the table
 -- HumanResources.Employee.
 select*from HumanResources.Employee
 --7
 use AdventureWorks2019
 /* HumanResources....*/
 select*from HumanResources.Employee
 --8
 use AdventureWorks2019
 select*from HumanResources.Employee
 go
 --9
 use AdventureWorks2019
 go
 select ProductID from Production.Product
 INTERSECT
 select ProductID from Production.WorkOrder;
 --10
 use AdventureWorks2019
 select SalesPersonID,YEAR(OrderDate) as OrderYear from Sales.SalesOrderHeader
 where CustomerID=30084
 GROUP BY SalesPersonID,YEAR(OrderDate)
 Having Count(*)>1
 Order BY SalesPersonID,OrderYear;