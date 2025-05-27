# On-prem MySQL to Bronze Pipeline

## Overview
This pipeline is responsible for loading data from an **on-prem MySQL** database into the **bronze layer** in ADLS.

## Steps Involved:
1. **Source**: On-prem MySQL database.
2. **Destination**: Data is loaded into the **bronze layer** in ADLS.
3. **Activities**:
   - **Copy Activity**: Use the **Copy Data** activity to extract data from the MySQL database and move it into ADLS.
   - **Schema Mapping**: Ensure the correct schema mapping during data ingestion.
   - **On-prem Integration**: Set up **Self-hosted Integration Runtime** to connect the on-prem MySQL database to ADF.

## Outcome:
The pipeline allows seamless extraction of structured data from MySQL and stores it as raw data in the bronze layer for further processing.
