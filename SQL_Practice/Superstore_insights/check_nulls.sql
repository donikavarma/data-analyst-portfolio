SELECT COUNT(*) FROM superstore;

SELECT * from superstore limit 10;

PRAGMA table_info(superstore);

-- Count NULLs in each column
SELECT 
    SUM(CASE WHEN "Row ID" IS NULL THEN 1 ELSE 0 END) AS Row_ID_nulls,
    SUM(CASE WHEN "Order ID" IS NULL THEN 1 ELSE 0 END) AS Order_ID_nulls,
    SUM(CASE WHEN "Customer Name" IS NULL THEN 1 ELSE 0 END) AS Customer_Name_nulls,
    SUM(CASE WHEN Sales IS NULL THEN 1 ELSE 0 END) AS Sales_nulls
FROM superstore;