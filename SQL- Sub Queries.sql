/*  

    SQL-SUB QUERIES:--------

A subquery is a SQL query that is embedded within:
SELECT ,INSERT,UPDATE or DELETE statement,
or inside another subquery.


🔹 Why We Use Subqueries:---
1) Filter data based on the result of another query
2) Compare aggregated data
3) Use results dynamically without creating temporary tables
4) Perform operations in different levels of data

*/

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100)
);



CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);



-- Insert data into Customers table
INSERT INTO Customers (customer_id, customer_name, email)
VALUES 
(1, 'Alice Smith', 'alice@example.com'),
(2, 'Bob Johnson', 'bob@example.com'),
(3, 'Charlie Brown', 'charlie@example.com');

-- Insert data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, amount)
VALUES 
(101, 1, '2024-07-15', 250.00),
(102, 1, '2024-08-05', 300.00),
(103, 2, '2024-08-10', 150.00),
(104, 3, '2024-06-25', 100.00);


select * from Customers
select  * from Orders

select * from Customers
where customer_id in ( 
select distinct customer_id from orders where order_date between '1014-08-01' and '2024-08-01'
)

select * from Customers
where customer_id in ( 
select distinct customer_id from orders where order_date not between '1014-08-01' and '2024-08-01'
)

select * from [dbo].[Employees3]

-- fetch the data from wmployees table where salary > average salary 

select * from employees3 where salary >(
select avg(salary) from Employees3
)

select avg(salary) from Employees3