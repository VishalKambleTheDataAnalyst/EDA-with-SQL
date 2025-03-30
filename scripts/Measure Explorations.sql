/* 
==========================================================================================
Measures Exploration
==========================================================================================
Purpose:
	- To explore the measures.

What is Measures?
Measures are numerical values that you aggregate, calculate, or summarize. They represent "quantitative data."
Meaasures refers to the numeric values in the dataset, eg. sales, 
which can be aggregated, like using sum or average

SQL Function used:
	-sum
	-avg
	-count

*/

-- Find the Total Sales
select sum(sales_amount) as total_sales from gold.fact_sales

-- Find how many items are sold
select sum(quantity) as total_quantity from gold.fact_sales

-- Find the average selling price
select avg(price) as avg_price from gold.fact_sales

-- Find the total number of Orders
select count(distinct order_number) as total_orders from gold.fact_sales

--Find Total number of products
select count(distinct product_name) as total_products from gold.dim_products

-- Find the total number of Customers
select count(distinct customer_id) as total_customers from gold.dim_customers

-- Find the total number of Customers that has placed Orders
select count(distinct customer_key) as total_customers from gold.fact_sales

-- Generate a report that shows all the key metrics of the business
select 'Total Sales' as measure_name, sum(sales_amount) as measure_value from gold.fact_sales
union all
select 'Total Quantity' as measure_name, sum(quantity) as measure_value from gold.fact_sales
union all
select 'Avg Price' as measure_name, avg(price) as measure_value from gold.fact_sales
union all
select 'Total Orders' as measure_name, count(distinct order_number) as measure_value from gold.fact_sales
union all
select 'Total Products' as measure_name, count(distinct product_name) as measure_value from gold.dim_products
union all
select 'Total Customers' as measure_name, count(distinct customer_id) as measure_value from gold.dim_customers
union all
select 'Total Customers' as measure_name, count(distinct customer_key) as measure_value from gold.fact_sales