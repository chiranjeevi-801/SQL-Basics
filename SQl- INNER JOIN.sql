DROP TABLE IF EXISTS table1;
DROP TABLE IF EXISTS table2;

-- Now create them again
CREATE TABLE table1 (C1 INT, C2 NVARCHAR(MAX));
INSERT INTO table1 VALUES 
(1, 'A'),
(1, 'B'),
(2, 'C'),
(NULL, 'D'),
(3, 'E'),
(7, 'DA');

CREATE TABLE table2 (C1 INT, C3 NVARCHAR(MAX));
INSERT INTO table2 VALUES 
(1, 'XA'),
(2, 'MB'),
(2, 'NX'),
(NULL, 'MO'),
(4, 'XY'),
(5, 'TF');





select * from table1

select * from table2


select * from table1 
inner join table2 on table1.C1 = table2.C1

select table1.C1,table1.C2,table2.C3 from table1 
inner join table2 on table1.C1 = table2.C1

select a.C1,a.C2,b.C3 from table1 a 
inner join table2 b on
a.C1 = b.C1

select a.C1,a.C2,b.C3 from table1 a 
join table2 b on
a.C1 = b.C1
