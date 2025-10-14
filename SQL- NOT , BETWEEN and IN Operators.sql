
-- NOT ,BETWEEN  and IN  Operators 

select * from [dbo].[EmployeesRecords]


select * from [dbo].[EmployeesRecords]
where not FirstName='Chiru' and not Salary=10000.00

select * from [dbo].[EmployeesRecords]
where not LastName='Acharya' or not Department='Analyst'



select * from  [dbo].[EmployeesRecords]
where Salary between 50000 and 600000
            -- OR 
select * from [dbo].[EmployeesRecords]
where Salary>=50000 and Salary <=60000



select * from  [dbo].[EmployeesRecords]
where Salary not between 50000 and 60000
                --OR 
select * from  [dbo].[EmployeesRecords]
where  not Salary between 50000 and 60000



select * from [dbo].[EmployeesRecords]
where Department='Analyst' or Department='HR'
                --OR 
select * from [dbo].[EmployeesRecords]
where Department in('HR','Analyst')


SELECT * FROM DBO.EMPLOYEESRECORDS
WHERE DEPARTMENT NOT IN ('HR','ANALYST')
                -- OR  
SELECT * FROM DBO.EMPLOYEESRECORDS
WHERE NOT DEPARTMENT  IN ('HR','ANALYST')
               -- OR 
select * from [dbo].[EmployeesRecords]
where Department not in('HR','Analyst')


