# Cosmos DB to Bronze Pipeline

## Overview
This pipeline pulls **JSON data** from **Azure Cosmos DB** and stores it in the **bronze layer** of **Azure Data Lake Storage (ADLS)**. The Cosmos DB container was connected to **Azure Data Studio** for direct data management and inspection.

## Steps Involved:

### 1. Source
- **Database**: Azure Cosmos DB (SQL API)
- **Data Format**: JSON documents
- **Tools Used**: 
  - Azure Data Factory (ADF) for pipeline creation
  - Azure Data Studio to view and manage data in Cosmos DB

### 2. Destination
- **Bronze Layer**: ADLS Gen2 container
- Folder path: e.g., `/bronze/cosmosdb/`
- File format: JSON (preserved as-is from source)

### 3. Activities in the Pipeline
- **Copy Activity** in Azure Data Factory:
  - **Source Dataset**: Cosmos DB (linked service)
  - **Sink Dataset**: ADLS (linked service pointing to bronze folder)
- **Schema Mapping**: Not applied (schema-on-read approach in bronze layer)
- **File Naming**: Appended timestamped or dynamic names to avoid overwrites.

### 4. Cosmos DB to Azure Data Studio Setup
- Created a **connection string** to Cosmos DB.
- Connected the Cosmos DB container to **Azure Data Studio**.
- Uploaded and verified the JSON file directly from Azure Data Studio.

## Outcome
This pipeline ensures JSON data from Cosmos DB is extracted and stored in the bronze layer in ADLS without transformation, preserving raw structure for future use in the silver layer.

