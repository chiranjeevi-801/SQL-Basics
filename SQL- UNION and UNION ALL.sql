/*

"UNION":--
*] The UNION operator is used to combine the result-set of two or more SELECT statements.

*] The UNION operator automatically removes duplicate rows from the result set.

*/


/*

"UNION ALL":--
*] The UNION ALL operator is used to combine the result-set of two or more SELECT statements.

*] The UNION ALL operator includes all rows from each statement, including any duplicates.

*/


create table append1 ( c1 int,c2 nvarchar(255),c3 int ) 
insert into append1 values (1,'A',7),
(2,'B',8),
(3,'C',9)


create table append2 ( c1 int,c2 nvarchar(255),c3 int ) 
insert into append2 values (11,'AA',17),
(2,'B',8),
(33,'C1',91)



select * from append1

select * from append2

--UNION ALL ---

select c1,c2,c3 from append1
union all -- duplicate values will be present in table
select c1,c2,c3 from append2


--  UNION ---

select c1,c2,c3 from append1
union -- duplicate values will be Absent in table
select c1,c2,c3 from append2

-- Conditions:---

-- Numbers of columns present in the select list have to be same
-- Data Types of the columns have to be same
-- Order in which columns are written has be the same 


-- Numbers of columns present in the select list have to be same(columns  should be same in both select satament )
select c1,c2,c3 from append1
union 
select c1,c2 from append2



-- Data Types of the columns have to be same(columns should be order wise)
select c1,c2,c3 from append1 --( c1=int,c2=nvarchar,c3=int)
union 
select c1,c3,c2 from append2

 --Order in which columns are written has be the same 
select c1,c2,c3 from append1 
union 
select c1,c2,c3 from append2


-- Aliase names which are specified in 1st select statment will be assigned to the columns

select c1[Column1],c2[Column2],c3[Column3] from append1 
union 
select c1[Col1],c2[Col2],c3[Col3] from append2