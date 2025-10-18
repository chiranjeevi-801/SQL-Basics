
/* LEFT JOIN - The LEFT JOIN keyword returns all records from the left table (table1),
and the matching records (if any) from the right table (table2). */

/*  Note:- The LEFT JOIN keyword returns all records from the left table (Customers),
even if there are no matches in the right table (Orders).*/




/*  A LEFT JOIN in SQL (also called a LEFT OUTER JOIN) returns all rows from the left table, 
and the matching rows from the right table.*/

/*  If there’s no match in the right table, 
SQL still returns the left table’s row — but fills the right table’s columns with NULL.*/


/* INNER JOIN → Only matching rows

LEFT JOIN → All rows from the left table + matching rows from the right
(or NULL if no match)*/





select * from table1

select * from table2


select * from table1 left join table2
on table1.c1=table2.c1
            -- OR ---
select * from table1 left outer join table2
on table1.c1=table2.c1


select * from table1 a left join table2 b 
on a.c1=b.c1

select a.c1,a.c2,b.c3 from table1 a left join table2 b 
on a.c1=b.c1







