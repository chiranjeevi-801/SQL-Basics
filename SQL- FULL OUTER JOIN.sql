
/*

FULL OUTER JOIN?

✅ All rows that match between the two tables, and

✅ All rows from the left table that don’t match, and

✅ All rows from the right table that don’t match.


Join Type  *****	Returns :--

INNER JOIN -->	   Only matching rows
LEFT JOIN  -->	   All left + matching right
RIGHT JOIN -->	   All right + matching left
FULL OUTER -->     JOIN	All rows from both, with NULLs for missing matches


*/



select * from table1

select * from table2


select * from table1 full outer join table2 
on table1.c1 = table2.c1

select a.c1,a.c2,b.c3 from table1
as a full outer join table2 as b
on a.c1=b.c1



