
select * from [dbo].[EmployeesRecords]

select * from EmployeesRecords
where LastName ='Acharya'

-- AND Operetor :---

select * from EmployeesRecords
where LastName ='Acharya' and  EmployeeID=3

select * from EmployeesRecords
where LastName ='Acharya' and  EmployeeID='3'

-- OR Operetor :---

select *from EmployeesRecords 
where Department='HR' or Department='Finance'

select * from dbo.employeesRecords 
where (Department='HR' or Department='Finance') and Salary=50000.00