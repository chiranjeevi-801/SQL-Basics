/* 

*] ANTI JOIN returns rows from one table that do not have a match in the other table.

*] SQL doesn’t have a keyword called ANTI JOIN,
   but we can simulate it using LEFT JOIN (or RIGHT JOIN) 
   with a WHERE ... IS NULL condition.

   LEFT ANTI JOIN: Get rows from the left table that do not have matching rows in the right table.

   RIGHT ANTI JOIN: Get rows from the right table that do not have matching rows in the left table.

   */ 



select * from table1

select * from table2


-- Left Anti Join 

select * from table1 left join table2
on table1.c1=table2.c1
where table2.c1 is null 

-- Right Anti Join 

select * from table1 right join table2
on table1.c1 = table2.c1
where table1.c2 is null 


