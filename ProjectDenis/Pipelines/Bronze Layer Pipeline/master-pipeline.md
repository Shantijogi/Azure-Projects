# Master Pipeline

## Overview
The **master pipeline** orchestrates the execution of the three individual pipelines (Blob/ADLS, MySQL, Cosmos DB) in parallel. This ensures that data is ingested into the **bronze layer** from all sources at the same time.

## Steps Involved:
1. **Trigger Pipelines**: The master pipeline triggers the **Blob & ADLS to Bronze**, **On-prem MySQL to Bronze**, and **Cosmos DB to Bronze** pipelines simultaneously.
2. **Execution Control**: Use **Execute Pipeline** activities to control the parallel execution of the ingestion pipelines.


## Outcome:
The master pipeline orchestrates the data ingestion process in parallel, reducing the overall time required for loading raw data into the bronze layer.
