<<<<<<< HEAD
Create database employee_details

use employee_details
CREATE TABLE Employees4 (
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10,2),
    HireDate DATE
);

INSERT INTO Employees4 (FirstName, LastName, Department, Salary, HireDate)
VALUES
('Monoj','Bro','HR',50000.00,'2020-10-15'),
('suhas','Sharma','Finance',60000.00,'2019-03-23'),
('Chiru','Acharya','Analyst',10000.00,'2021-07-10'),
('Prasanna','Acharya','Marketing',55000.00,'2018-09-10'),
('Kiran Kumar','S','AI & ML',55000.00,'2018-09-10'),
('Abhilash','CM','Analyst',10000.00,'2021-07-10');

select*from Employees4
=======

>>>>>>> e0b8599 ( SQL Temporary Tables and SQL Where Clause)
