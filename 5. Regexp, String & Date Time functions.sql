use market_star_schema;

-- String & Date-Time Functions
-- 1. Use of Concat Function
select product_category, product_sub_category,
concat (Product_category, "_" , Product_sub_category) as Product_name
from prod_dimen; 

-- 2. Upper & Lower Functions
select lower(product_category), lower(product_sub_category),
concat (Product_category, "_" , Product_sub_category) as Product_name
from prod_dimen; 

--- REGEXP------------
-- 1. Find the Name of all Customers having Sbstring "car" 
select customer_name
from cust_dimen
where Customer_name regexp 'car';

-- 2. Find the Name of all Customers starting with A, B, C, D and ending with 'er'
-- ^[abcd] - selects all the items starting with a, b, c, d
-- er$ - selects item ending with 'er'
-- .* - anything in between
select customer_name
from cust_dimen
where Customer_name regexp '^[abcd].*er$';






