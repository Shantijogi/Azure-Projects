# Blob & ADLS to Bronze Pipeline

## Overview
This pipeline is designed to move raw data from **Blob Storage** and **ADLS** into the **bronze layer** in Azure Data Lake Storage (ADLS). It supports **CSV** and **Excel** file types.

## Steps Involved:
1. **Source**: CSV files, Excel files and Folder from Blob Storage and ADLS.
2. **Destination**: Data is ingested into the **bronze layer** in ADLS.
3. **Activities**:
   - **Copy Activity**: The data is copied using Azure Data Factory's **Copy Data** activity from Blob Storage or ADLS to ADLS.
   - **Data Format**: The data is handled as **CSV** or **Excel**.
   - **Schema Mapping**: Schema is mapped to ensure proper data storage in the bronze layer.
   - **Error Handling**: Set up error logging to capture any issues during data transfer.

## Outcome:
This pipeline successfully ingests unprocessed data into the bronze layer, where it can later be transformed in the **silver layer**.
