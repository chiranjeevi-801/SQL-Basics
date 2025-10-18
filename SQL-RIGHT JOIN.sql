

select * from table1

select * from table2

select * from table1 right join table2
on table1.c1=table2.c1
               --OR --
select * from table1 right outer join table2 
on table1.c1=table2.c1

/* 

Explanation

1]. table1.c1 = 1 matches table2.c1 = 1 → two rows (A, B) × one row (XA) → 2 results

2]. table1.c1 = 2 matches table2.c1 = 2 → one row (C) × two rows (MB, NX) → 2 results

3]. table2.c1 = NULL, 4, and 5 have no match in table1 → show NULL for table1 columns

4]. table1.c1 = 3 (D) doesn’t appear because there’s no match and it’s a RIGHT JOIN (keeps all rows from table2).*/