SET IDENTITY_INSERT dbo.Employees3 ON;

INSERT INTO dbo.Employees3 (EmployeeId, FirstName, LastName, Department, Salary, HireDate)
VALUES (7, 'Avinash', 'AM', 'Java Developer', 90000.00, '2025-12-10');

SET IDENTITY_INSERT dbo.Employees3 OFF;
select * from dbo.Employees3

SET IDENTITY_INSERT dbo.Employees3 ON;
INSERT INTO dbo.Employees3 (EmployeeId, FirstName, LastName, Department, Salary, HireDate)
VALUES (8, 'Rama', 'BC', 'Java Developer', 90000.00, '2025-12-10');
SET IDENTITY_INSERT dbo.Employees3 OFF;
select * from dbo.Employees3

SET IDENTITY_INSERT dbo.Employees3 ON;
INSERT INTO dbo.Employees3 (EmployeeId, FirstName, LastName)
Values (9,'Abhi','BC')
SET IDENTITY_INSERT dbo.Employees3 OFF;
select * from dbo.Employees3

SET IDENTITY_INSERT dbo.Employees3 ON;
INSERT INTO dbo.Employees3 (EmployeeId, FirstName, LastName, Department, Salary, HireDate)
Values (10,'Ranga','BM','Analyst', 80000.00, '2025-12-14');
SET IDENTITY_INSERT dbo.Employees3 OFF;
select * from dbo.Employees3


SELECT * FROM DBO.Employees3
select*from INFORMATION_SCHEMA.COLUMNS
where table_name = 'employees3'
order by COLUMN_NAME










