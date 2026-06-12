use db;

select * from emp_old;

select gender,customer_segment,count('customer_segment') from ctm_churn_dataset group by gender,customer_segment;

select concat(first_name,last_name) from emp_old;

select trim(concat(first_name,last_name)) from emp_old;

select concat(upper(first_name),upper(last_name)) as Name from emp_old;

select upper(first_name) from ctm_churn_dataset;

select character_length(concat(first_name,last_name)) as length from emp_old;
