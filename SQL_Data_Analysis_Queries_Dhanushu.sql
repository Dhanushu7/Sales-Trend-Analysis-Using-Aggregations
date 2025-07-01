
-- 1. Get all orders from January 2022
SELECT * FROM sales_dashboard_dataset
WHERE Year = 2022 AND Month = 1;

-- 2. Total sales by region
SELECT Region, SUM(Sales) AS Total_Sales
FROM sales_dashboard_dataset
GROUP BY Region
ORDER BY Total_Sales DESC;

-- 3. Average profit by category
SELECT Category, AVG(Profit) AS Avg_Profit
FROM sales_dashboard_dataset
GROUP BY Category
ORDER BY Avg_Profit DESC;

-- 4. Each order with customer info and product category
SELECT Order_ID, Customer_Name, Customer_Segment, Product_Name, Category
FROM sales_dashboard_dataset
ORDER BY Order_ID
LIMIT 100;

-- 5. Top 5 most profitable orders (fixed version using ORDER BY + LIMIT)
SELECT *
FROM sales_dashboard_dataset
ORDER BY Profit DESC
LIMIT 5;

-- 6. Create a view for monthly sales summary
CREATE OR REPLACE VIEW monthly_sales_summary AS
SELECT Year, Month, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit
FROM sales_dashboard_dataset
GROUP BY Year, Month;

-- 7. Create indexes for optimization
CREATE INDEX idx_order_date ON sales_dashboard_dataset(Order_Date);
CREATE INDEX idx_customer_id ON sales_dashboard_dataset(Customer_ID);
CREATE INDEX idx_year_month ON sales_dashboard_dataset(Year, Month);

-- 8. Total sales and profit by product category
SELECT Category, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit
FROM sales_dashboard_dataset
GROUP BY Category
ORDER BY Total_Sales DESC;

-- 9. Top 5 customers by total purchases
SELECT Customer_Name, SUM(Sales) AS Total_Spent
FROM sales_dashboard_dataset
GROUP BY Customer_Name
ORDER BY Total_Spent DESC
LIMIT 5;

-- 10. Total quantity sold by sub-category
SELECT Sub_Category, SUM(Quantity) AS Total_Quantity_Sold
FROM sales_dashboard_dataset
GROUP BY Sub_Category
ORDER BY Total_Quantity_Sold DESC;

-- 11. Number of orders handled by each sales rep
SELECT Sales_Rep, COUNT(Order_ID) AS Total_Orders
FROM sales_dashboard_dataset
GROUP BY Sales_Rep
ORDER BY Total_Orders DESC;

-- 12. Orders with more than 10 quantity and high discounts
SELECT *
FROM sales_dashboard_dataset
WHERE Quantity > 10 AND Discount > 0.1
ORDER BY Discount DESC;

-- 13. Multi-Dimensional Summary View
CREATE OR REPLACE VIEW sales_summary_dashboard AS
SELECT
    Year,
    Month,
    Region,
    Category,
    Sub_Category,
    Sales_Rep,
    COUNT(DISTINCT Order_ID) AS Total_Orders,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    AVG(Discount) AS Avg_Discount,
    SUM(Quantity) AS Total_Quantity
FROM
    sales_dashboard_dataset
GROUP BY
    Year, Month, Region, Category, Sub_Category, Sales_Rep;
