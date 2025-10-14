


select * from dbo.sales

select max(TotalAmount) from dbo.sales

select min(TotalAmount) from dbo.sales

select max(TotalAmount)[Maximum Amount] from dbo.sales --give the column name (Maximum Amount)



select max(SaleDate)[Max SaleDate] from dbo.Sales

select min(SaleDate)[Max SaleDate] from dbo.Sales

select max(paymentmethod) [Max Pay method] from dbo.Sales

--Maximum Quntity sold for each productID  

select productID,MAX(Quantity)[Maximum Quantity] from dbo.Sales
group by productid

select* from dbo.Sales 





-- Maximum Total Amount for all distinct dates in saledate column 

select saledate,max(totalamount)[Maximum Total Amount] from dbo.sales
group by saledate


