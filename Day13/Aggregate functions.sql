use db;

select * from ctm_churn_dataset;

select gender,customer_segment,count('customer_segment') from ctm_churn_dataset group by gender,customer_segment;

select min(tenure_months) from ctm_churn_dataset;

select max(tenure_months) from ctm_churn_dataset;

select avg(tenure_months) from ctm_churn_dataset;

select sum(tenure_months) from ctm_churn_dataset;