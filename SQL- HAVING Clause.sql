/* The MySQL HAVING Clause:-- */

-- The HAVING clause was added to SQL because the WHERE keyword cannot be used with aggregate functions.




select * from dbo.Sales 

--Total Sales,Avg Sales,Total Quantity,Avg Quantity  for each distinct product 

select 
ProductId,
sum(TotalAmount) [Sum of Sales],
sum(Quantity) [Total Quantity],
avg(TotalAmount) [Avg Quantity],
avg(Quantity) [Avg Quantity]
from dbo.Sales 
group by 
productId
having sum(TotalAmount)<700 and sum (Quantity)=21