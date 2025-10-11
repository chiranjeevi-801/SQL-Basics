
select *from [dbo].[EmployeesRecords]
where EmployeeID=3



select EmployeeID,firstName,Salary from [dbo].[EmployeesRecords]
where EmployeeID=3

select *from dbo.EmployeesRecords


select *from dbo.EmployeesRecords where Salary>55000.00

select *from dbo.EmployeesRecords where Salary<55000.00

select *from dbo.EmployeesRecords where Salary=10000.00

select FirstName,LastName,Department,Salary
from dbo.EmployeesRecords where Salary=10000.00

select distinct FirstName,LastName,Department,Salary
from dbo.EmployeesRecords where Salary=10000.00


-- Both rows are different — because the FirstName and LastName values are not the same.

-- So DISTINCT keeps both rows, since there are no duplicates across all selected columns (FirstName, LastName, Department, Salary).

-- DISTINCT removes duplicate rows (rows that are completely identical across all selected columns).
