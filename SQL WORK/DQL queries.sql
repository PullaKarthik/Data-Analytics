use db;
create table emp_info(
first_name varchar(20),
last_name varchar(20),
id int not null,
age int,
city varchar(20),
state varchar(20));

desc emp_info;

insert into emp_info(first_name,last_name,id,age,city,state)
values
('Pulla','Karthik',6141,21,'Dharmavaram','AP'),
('Alakunta','Venkat',6142,21,25000,'AP'),
('Eruventi','Vishwa',6143,20,'Miryalaguda','TS'),
('Navudu','Chaitanya',6144,21,'Bobbili','AP'),
('Pandi','Prabhu Teja',6145,22,'Gudivada','AP'),
('Marri','Ganesh',6146,21,'Kamareddi','TS'),
('Kothapalli','Satya',6147,23,'Rajamundry','AP'),
('Madheshi','Sai Praneetha',6148,20,'Hyderabad','TS'),
('Pinnamaneni','Sirisha',6149,21,'Guntur','AP'),
('Nallabothula','Varma babu',6150,22,'Gooty','AP');

select * from emp_info;

select * from emp_info where first_name like 'P%';

select * from emp_info where first_name like 'P____';

select * from emp_info where last_name like '%a';

select * from emp_info where city like '%ja%';

select first_name as fname,last_name as lname from emp_info;

select * from emp_info where age = 22;

select * from emp_info where age = 23;

select count(*) from emp_info where age = 21;

select * from emp_info where age in (21,23);

select * from emp_info where age in (20,22);

select count('city') from emp_info;