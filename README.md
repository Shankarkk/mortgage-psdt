# Mortgage Post-Sanction Documentation Tracker

This is a real-world data engineering project built using **Snowflake**, **dbt**, **Azure Data Factory**, and **SQL** to track the end-to-end lifecycle of mortgage documentation post-loan sanction.

## 🔧 Tech Stack:
- **Snowflake**: Cloud Data Warehouse
- **dbt**: Data modeling, transformation, testing, CI/CD
- **Azure Data Factory**: Ingestion and orchestration
- **SQL**: Merge, window functions, incremental logic

## 🧱 Pipeline Overview:
1. Ingest data from ADF (source: banking systems) into Snowflake raw layer
2. Use **Streams + Tasks** for CDC + Automation
3. Apply dbt models:
   - `stg`: cleansing + standardizing
   - `intermediate`: join customer, loan, document data
   - `mart`: KPI-focused models

## 📈 Business KPIs Tracked:
- Count of missing documents (per branch / customer / stage)
- SLA delay tracking (valid vs overdue)
- Loan-wise documentation readiness

## 🧪 Data Quality
- dbt `schema.yml` includes:
  - `not_null`, `unique`, `accepted_values`
  - Custom test: `document_submitted_date <= today()`

## 🔁 Orchestration:
- Stream-based incremental models
- Task DAG with retry + monitoring

---

📌 *Demo available on request. This is a hands-on domain-specific data engineering project.*
