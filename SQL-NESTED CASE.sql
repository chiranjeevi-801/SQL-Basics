
-- What is a Nested CASE?
-- A nested CASE means you put one CASE statement inside another.


-- Create the Products table
CREATE TABLE Products1 (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(20),
    Price DECIMAL(10, 2),
    StockQuantity INT,
    Supplier VARCHAR(50),
    Rating DECIMAL(3, 1)
);

-- Insert data into the Products1 table
INSERT INTO Products1 (ProductID, ProductName, Category, Price, StockQuantity, Supplier, Rating) VALUES
(1, 'Wireless Mouse', 'Electronics', 25.99, 150, 'Tech Supplies', 4.5),
(2, 'Office Chair', 'Furniture', 120.00, 85, 'Comfort Co', 4.7),
(3, 'Water Bottle', 'Accessories', 15.00, 250, 'AquaGear', 4.3),
(4, 'Laptop Backpack', 'Accessories', 45.99, 200, 'GearUp', 4.6),
(5, 'Gaming Laptop', 'Electronics', 999.99, 45, 'Tech Supplies', 4.8),
(6, 'Desk Lamp', 'Furniture', 35.00, 120, 'LightHouse', 4.2),
(7, 'Bluetooth Speaker', 'Electronics', 59.99, 95, 'SoundWave', 4.4),
(8, 'Standing Desk', 'Furniture', 250.00, 50, 'Comfort Co', 4.9),
(9, 'Fitness Tracker', 'Electronics', 129.99, 180, 'FitTech', 4.7),
(10, 'Coffee Mug', 'Accessories', 9.99, 300, 'MugMasters', 4.1);


select * from Products1

--We need to group the data based on columns category & price into different into categories i.e affordable & premium

select *,
case
    when Category = 'Electronics' then 
        case when Price>=300 then 'Premium Electronics'
        else 'Affrodable Electronics'
        end
    when Category ='Furniture' then 
        case when Price>=250 then 'Premium Furniture'
        else 'Affordable Furniture'
        end
else
       case when Price>=25 then 'Premium Accessories'
       else 'Affrodable Accessories'
       end
end as [Groups]
from Products1


-----------------------------OR-------------------------------------------------------

----------------------Test(without else)----------------------------------------------

select *,
case
    when Category = 'Electronics' then 
        case when Price>=300 then 'Premium Electronics'
        else 'Affrodable Electronics'
        end
    when Category ='Furniture' then 
        case when Price>=250 then 'Premium Furniture'
        else 'Affordable Furniture'
        end
    when Category in ('Accessories') then 
       case when Price>=25 then 'Premium Accessories'
       else 'Affrodable Accessories'
       end
end as [Groups]
from Products1