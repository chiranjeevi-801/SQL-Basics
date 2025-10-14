
/* SUM , AVG , COUNT , & GROPU BY */


-- SUM :--

select * from dbo.Sales
select sum(quantity)[Total Quantity] from dbo.sales
select sum(quantity)[Total Quantity],sum(Totalamount)[sum of Amount] from dbo.sales



-- AVG :--

select avg(quantity)[Average Quantity] from dbo.sales
select avg(quantity)[Average Quantity],avg(totalamount)[Avg Amount] from dbo.sales
select * from dbo.Sales

-- Sum of Quantity sum of totalamount,avg of quantity,avg of total amount for each distinct product

select 
ProductID,
sum(Quantity) as [Total Quantity],
sum(TotalAmount) as [Sum of Amount],
avg(Quantity) [Average Quantity Sold],
avg(TotalAmount)[Average Amount]
from dbo.Sales
group by productID

select * from dbo.sales

-- Sum of Quantity, sum of amount,avg of quantity & quantity avg of distinct combination of ProductID & StoreID

select
productid,
storeid,
sum(Quantity) [Total Quantity],
sum(totalamount) [Sum of Amount],
avg(quantity) [Avg of Quantity],
avg(totalamount) [Avg of Amount]
from dbo.sales
group by productID,StoreID


--COUNT :--

select * from dbo.Sales

select count(*)[Number of Rows] from dbo.Sales

select count(paymentmethod)[No of Recordes] from dbo.Sales

select count(distinct productID) [Distinct Product] from dbo.Sales -- "Distinct" it finds unique data/values/recordes


select PaymentMethod,count(distinct PaymentMethod) [Distinct Pay mode] from dbo.Sales
group by PaymentMethod

select PaymentMethod,count( PaymentMethod) [Pay mode] from dbo.Sales
group by PaymentMethod

select PaymentMethod,count(*) [Pay mode] from dbo.Sales
group by PaymentMethod





