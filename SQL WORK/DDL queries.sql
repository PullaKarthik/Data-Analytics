use db;

create table Employee
(
first_name varchar(20),
last_name varchar(20),
title varchar(20),
age int,
salary int
);

desc Employee;

insert into Employee(first_name,last_name,title,age,salary,gender)
values
('Pulla','Karthik','Analyst',21,15000,'M'),
('Eruventi','Vishwa','Developer',21,30000,'M'),
('Navudu','Chaitanya','Jr Developer',21,20000,'M'),
('Alakunta','Venkat','Sr Developer',21,25000,'M');

select * from Employee;

alter table Employee add gender varchar(2);

alter table Employee add random varchar(2);

alter table Employee drop column random;