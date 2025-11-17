SELECT "Order Date", "Ship Date"
FROM superstore
LIMIT 10;

SELECT 
    "Order ID",
    SUBSTR("Order Date", 7, 4) || '-' || 
    SUBSTR("Order Date", 4, 2) || '-' || 
    SUBSTR("Order Date", 1, 2) AS Clean_Order_Date,
    
    SUBSTR("Ship Date", 7, 4) || '-' || 
    SUBSTR("Ship Date", 4, 2) || '-' || 
    SUBSTR("Ship Date", 1, 2) AS Clean_Ship_Date
FROM superstore
LIMIT 10;

DROP VIEW IF EXISTS superstore_clean;

CREATE VIEW superstore_clean AS
SELECT 
    TRIM(UPPER("Order ID"))       AS Order_ID,
    TRIM(UPPER("Ship Mode"))      AS Ship_Mode,
    TRIM(UPPER("Customer ID"))    AS Customer_ID,
    TRIM(UPPER("Customer Name"))  AS Customer_Name,
    TRIM(UPPER("Segment"))        AS Segment,
    TRIM(UPPER("Country"))        AS Country,
    TRIM(UPPER("City"))           AS City,
    TRIM(UPPER("State"))          AS State,
    TRIM(UPPER("Region"))         AS Region,
    TRIM(UPPER("Product ID"))     AS Product_ID,
    TRIM(UPPER("Category"))       AS Category,
    TRIM(UPPER("Sub-Category"))   AS Sub_Category,
    TRIM(UPPER("Product Name"))   AS Product_Name,
    -- Convert DD/MM/YYYY → YYYY-MM-DD
    SUBSTR("Order Date", 7, 4) || '-' || 
    SUBSTR("Order Date", 4, 2) || '-' || 
    SUBSTR("Order Date", 1, 2) AS Order_Date,
    
    SUBSTR("Ship Date", 7, 4) || '-' || 
    SUBSTR("Ship Date", 4, 2) || '-' || 
    SUBSTR("Ship Date", 1, 2) AS Ship_Date,
    
    Sales
FROM superstore;

SELECT Order_ID, Order_Date, Ship_Date, Sales
FROM superstore_clean
LIMIT 10;