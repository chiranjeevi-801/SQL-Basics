
/*
Foreign Key constraint

A foreign key is a column in one table that is linked to the primary key column of another table.
It helps maintain referential integrity — meaning, the data in both tables stays consistent.



*] The FOREIGN KEY constraint is used to prevent actions that would destroy links between tables.

*] A FOREIGN KEY is a field (or collection of fields) in one table, 
   that refers to the PRIMARY KEY in another table.

*] The table with the foreign key is called the child table, 
   and the table with the primary key is called the referenced or parent table.


*/


--Case 1: when the new table has to be created 
create table test_primary_key(
Id int primary key,
name varchar(256)
)

insert into test_primary_key values (1,'Abhilash'),(2,'kiran'),(3,'Maonj')

select * from test_primary_key

create table test_foreign_key(
Id int foreign key references test_primary_key(id),
course varchar(256)
)
insert into test_foreign_key values (1,'A')

select*from test_foreign_key

insert into test_foreign_key values (null,'B')


insert into test_foreign_key values (null,'B')

insert into test_foreign_key values (5,'C') --  ❌ error (5 does NOT exist in primary key)


-- Case 2 : Table alresdy exists

create table test_foreign_key_2(ID int,course varchar(256))

alter table test_foregin_key_2
add foreign key (id) references test_primary_key (id_)