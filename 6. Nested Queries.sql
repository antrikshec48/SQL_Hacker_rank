--- Nested Queries--
-- 1. Print the Order number of the most valuab;e order by sales
select ord_id, sales, round(sales) as Rounded_sales
from market_fact_full
where sales=(
      select max(sales) 
      from market_fact_full);
      
-- 2. Print the Product categories and sub-categories of producst with condition on Product Base Margin
select *
from prod_dimen
where Prod_id in (
	select Prod_id
    from market_fact_full
    where Product_Base_Margin > 0.5);
    
-- 3. Print Name of Most Frequent Customer
select customer_name, cust_id
from cust_dimen
where Cust_id = (
 select Cust_id
 from market_fact_full
 group by Cust_id
 order by count(Cust_id) desc
 limit 1);
    
--- 4. Write a query to retrieve the names of all customers who have a credit limit greater than what La Rochelle Gifts has.
-- sol: select customerName 
-- from customers
-- where creditLimit > (
-- select creditLimit
-- from customers 
-- where customerName = 'La Rochelle Gifts'
-- );
    
--- CTE (Common Table Expression) : A CTE is used to create a temporary table, which is smaller than the existing table.
--- This smaller table cannot be individually queried, that returns an error. The CTE has to be used as part of the main query.    
    
-- 5. Creating a CTE
with least_losses as (
 select prod_id, Profit, Product_base_margin
 from market_fact_full
 where profit < 0
 order by Profit desc
 limit 5
 ) select *
 from least_losses
 where product_base_margin = (
 select max(Product_base_margin)
 from least_losses
 );

---- Views / Virtual tables --------
## View is very similar to CTE, however, CTE disapperas or cannot be used after the main query has beenn executed
## View can be used forever, until deleted
### Views doesnot occupy any space, thus , have 

--- 1. Create a View to display the sales amounts, the number of Orders, profits made & shipping Orders

create view order_info
as select ord_id, sales, order_quantity, profit, shipping_cost
from market_fact_full;
     
select ord_id, profit
from order_info
where Profit > 100;


----
--- select (attributes)
--- from (table)
--- where (filter_condition)
--- group by (attributes_to_be_grouped_upon)
--- having (filter_condition_on_grouped_values)
--- order by (values)
--- limit (no_of_values_to_display);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    