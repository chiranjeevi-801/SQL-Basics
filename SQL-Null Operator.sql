SET IDENTITY_INSERT dbo.Employees3 ON;

INSERT INTO dbo.Employees3 (EmployeeId, FirstName, LastName, Department, Salary, HireDate)
VALUES (11, 'Ashreen', '', 'IT', 73000.00, '2020-04-04');

SET IDENTITY_INSERT dbo.Employees3 OFF;

SELECT * FROM dbo.Employees3;


SET IDENTITY_INSERT dbo.Employees3 ON;
INSERT INTO dbo.Employees3 (EmployeeId, FirstName, LastName, Department, Salary, HireDate)
VALUES (11, 'karthi', 'KM', '0', 78000.00, '2020-04-05');
SET IDENTITY_INSERT dbo.Employees3 OFF;
SELECT * FROM dbo.Employees3;


INSERT INTO dbo.Employees3 (FirstName, LastName, Department, Salary, HireDate)
VALUES ('Karthi', 'KM', 'IT', 78000.00, '2020-04-05');

SELECT * FROM dbo.Employees3;


INSERT INTO dbo.Employees3 (FirstName, LastName, Department, Salary, HireDate)
VALUES ('Karthi', 'KM', '0', 78000.00, '2020-04-05');

SELECT * FROM dbo.Employees3;

select * from dbo.Employees3 where Department=null -- it is not not  showing any values so you use 'is' in place of '='

select * from dbo.Employees3 where Department is null -- It will show null ID 

select * from dbo.Employees3 where Department is not null 