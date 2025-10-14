--  DELETE , DROP  and TRUNCATE :---

select * from dbo.Employees3


select * into #3 from dbo.Employees3
select * from #3
delete from #3
where LastName ='' or Department='0'



--deleteing full data from the table 

select * into #4 from dbo.Employees3 

select * from #4

delete from #4 

     --OR 

select * from #3
truncate table #3 --TRUNCATE TABLE is a fast way to delete all the rows from a table 

drop table #3


--Delete - delete certain records from the table 

--If we use delete without where condition,all records from the table will be delete,but the
--table structure remains intact

--truncate - delete all the records from the table but the structure of the table remains intact

--Drop - all the records will be daleted plus table structure will also removed 



