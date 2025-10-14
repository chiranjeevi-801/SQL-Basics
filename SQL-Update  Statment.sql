
-- UPDATE Statment :- 
--The UPDATE statement is used to modify the existing records in a table.


--UPDATE Multiple Records
--It is the WHERE clause that determines how many records will be updated.

--In SQL Server, the # symbol means the table is a temporary table.

select * from dbo.Employees3

select * into #1 from dbo.Employees3

select * from #1

update #1
set Department ='HR'
where Department is null


update #1
set Salary = 80000,HireDate='2020-03-03'
where EmployeeID = 9

select * from #1 where EmployeeID=9



update #1
set LastName='MS'
where EmployeeID =11

select * from #1




select * into #Temp2 from dbo.Employees3;
select * from #Temp2;
update #Temp2
set Department = 'Finance';
