-- Basic SQL Queries
-- 1. Print Entire Data of all customers
select *
from cust_dimen;

-- 2. List the names of all customers
select Customer_Name
from cust_dimen;

-- 3. Select Multiple Attributes from table
select Customer_Name, City, State
from cust_dimen;

-- 4. Print count of Total Customers
select count(*) 
from cust_dimen;

-- 5. Using Alias for Query
select count(*) as "Total Customer" 
from cust_dimen;

-- 6. Using where clause
select count(*) as "Bengal Customer" 
from cust_dimen
where state = "West Bengal"; 

-- 7. Using Multiple conditions with select
select Customer_Name, City, Customer_Segment
from cust_dimen
where City = "Mumbai" and Customer_Segment ="Corporate";

-- 8. List details of all Customers belonging to Southern India
select Customer_Name, State, City 
from cust_dimen
where state in ("Tamil Nadu", 'Karnataka');

-- 9. List Items belonging to a category
select *
from cust_dimen
where Customer_Segment != "Small Business";

-- 10 List Items with Loss
select ord_id, Profit
from market_fact_full
where Profit <0;

-- 11. list items with Oredr Id_5 & shipping cost between 10 & 15
select Ord_id, Shipping_Cost
from market_fact_full
where Ord_id like '%_5%' and Shipping_Cost between 10 and 15;

-- 12. List all the Cities in Cust_dimen table which start with "K"
select distinct city
from cust_dimen
where city like "K%";

## Wild Card - % is a multi-character wildcard, whereas _ is a single-character wildcard. 
### For example, using "_r%" would return the words with the second character as r, followed by zero or more characters at the end.

## select all the records from a table named ‘employees’ where the ‘LastName’ is alphabetically between (and includes) ‘Joshi’ and ‘Sharma’?
## Sol: select * from employees where LastName between ‘Joshi’ and ‘Sharma’;






