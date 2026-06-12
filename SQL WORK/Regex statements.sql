use db;

select * from emp_old;

select * from emp_old where designation REGEXP '^d';

select first_name,last_name,designation from emp_old where designation REGEXP '^[pro]';

select count(*) from emp_old where designation REGEXP '[A-D]';