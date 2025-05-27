
CREATE DATABASE SCOPED CREDENTIAL cred_awproject
WITH
    IDENTITY = 'Managed Identity';

---------------------------------------------

CREATE EXTERNAL DATA SOURCE source_silver
WITH (
    LOCATION = 'https://adventureadls19.blob.core.windows.net/silver',
    CREDENTIAL = cred_awproject
    );

----------------------------------------------

CREATE EXTERNAL DATA SOURCE source_gold
WITH (
    LOCATION = 'https://adventureadls19.blob.core.windows.net/gold',
    CREDENTIAL = cred_awproject
    );

----------------------------------------------------

CREATE EXTERNAL FILE FORMAT format_parquet
WITH (
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)

--------------------------------------------------------------


---- create external table extcalendar

CREATE EXTERNAL TABLE gold.extcalendar
WITH (
    LOCATION = 'extcalendar',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.Calendar;

select * from gold.extcalendar;

---- create external table extcustomers
CREATE EXTERNAL TABLE gold.extcustomers
WITH (
    LOCATION = 'extcustomers',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.Customers;

select * from gold.Customers;

---- create external table extProdCat
CREATE EXTERNAL TABLE gold.extProdCat
WITH (
    LOCATION = 'ProductCategories',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.ProductCategories;

select * from gold.ProductCategories;

---- create external table extProd
CREATE EXTERNAL TABLE gold.extProd
WITH (
    LOCATION = 'Products',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.Products;

select * from gold.Products;

---- create external table extReturns
CREATE EXTERNAL TABLE gold.extReturns
WITH (
    LOCATION = 'Returns',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.Returns;

select * from gold.Returns;

---- create external table extTerritories
CREATE EXTERNAL TABLE gold.extTerritories
WITH (
    LOCATION = 'Territories',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.Territories;

select * from gold.Territories;

---- create external table extSales
CREATE EXTERNAL TABLE gold.extSales
WITH (
    LOCATION = 'Sales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.Sales;

SELECT * FROM gold.sales;







