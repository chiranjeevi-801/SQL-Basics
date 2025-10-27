/*
 Defalut Constraint:---
 A DEFAULT constraint is used to set a default value fora column in
 a table when no value is provided during an INSERT operation.

 *] “If no value is given for this column, use this value automatically.”

-- This constraint to provide default values to columns 

*/

--Case 1 : The table does not exist 
create table test_defalut(
EID int default 5,
firstname varchar(256) default 'Avinash',
lastname varchar(256),
age tinyint 
)

select * from test_defalut

insert into test_defalut values (1,'suhas','s',23)

insert into test_defalut (lastname,age)values ('singh',34)

--Case 2 : hte table already exists

alter table test_defalut
add default 25 for age 

insert into  test_defalut (lastname) values('jain')