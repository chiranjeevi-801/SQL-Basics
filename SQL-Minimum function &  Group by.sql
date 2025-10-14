-- MINIMUM FUNCTION AND GROUOP BY :--

select * from dbo.Sales

select min(Quantity) from dbo.Sales
select min(Quantity) [Minimum Quantity] from dbo.Sales -- adding column name to table


select min(saledate) from dbo.sales
select min(saledate) [minimum Sales Date] from dbo.sales  -- adding column name to table


select min(PaymentMethod) from dbo.sales
select min(PaymentMethod) [ Minimum Pay Method] from dbo.sales

--Show minimum totalamount for each storeid 

select storeid,min(totalamount) from dbo.sales
group by storeid 

select storeid,min(totalamount) [ Minmum total amount]from dbo.sales
group by storeid 

select * from dbo.Sales 