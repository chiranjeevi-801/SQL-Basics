
/* HAVING and WHERE difference :---- */


-- WHERE ? filters rows (before aggregation)
-- HAVING ? filters groups (after aggregation)



select * from dbo.Sales
where TotalAmount>=161

select productId,sum(totalamount) [Sum of sales] from dbo.Sales
group by productID
having sum(totalamount)<700

select productID,sum(totalamount)[Sum of Sales] from dbo.Sales
where TotalAmount>=161
group by productID
having sum(TotalAmount)>=250
order by ProductID desc

select productID,sum(totalamount)[Sum of Sales] from dbo.Sales
where TotalAmount>=161
group by productID
having sum(TotalAmount)>=250
order by sum(totalamount) asc