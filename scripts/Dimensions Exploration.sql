/* 
==========================================================================================
Dimensions Exploration
==========================================================================================
Purpose:
	- To explore the dimensions.

What is Dimensions?
Dimensions are typically columns of categorical or text data in a SQL data.
Dimensions are related to characters, eg. CustomerName and non aggregate numeric values in the dataset 
like CustomerID

SQL Function used:
	-DISTINCT
	-Count
	-Group by
	-ORDER BY

*/

--Explore all the Countries our customers come from
select distinct
    country
from
    gold.dim_customers

 --Explore All Categories "The Major Divisions"
select distinct
    category,
    subcategory,
    product_name
from
    gold.dim_products
order by 1,2,3


-- Identify the most common product categories in your data.
select 
    category, 
    count(product_id) AS product_count
from 
    gold.dim_products
group by 
    category
order by 
    product_count desc;

