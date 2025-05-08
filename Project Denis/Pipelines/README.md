# 🏗️ Medallion Architecture: Bronze, Silver, and Gold Layers

This repository demonstrates a complete Azure Data Engineering pipeline using the **Medallion Architecture** pattern: **Bronze → Silver → Gold**. Data is ingested from multiple sources, transformed, and prepared for reporting using Power BI.

![Medallion Architecture](Medallion_Architectur.png)


## 🥉 Bronze Layer - Raw Data Ingestion

### Purpose:
Store raw data as-is from various source systems without transformations.

### Sources:
- **Azure Blob Storage** (CSV, Excel)
- **Azure Data Lake Storage Gen2** (CSV, Excel)
- **On-Premise MySQL** (via Integration Runtime)
- **Azure Cosmos DB** (JSON)

### Process:
- Data ingested using Azure Data Factory (ADF) pipelines.
- Each source has a dedicated pipeline for ingestion.
- A master pipeline runs all ingestion jobs in parallel.

---

## 🥈 Silver Layer - Cleaned and Structured Data

### Purpose:
Perform light transformations such as:
- Renaming columns
- Handling null values
- Standardizing data types

### Process:
- Implemented using ADF Data Flows and additional transformation logic.
- Output is written to the Silver zone in ADLS Gen2 in structured format (CSV/Parquet).

---

## 🥇 Gold Layer - Final Analytical Model

### Purpose:
Store business-ready data that supports reporting and dashboards.

### Output:
- Curated tables stored in:
  - **Azure Data Lake Gen2 (/gold)** 
  - **Azure SQL Database** (for Power BI)

---

## 🛠️ Tools & Technologies Used

- **Azure Data Factory** – Pipelines, Dataflows, Linked Services
- **Azure Data Lake Storage Gen2**
- **Azure Blob Storage**
- **Azure Cosmos DB**
- **Azure SQL Database**
- **On-Premise MySQL** (via SHIR)
- **Azure Data Studio**

---

## 📌 Project Highlights

- Built from scratch: 0 pipelines, 0 datasets, 0 dataflows → Final project included:
  - ✅ 7 Pipelines
  - ✅ 7 Dataflows
  - ✅ 19 Datasets
- All layers reflect clear separation of concerns and enable scalable analytics.

