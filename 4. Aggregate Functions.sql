---- Aggregate Function & Ordering
### Count (*) = counts all Values
### Count (Sales) = counts Non-null values
### MySQL has Aggregate Functions - Min, max, Mean. It does not have built-in functions for calculating the median or mode.

-- 1. Count Function
Select count(Sales) as "Total Sales"
from market_fact_full;

-- 2. Total Number of customers from Each city
select count(Customer_Name) as "Total Count", City
from cust_dimen
group by city;

-- 3. Multiple Criteria in groupby
select count(Customer_Name) as "City_wise_customers", City, Customer_Segment
from cust_dimen
group by city, Customer_Segment;

--------------- Ordering---------------------
-- 1.List Customer names in alphabetical order
select distinct Customer_name
from cust_dimen
order by Customer_name;

-- 2.List Customer names in reverse alphabetical order
select distinct Customer_name
from cust_dimen
order by Customer_name desc;

-- 3. Print three most ordered products
select Prod_id, sum(order_quantity)
from market_fact_full
order by sum(Order_Quantity) desc
limit 3;



----------------- Having Clause-------
## You have already learnt how to filter individual values based on a given condition. 
## But how do you do this for grouped values? Suppose your manager asks you to count all the employees whose salaries are more than the average salary 
## in their respective departments. Now, intuitively, you know that two aggregate functions would be used here: count() and avg(). 
## You decide to apply the 'where' condition on the average salary of the department, but to your surprise, the query fails.
## This is exactly what the 'having' clause is for. 

--- Where is filter applied on the Base table
--- Having is Filer applied only on Grouped aggregate data

select Prod_id, sum(order_quantity)
from market_fact_full
group by Prod_id
having sum(Order_quantity) > 2000
order by sum(Order_Quantity) desc;











