-- ============= Database Creation =============
CREATE DATABASE sales_analyticsDB;

-- <=============== Table Creation =================> 
CREATE TABLE superstore(
category VARCHAR(99),
city VARCHAR(90),
country VARCHAR(30),
customer_id VARCHAR(44),
customer_name VARCHAR(90),
discount DECIMAL(10, 2),
market VARCHAR(90),
order_date DATE,
order_id VARCHAR(90),
order_priority VARCHAR(90),
product_id VARCHAR(90),
product_name VARCHAR(90),
profit DECIMAL(10, 3),
quantity INT,
region VARCHAR(90),
row_id INT,
sales INT,
segment VARCHAR(90),
ship_date date,
ship_mode VARCHAR(90),
shipping_cost DECIMAL(10, 2),
state VARCHAR(100),
sub_category VARCHAR(90),
year YEAR,
marker2 VARCHAR(100),
weeknum INT);

-- <================ Show All Records =================> 
SELECT * FROM superstore;

-- <================== SQL Queries =================> 
-- SQL view create karo aur Python se read karo.
CREATE VIEW top_customers AS
    SELECT 
        customer_name, SUM(sales) AS total_sales
    FROM
        superstore
    GROUP BY (customer_name)
    ORDER BY total_sales DESC;

SELECT * FROM top_customers;

-- <===================== Report Generate karne ke liye queries =====================>
-- Query 1: Category-wise Sales 
SELECT 
    category, SUM(sales) AS total_sales
FROM
    superstore
GROUP BY category;


-- Query 2: Top 10 Customers
SELECT 
    customer_name, SUM(sales) AS total_sales
FROM
    superstore
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10; 


-- Query 3: Monthly Sales Trend
SELECT 
    MONTHNAME(order_date) AS Month, SUM(sales) AS total_sales
FROM
    superstore
GROUP BY Month;


-- Query 4: Loss Making Products
SELECT 
    product_name, SUM(profit) AS total_profit
FROM
    superstore
GROUP BY product_name
HAVING total_profit < 0;
