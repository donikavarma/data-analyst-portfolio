-- Monthly Sales Trend
SELECT 
    STRFTIME('%Y-%m', Order_Date) AS Order_Month,
    SUM(Sales) AS Monthly_Sales
FROM superstore_clean
GROUP BY Order_Month
ORDER BY Order_Month;

--Shipping Delay Analysis
SELECT 
    Order_ID,
    (julianday(Ship_Date) - julianday(Order_Date)) AS Shipping_Days
FROM superstore_clean
LIMIT 10;

--Sales by category
SELECT 
    Category,
    SUM(Sales) AS Total_Sales
FROM superstore_clean
GROUP BY Category
ORDER BY Total_Sales DESC;

--Regional Performance
SELECT 
    Region,
    SUM(Sales) AS Regional_Sales
FROM superstore_clean
GROUP BY Region
ORDER BY Regional_Sales DESC;