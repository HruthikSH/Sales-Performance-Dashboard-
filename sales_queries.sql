-- Create database
CREATE DATABASE sales_db;
USE sales_db;

-- Create table
CREATE TABLE sales_data (
    Order_ID VARCHAR(10),
    Order_Date DATE,
    Customer_Name VARCHAR(100),
    Region VARCHAR(20),
    Salesperson VARCHAR(50),
    Product_Category VARCHAR(50),
    Product_Name VARCHAR(50),
    Quantity INT,
    Unit_Price DECIMAL(10,2),
    Sales_Amount DECIMAL(12,2),
    Profit DECIMAL(12,2)
);

-- Basic analysis queries
SELECT SUM(Sales_Amount) AS total_sales FROM sales_data;
SELECT SUM(Profit) AS total_profit FROM sales_data;

SELECT Region, SUM(Sales_Amount) AS region_sales
FROM sales_data
GROUP BY Region
ORDER BY region_sales DESC;

SELECT Product_Category, SUM(Sales_Amount) AS category_sales
FROM sales_data
GROUP BY Product_Category
ORDER BY category_sales DESC;

SELECT Salesperson,
       SUM(Sales_Amount) AS salesperson_sales,
       SUM(Profit) AS salesperson_profit
FROM sales_data
GROUP BY Salesperson
ORDER BY salesperson_sales DESC;
