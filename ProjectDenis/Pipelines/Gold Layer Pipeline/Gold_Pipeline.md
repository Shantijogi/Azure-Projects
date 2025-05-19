# 🔁 Gold Pipeline

This folder documents the pipeline responsible for executing the final Gold Layer dataflow.

## 📋 Pipeline Details

- Name: `gold_pipeline`
- Purpose: To trigger the final dataflow that creates the **report-ready** dataset
- Executes: A single dataflow (from `/gold/dataflow/`)

## 📤 Output Destination

- Azure Data Lake (Gold folder)
- Azure SQL Database

This pipeline marks the end of the data engineering process, delivering data ready for business intelligence and reporting.
