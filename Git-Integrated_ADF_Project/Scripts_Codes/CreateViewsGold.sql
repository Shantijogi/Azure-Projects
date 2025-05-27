----------------------------
-- CREATE VIEW CALENDAR
----------------------------
CREATE VIEW gold.calendar
AS
SELECT *
FROM
    OPENROWSET(
            BULK 'https://adventureadls19.blob.core.windows.net/silver/AdventureWorks_Calendar',
            FORMAT = 'PARQUET'
) AS quer1

-------------------------------
-- CREATE VIEW CUSTOMERS
---------------------------------

CREATE VIEW gold.customers
AS
SELECT *
FROM
    OPENROWSET(
            BULK 'https://adventureadls19.blob.core.windows.net/silver/AdventureWorks_Customers',
            FORMAT = 'PARQUET'
) AS quer1

-------------------------------
-- CREATE VIEW ProductCategories
---------------------------------

CREATE VIEW gold.ProductCategories
AS
SELECT *
FROM
    OPENROWSET(
            BULK 'https://adventureadls19.blob.core.windows.net/silver/AdventureWorks_ProductCategories',
            FORMAT = 'PARQUET'
) AS quer1

-------------------------------
-- CREATE VIEW Products
---------------------------------

CREATE VIEW gold.Products
AS
SELECT *
FROM
    OPENROWSET(
            BULK 'https://adventureadls19.blob.core.windows.net/silver/AdventureWorks_Products',
            FORMAT = 'PARQUET'
) AS quer1

-------------------------------
-- CREATE VIEW Returns
---------------------------------

CREATE VIEW gold.Returns
AS
SELECT *
FROM
    OPENROWSET(
            BULK 'https://adventureadls19.blob.core.windows.net/silver/AdventureWorks_Returns',
            FORMAT = 'PARQUET'
) AS quer1

-------------------------------
-- CREATE VIEW Territories
---------------------------------

CREATE VIEW gold.Territories
AS
SELECT *
FROM
    OPENROWSET(
            BULK 'https://adventureadls19.blob.core.windows.net/silver/AdventureWorks_Territories',
            FORMAT = 'PARQUET'
) AS quer1

-------------------------------
-- CREATE VIEW Sales
---------------------------------

CREATE VIEW gold.Sales
AS
SELECT *
FROM
    OPENROWSET(
            BULK 'https://adventureadls19.blob.core.windows.net/silver/AdventureWorks_Sales',
            FORMAT = 'PARQUET'
) AS quer1