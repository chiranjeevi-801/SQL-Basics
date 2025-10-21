/*

The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.

*] The percent sign (%) represents zero, one, or multiple characters
*] The underscore sign (_) represents one, single character
*] You usually use it inside a WHERE clause.
*/

-- Create Employees_US table
CREATE TABLE Employees_US (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50)
);

-- Insert sample data into Employees_US table
INSERT INTO Employees_US (EmployeeID, FirstName, LastName, Department) VALUES
(1, 'Alice', 'Smith', 'Finance'),
(2, 'Bob', 'Johnson', 'Engineering'),
(3, 'Charlie', 'Williams', 'Marketing'),
(4, 'Diana', 'Brown', 'Finance'),
(5, 'Edward', 'Jones', 'Engineering'),
(6, 'Fiona', 'Garcia', 'Marketing'),
(7, 'George', 'Miller', 'Finance'),
(8, 'Hannah', 'Wilson', 'Engineering');


select * from Employees_US

-- wildcards

--1].% - it may represent 0,1 or multiple characters
--2] _ - it exactly represent only 1 character

--EXAMPLES :---

--1). Find Employees whose Last Name starts with 'S'
select * from Employees_US where lastname like 's%'


--2). Find employees whose name is ends with 'a'
select * from Employees_US where firstname like '%a'


--3)find Employees whose Department contains 'Eng'
select * from Employees_US where Department like '%Eng%'

--4).find employess whose Last name is Exactly 5 character long
select * from employees_us where lastname like '_____'

--5). FInd Employess whose first name with 'c' or 'D'
select * from employees_us where firstname like '[CD]%'

--6). find employees whose Lastname contains 'son'
select * from employees_us where lastname like '%son%'

--7). Find Employees whose First name contains the letter 'i' as the second character.
select * from employees_us where firstname like'_i%'

--8). Find employees whose last name starts with any leter between 'A' and 'L'
select * from  employees_us where lastname like '[A-L]%'

--9) find employees firstname does not contain '0'
select * from Employees_US where firstname not like '%o%'

--10) Find Employees whose lastname ends with 'a' and is exactly 5 character long 
select * from Employees_us where lastname like '______a'

--11) Find Employees whose Department start with 'Mar' and ends with 'ing'
select * from Employees_us where  Department like 'mar%ing'

--12) Find employees whose First name has an 'a' in the thrid position 
select * from Employees_us where firstname like '__a%'

--13) Find employess whose last name starts with 'Br' or 'Bl'
select * from employees_us where lastname like'br%' or lastname like 'bl%'

--14) Find Employees whose First name  Start with a vowel
select * from employees_us where firstname like'[aeiou]%'
                     --OR -- 
select * from employees_us where firstname  not like'[^aeiou]%'

--15) find employess whoes first name does not starts with a consonant
select * from employees_us where firstname  not like'[^aeiou]%'

--16) find employess whoes first name does starts with a consonant
select * from employees_us where firstname   like'[^aeiou]%'

/*

LIKE Operator                 -	Description
WHERE CustomerName LIKE 'a%' 	Finds any values that start with "a"
WHERE CustomerName LIKE '%a'	Finds any values that end with "a"
WHERE CustomerName LIKE '%or%'	Finds any values that have "or" in any position
WHERE CustomerName LIKE '_r%'	Finds any values that have "r" in the second position
WHERE CustomerName LIKE 'a_%'	Finds any values that start with "a" and are at least 2 characters in length
WHERE CustomerName LIKE 'a__%'	Finds any values that start with "a" and are at least 3 characters in length
WHERE ContactName LIKE 'a%o'	Finds any values that start with "a" and ends with "o"

*/