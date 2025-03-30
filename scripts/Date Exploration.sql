/* 
==========================================================================================
Date Exploration
==========================================================================================
Purpose:
	- To explore the date.

SQL Function used:
	-Min
	-Max
	-Datediff
	-Year
	-GetDate

*/

 -- Find date of First Order and Last Order
select 
	min(order_date) as first_order_date, 
	max(order_date) as last_order_date,
	datediff(year, min(order_date), max(order_date)) as order_range_years
 from 
	gold.fact_sales

 -- how many years of sales data is available
 select 
	min(year(order_date)) as start_year,
	max(year(order_date)) as end_year,
	(max(year(order_date)) - min(year(order_date)) + 1) as total_years
from
	gold.fact_sales

 --Find the Youngest and Oldest Customer
 select
	DATEDIFF(YEAR, MIN(birthdate), GETDATE()) as oldest_age,
	max(birthdate) as youngest_birthdate,
	DATEDIFF(YEAR, MAX(birthdate), GETDATE()) as youngest_age
 from 
	gold.dim_customers

--How do sales vary across different years, quarters, and months
select
	DATEPART(YEAR, order_date) as years,
	DATEPART(QUARTER, order_date) as Quarters,
	DATEPART(MONTH, order_date) as months,
	SUM(sales_amount) as total_sales
from
	gold.fact_sales
group by
	DATEPART(YEAR, order_date),
	DATEPART(QUARTER, order_date),
	DATEPART(MONTH, order_date)
order by
	Years,
	Quarters,
	Months