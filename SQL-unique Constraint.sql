

--unique Constraint: only insert unique values 
--It ensure that a column consists of unique values 

--Case1 : when table already exists 


alter table test_unique
add unique (lastname)




--Case2 : We need to create the table 
create table test_unique(
SID int unique,
age tinyint not null,
firstname varchar(256) not null unique,
lastname varchar(256)
)

select* from test_unique

insert into test_unique values (1,22,'chiru','acharya')

insert into test_unique values (1,23,'Avinash','AM')

insert into test_unique values (null,34,'suhas','S')

insert into test_unique values (null,44,'kiran','S')

truncate table test_unique

