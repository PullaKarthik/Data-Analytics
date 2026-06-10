create database db;
use db;

create table emp_old
(
first_name varchar(20),
last_name varchar(20),
designation varchar(50),
age int,
salary int
);

insert into emp_old(first_name,last_name,designation,age,salary)
values
('Richard','Burns','Secretarie',31,35000),
('Jonie','Weber','Developer',29,29000),
('Carl','Smith','Programmer II',27,50000),
('Matthew','Brezteke','Secretarie',25,25000),
('Alex','Carey','Programmer',34,40000),
('Dirk','Smith','Programmer II',28,35000),
('Bob','Williams','Programmer',31,55000),
('Dewald','Brevis','Developer',21,30000),
('Henry','Nicholls','Programmer II',41,60000),
('Nathan','Ellis','Programmer',25,25000);

truncate table emp_old;

select * from emp_old;

set sql_safe_updates=0;

update emp_old
set last_name='Weber-Williams'
where first_name='Jonie';

update emp_old
set age=age+1
where first_name='Dirk';

update emp_old
set designation='Administrative Assistant'
where designation='Secretarie';

update emp_old
set salary=salary+3500 
where salary <=30000;

update emp_old
set salary=salary+4500 
where salary > 33500;

update emp_old
set designation='Programmer III'
where designation='Programmer II';

update emp_old
set designation='Programmer II'
where designation='Programmer';

call procedure_1();

call update_procedure();

call insert_procedure();