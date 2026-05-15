create database superstore_db;
USE superstore_db;
CREATE TABLE superstore (
  row_id INT,
  order_id VARCHAR(30),
  order_date VARCHAR(30),
  ship_date VARCHAR(30),
  ship_mode VARCHAR(50),
  customer_id VARCHAR(30),
  customer_name VARCHAR(100),
  segment VARCHAR(50),
  country VARCHAR(50),
  city VARCHAR(50),
  state VARCHAR(50),
  postal_code VARCHAR(20),
  region VARCHAR(30),
  product_id VARCHAR(50),
  category VARCHAR(50),
  sub_category VARCHAR(50),
  product_name VARCHAR(255),
  sales DECIMAL(10,2),
  quantity INT,
  discount DECIMAL(10,2),
  profit DECIMAL(10,2)
);
Select * from superstore
SELECT * FROM superstore
LIMIT 100;
SELECT COUNT(*) AS total_rows
SELECT ROUND(SUM(sales),2) AS total_sales
FROM superstore;
FROM superstore;
SELECT SUM(quantity) AS total_quantity
SELECT region,
       ROUND(SUM(sales),2) AS total_sales
FROM superstore
GROUP BY region
ORDER BY total_sales DESC;
FROM superstore;
SELECT state,
       ROUND(SUM(sales),2) AS total_sales
FROM superstore
GROUP BY state
ORDER BY total_sales DESC
LIMIT 10;
SELECT category,
       ROUND(SUM(sales),2) AS total_sales
FROM superstore
GROUP BY category;
SELECT sub_category,
       ROUND(SUM(profit),2) AS total_profit
FROM superstore
GROUP BY sub_category
ORDER BY total_profit DESC;
SELECT product_name,
       ROUND(SUM(sales),2) AS total_sales
FROM superstore
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;
SELECT product_name,
       ROUND(SUM(profit),2) AS total_profit
FROM superstore
GROUP BY product_name
HAVING total_profit < 0
ORDER BY total_profit;
SELECT segment,
       ROUND(SUM(sales),2) AS total_sales
FROM superstore
GROUP BY segment;
SELECT ship_mode,
       COUNT(order_id) AS total_orders
FROM superstore
GROUP BY ship_mode;
SELECT 
    YEAR(order_date) AS year_no,
    MONTH(order_date) AS month_no,
    ROUND(SUM(sales),2) AS monthly_sales
FROM superstore
GROUP BY YEAR(order_date),
         MONTH(order_date)
ORDER BY year_no, month_no;
SELECT discount,
       ROUND(SUM(sales),2) AS total_sales,
       ROUND(SUM(profit),2) AS total_profit
FROM superstore
GROUP BY discount
ORDER BY discount;
CREATE VIEW sales_dashboard AS
SELECT
    order_date,
    region,
    state,
    category,
    sub_category,
    sales,
    profit,
    quantity,
    discount
FROM superstore;