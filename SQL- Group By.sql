 
 /* SQL GROUP BY Statement */

/* 1. The GROUP BY statement groups rows that have the same values into summary rows, like "find the number of customers in each country".

   2. The GROUP BY statement is often used with aggregate functions (COUNT(), MAX(), MIN(), SUM(), AVG()) to group the result-set by one or more columns. */



 select * from dbo.Sales
 select paymentmethod,sum(totalamount) as [sum of Sales] from dbo.Sales
 group by Paymentmethod

 select ProductID,PaymentMethod,sum(TotalAmount)[Sum of Sales] from dbo.Sales
 group by productID,PaymentMethod
 order by ProductID