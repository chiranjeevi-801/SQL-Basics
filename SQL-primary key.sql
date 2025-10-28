


--Primary Key Constaint

/*

*] Uniqueness: No two rows can have the same primary key value.

*] Not Null: A primary key column cannot contain NULL values.

*] One per table: Each table can have only one primary key,
    but it can be composite (made up of multiple columns).

    */

--Case 1: When new is to be created 
create table test_pk_1(
eid int primary key,
gender char(1),
age tinyint,
firstname varchar(256)
)

insert into test_pk_1 values (1,'m',23,'abhlish')

select * from test_pk_1

insert into test_pk_1 values (1,'f',19,'pragnya') -- it is not accept the duplicate value only accepts unique values


insert into test_pk_1 values (null,'m',25,'kiran')--Cannot insert the value NULL into column 'eid', table

truncate table test_pk_1



--Case 2 : Table Already exists

alter table test_pk_1
add primary key (age)

drop table test_pk_2

create table test_pk_2 (
SID int not null unique ,
firstname nvarchar(256),
age tinyint not null
)

alter table test_pk_2
add primary key (sid,age)

alter table test_pk_2
add primary key (sid)
