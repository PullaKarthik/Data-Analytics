use db;

create view new_view as Select
first_name,last_name from emp_old
where salary in (select salary from emp_old
where salary < 45000);

create table Employee_1
(
first_name varchar(20),
last_name varchar(20),
title varchar(20),
age int,
salary int
);

insert into Employee_1(first_name,last_name,title,age,salary)
values
('Pulla','Karthik','Analyst',21,15000),
('Eruventi','Vishwa','Developer',21,30000),
('Navudu','Chaitanya','Jr Developer',21,20000),
('Alakunta','Venkat','Sr Developer',21,25000),
('Nallabothula','Varma','Developer',22,30000);

create view view3 as Select distinct
e.first_name,e.last_name from employee_1 e join emp_old e1 where e.title=e1.designation and designation = 'Developer';

select * from view3;