# DENIS Project – Medallion Architecture (Azure)

This project demonstrates a real-world data engineering solution using **Azure services**, following the **Medallion Architecture (Bronze → Silver → Gold)**.

---

## 🚀 Project Overview

- **Architecture**: Medallion (Bronze, Silver, Gold)
- **Data Sources**:
  - Azure Blob Storage
  - Azure Data Lake Storage (ADLS Gen2)
  - Cosmos DB
  - MySQL (On-Prem, connected via ADF)
- **Tools & Services**:
  - Azure Data Factory
  - Azure Data Lake (ADLS)
  - Azure SQL DB

---

## 🛠️ Project Workflow

### 1. **Ingestion (Bronze Layer)**
- Ingested raw data from:
  - Blob Storage
  - ADLS
  - Cosmos DB
  - On-Prem MySQL
- Stored as-is in the **Bronze Layer** in ADLS

### 2. **Transformation (Silver Layer)**
- Cleaned and joined relevant data
- Applied transformations in **Dataflows**
- Stored processed data in the **Silver Layer** in ADLS

### 3. **Analytical Modeling (Gold Layer)**
- Created final analytical fact table
- Stored in:
  - ADLS (Parquet/CSV)
  - Azure SQL DB for reporting

---

## 🔧 Key Stats

| Feature       | Count |
|--------------|-------|
| Pipelines     | 7     |
| Dataflows     | 7     |
| Datasets      | 19    |

---

## 📌 Highlights

- Fully scalable architecture using Azure-native services
- Cross-cloud and hybrid data ingestion
- Clean Medallion implementation
