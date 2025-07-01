# Sales Trend Analysis with SQL

This project demonstrates how to perform sales trend analysis using SQL on a structured dataset. It includes SQL queries for extracting insights such as revenue trends, top-performing products, customer segments, and profit patterns.

## Project Structure

| File/Folder                  | Description                                      |
|-----------------------------|--------------------------------------------------|
| `sales_dashboard_dataset.csv` | The original sales data file                    |
| `sales_analysis_queries.sql`  | SQL script containing all analysis queries      |
| `screenshots/`                | Folder containing screenshots of query outputs  |
| `README.md`                   | Project documentation file                      |

## Dataset Information

- File: sales_dashboard_dataset.csv
- Fields: Order_ID, Order_Date, Sales, Profit, Customer_Name, Product_Name, Region, Category, Year, Month, etc.
- Source: Simulated business retail data
- Size: Moderate (suitable for beginners)

## Objectives

- Analyze monthly revenue and order volume trends
- Identify top customers and best-selling products
- Evaluate profitability and discount impacts
- Understand regional and segment-based performance

## Tools Used

- MySQL Workbench for running queries
- SQL for data analysis
- Pandas or Excel (optional) for data preview

## Key SQL Concepts Covered

- GROUP BY and aggregation functions (SUM, COUNT, AVG)
- ORDER BY and LIMIT for ranking and sorting
- Conditional filtering using WHERE
- Summaries by category, region, and customer segment

## How to Use

1. Clone this repository  
  - Open a terminal or Git Bash and run:
  - git clone [https://github.com/dhanushu12/sales-trend-sql-analysis.git](https://github.com/Dhanushu7/Sales-Trend-Analysis-Using-Aggregations/tree/main)
  - cd sales-trend-sql-analysis


2. Open MySQL Workbench:
- Create a new table with a schema matching the CSV file
- Import the sales_dashboard_dataset.csv file using Table Data Import Wizard
- Execute the SQL queries provided in sales_analysis_queries.sql


## Example Queries Included

- Monthly Sales and Order Volume
- Top 5 Customers by Sales
- Regional Profitability Summary
- High Discount Orders
- Orders with Negative Profit
- Sales by Product Category and Customer Segment

## Contact

Name: Dhanushu V  
Email: dhanushu77@gmail.com

For questions, suggestions, or collaboration, feel free to reach out.

