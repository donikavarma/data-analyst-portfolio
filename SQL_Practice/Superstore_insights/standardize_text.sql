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
    TRIM(UPPER("Product Name"))   AS Product_Name
FROM superstore
LIMIT 10;

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
    Sales
FROM superstore;

UPDATE superstore
SET 
    "Order ID"       = TRIM(UPPER("Order ID")),
    "Ship Mode"      = TRIM(UPPER("Ship Mode")),
    "Customer ID"    = TRIM(UPPER("Customer ID")),
    "Customer Name"  = TRIM(UPPER("Customer Name")),
    "Segment"        = TRIM(UPPER("Segment")),
    "Country"        = TRIM(UPPER("Country")),
    "City"           = TRIM(UPPER("City")),
    "State"          = TRIM(UPPER("State")),
    "Region"         = TRIM(UPPER("Region")),
    "Product ID"     = TRIM(UPPER("Product ID")),
    "Category"       = TRIM(UPPER("Category")),
    "Sub-Category"   = TRIM(UPPER("Sub-Category")),
    "Product Name"   = TRIM(UPPER("Product Name"));

select * from superstore limit 10;