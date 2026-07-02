SELECT *
FROM sales_data_sample
LIMIT 10;

-- Geographical analysis
-- Total unique coutries
SELECT 
COUNT(DISTINCT Country)
FROM sales_data_sample;
-- The total countries served are 19
-- Which countries generates the highest and lowest revenue

SELECT 
 Country,
 SUM(Sales) AS Revenue
 FROM sales_data_sample
 GROUP BY Country
 ORDER BY Revenue DESC;
 -- Insight: USA generates the highest revenue and ireland generates the lowest.
 -- Recommendation: continue priortizing the USA market, has it currently generates the highest revenue 
 -- but reason for the low revenue requires further investigation.
 
 -- Countries with highest and lowest orders
 SELECT Country,
     COUNT(Order_number) AS orders
     FROM sales_data_sample
     GROUP BY Country
     ORDER BY orders DESC;
     -- Insight: The analysis revealed identical country ranking for both revenue and orders. 
     -- This indicates that revenue performanceis largely driven by order volume.
     
     -- Product analysis
     -- What is the total amount of unique products offered
     SELECT
     COUNT(DISTINCT Product_Line)
     FROM sales_data_sample;
     -- The store offers 7 distinct products.
     -- What are the best performing products
     SELECT 
      Product_Line,
      SUM(Sales) AS Revenue
      FROM sales_data_sample
      GROUP BY Product_Line
      ORDER BY Revenue DESC;
      
      SELECT 
      Product_Line,
      SUM(Quantity) AS Quantity_sold
      FROM sales_data_sample
      GROUP BY Product_Line
      ORDER BY quantity_sold DESC;
     -- Insight: "classic cars" and "vintages cars" are the best perfoming products as they generate the most revenue
     -- and the highest quantity sold.
     -- Recommendations: These products should be priortized during inventory planning.
     
     -- Customer analysis
     -- Meeting the highest value customers
     SELECT 
    Customer_Name,
    COUNT(Order_Number) AS total_orders,
    SUM(Sales) AS total_spent,
    ROUND(AVG(Sales), 2) AS avg_order_value
FROM sales_data_sample
GROUP BY Customer_Name
ORDER BY total_spent DESC
LIMIT 10;
-- Insights: "Euro shopping Channel" is the highest value client with a total order of 259

-- Customer loyalty
SELECT 
   Customer_Name,
    COUNT(Order_Number) AS total_orders,
    MIN(order_date) AS first_order,
    MAX(order_date) AS last_order,
    DATEDIFF(MAX(order_date), MIN(order_date)) AS days_as_customer
FROM sales_data_sample
GROUP BY Customer_Name
ORDER BY total_orders DESC;

SELECT 
   Customer_Name,
    COUNT(Order_Number) AS total_orders,
    SUM(Sales) AS total_spent,
    CASE 
        WHEN COUNT(Order_Number) >= 100 THEN 'Champion'
        WHEN COUNT(Order_Number) BETWEEN 40 AND 99 THEN 'Loyal'
        WHEN COUNT(Order_Number) BETWEEN 5 AND 39 THEN 'Occasional'
        ELSE 'One-time'
    END AS loyalty_tier
FROM sales_data_sample
GROUP BY Customer_Name
ORDER BY total_orders DESC;
-- Insight: "Euro Shopping Channel is not only the highest value customer but also the oldest customer
-- this may be suggesting that customer longevity is associated with the customer value.
-- Recommendation: the company should invest in a retention program and also a loyalty reward system.

-- Period analysis
-- Monthly trendline
SELECT 
  Month_ID,
  SUM(Sales) AS Revenue
  FROM sales_data_sample
  GROUP BY Month_ID
  ORDER BY Revenue DESC;
  -- Insight: sales is the highest in november
  SELECT 
  Year_ID,
  SUM(Sales) AS Revenue
  FROM sales_data_sample
  GROUP BY Year_ID
  ORDER BY Revenue DESC;