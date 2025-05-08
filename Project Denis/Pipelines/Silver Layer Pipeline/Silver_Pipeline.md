# 🔁 ADF Pipeline - Bronze to Silver Execution

This folder documents the pipeline responsible for executing the 6 Dataflows for the Silver layer.

## ⛓️ Execution Order

1. Dimension Dataflows (5 total)
   - Run in parallel
2. Fact Dataflow (Sales)
   - Runs **only after** dimension dataflows complete

## 📦 Pipeline Summary

- Named: `bronze_to_silver_pipeline`
- Type: Azure Data Factory pipeline
- Purpose: Control execution flow and maintain dependency

This ensures the fact data has all necessary dimension data ready before transformation.
