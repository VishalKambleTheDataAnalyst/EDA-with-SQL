/*
==========================================================================================
Ranking Analysis
==========================================================================================
Purpose:
	- To analyze the magnitude.

We will have Rank[Dimension] by ∑[Measure] This will help us understand the data by ranking it.

SQL Function used:
	-sum
	-group by
	-order by

*/

--Which 5 products generate the highest revenue?
select top 5
	p.product_name,
	SUM(f.sales_amount) as total_revenue 
from 
	gold.fact_sales f
left join 
	gold.dim_products p
on 
	p.product_key = f.product_key
group by 
	p.product_name
order by 
	total_revenue desc

-- What are the 5 worst performing products in terms of sales?
select top 5
	p.product_name,
	sum(f.sales_amount) as total_revenue
from 
	gold.fact_sales f
left join 
	gold.dim_products p
on 
	p.product_key = f.product_key
group by 
	p.product_name
order by 
	total_revenue