
/*
 SELF JOIN

A SELF JOIN is when a table is joined with itself.  ( null value will remove )
*/


select * from table1

select *  from table1 a inner join table1 b
on a.c1 = b.c1 


select a.c1,b.c2 from table1 a inner join table1 b
on a.c1 = b.c1 
            --OR--
select a.c1,b.c2 from table1 a  join table1 b
on a.c1 = b.c1 

/*
Concept    *****      Meaning
SELF JOIN   ---->       A table joins with itself
Purpose	    ---->       Compare or relate rows in the same table
Alias usage	---->       Use different aliases (like e and m) to tell the copies apart

*/