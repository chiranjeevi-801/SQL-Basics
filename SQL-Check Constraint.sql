

--Check constraint
/*

*] It checks for certain condition that can applies on the columns of a table,if this condtion is not
   fullfilled,we will not be able to records into the table 
   */

--Case 1: Table doesn't exist 

create table test_check(
EID int,
firstname varchar(256),
age tinyint check(age>=10)
)

select * from test_check
insert into test_check values (1,'kiran','20')
insert into test_check values (1,'kiran',19)

update test_check set EID = 11 where EID =1

--Case 2: Table exists

alter table test_check
add check (eid>5)

insert into test_check values (3,'chiru','20')
insert into test_check values (40,'chiru','19')