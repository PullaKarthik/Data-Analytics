use db;

select * from emp_old;

select max(salary) from emp_old;

select first_name,last_name from emp_old 
where salary > avg(salary);

select first_name,last_name,salary from emp_old 
where salary > (select avg(salary) from emp_old);

select * from emp_old 
where salary > (select salary from emp_old where  first_name='Alex');

select * from emp_old 
where salary = (select max(salary) from emp_old 
where salary < (select max(salary)from emp_old));

select * from emp_old 
where salary = (select max(salary) from emp_old 
where salary < (select max(salary)from emp_old
where salary < (select max(salary)from emp_old)));

select * from emp_old order by salary asc;