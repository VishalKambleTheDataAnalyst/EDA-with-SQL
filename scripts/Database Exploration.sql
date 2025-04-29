use DataWarehouseAnalytics;

-- Explore all the Objects in the database
select * from INFORMATION_SCHEMA.TABLES;

-- Explore all the Columns in the database
select * from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME = 'dim.customers'