# 📊 Fact Dataflow - Sales Data

This folder contains the **transformed sales data**, which serves as the main fact table in the Silver layer.

## ⚙️ Pipeline Execution Logic

- This dataflow executed **only after** the 5 dimension dataflows completed.
- Source: Year-wise sales files from `/bronze/sales/`.
- Target: Cleaned sales data stored in `/silver/sales/` (ADLS Gen2).

## 🧹 Transformations Applied

> Note: Transformations were only performed on this sales fact data.

- **Derived columns** using expressions (e.g., calculated totals)
- **Split** a column into two separate columns
- **Trimmed and cleaned** values using `regex` functions
- **Selected required columns** and dropped unnecessary ones
- **Set proper data types** for each column
- **Aligned** data with dimension references where applicable

This transformed dataset is now ready for loading into the Gold layer for analytics.
