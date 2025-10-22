create database Student2 

Create table student_details(
Student_Name nvarchar(256),
Gender char(1),
Age tinyint,
Event_date date,
distance decimal(5,2))

--drop table student_details

select * from student_details

insert into student_details(Student_Name,Gender,Age,Event_date,distance)
values( 'chiru','M',21,'2024-10-30',123.11)


insert into student_details
values('Kiran','M',32,'2023-12-06',119.09)



