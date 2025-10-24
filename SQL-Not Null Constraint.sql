
create database constraints
use constraints

/*

ChatGPT said:
The NOT NULL constraint in SQL is used to ensure that a column cannot have a NULL value 
— meaning that every record in that column must contain a valid (non-missing) value.


* EID (integer) — cannot be NULL (NOT NULL constraint).
* age (tiny integer) — can be NULL.
* firstname (text) — can be NULL.

So when inserting data, EID must always have a value.

*/

--Constraints
--Conditions that can be applied on columns of a table and these conditions to be followed while 
--Inserting records into the table 

--Not Null constraint

--Case1: We will have to create a new table

create table test_not_null(
EID int not null,
age tinyint,
firstname varchar(256)
)

select * from test_not_null

select * from INFORMATION_SCHEMA.columns 
where TABLE_NAME like 'test_not_nul'

insert into test_not_null values (1,23,'chiru')

insert into test_not_null values (2,23,'abhilash')

insert into test_not_null values (2,null,'abhilash')


--Case2: the table already exists
--We want to make firstname column nullable

alter table test_not_null 
alter column firstname varchar(256) not null 

insert into test_not_null values ( 21,34,null)

alter table test_not_null
alter column age tinyint not null 

select* from test_not_null