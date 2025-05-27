# 💡 Final Gold Dataflow

This folder contains the **final dataflow** used to generate the analytical dataset for the Gold layer.

## 🔧 What This Dataflow Does

- Joins all required dimension and fact data from the **Silver Layer**
- Removes unnecessary columns
- Performs final data cleaning and schema alignment
- Prepares a single table optimized for reporting

## 🗂️ Output

- Final analytical dataset stored in:
  - `/gold/` folder in Azure Data Lake Storage (ADLS Gen2)
  - Azure SQL Database for Power BI import
