use db;

select * from saas_subscriptions;

select row_number() over (order by subscription_plan) as row_num, Billing_Cycle from saas_subscriptions order by monthly_recurring_revenue;

SELECT 
    ROW_NUMBER() OVER (ORDER BY Billing_Cycle) AS row_num,
    billing_cycle,
    COUNT(*) AS subscription_count
FROM saas_subscriptions
GROUP BY monthly_recurring_revenue;

select * ,first_value(customer_id) over (order by monthly_active_users) as highest_active_users from saas_subscriptions;

select monthly_active_users,rank() over (order by monthly_active_users) as users from saas_subscriptions;
