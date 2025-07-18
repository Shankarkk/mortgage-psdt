
---

🏦 Mortgage Post-Sanction Documentation Tracker (mortgage-psdt)

A production-grade data engineering project designed to track, validate, and monitor post-sanction documentation in the mortgage loan lifecycle, leveraging Snowflake, dbt Cloud, and CI/CD automation.


---

🔧 Tech Stack

Snowflake – Data warehousing (Staging → Intermediate → Mart architecture)

dbt Cloud – ELT modeling with tests, incremental models, and documentation

Azure Data Factory (ADF) – Orchestration of data pipelines (EL layer)

GitHub – CI/CD versioning and deployment

SQL, Jinja, dbt tests, Source freshness



---

🧩 Key Features

📌 Tracks missing/unverified documents post-loan sanction

🔄 Maintains stage-wise document tracking flow

✅ dbt tests ensure data quality (not_null, unique, relationships)

🧪 Final mart models are UAT-ready, with clean lineage and docs

📊 Feeds into dashboards and reporting layers for stakeholder visibility



---

📁 Project Structure (mortgage_psdt/)

mortgage_psdt/

models/

staging/ – Raw layer (e.g., customer_docs, loan_accounts)

intermediate/ – Business rule logic

marts/ – Finalized reporting models


snapshots/ – For slowly changing dimensions

tests/ – Schema and data validation (dbt built-ins)

macros/ – Reusable Jinja logic (if used)

dbt_project.yml – Core dbt project configuration

packages.yml – dbt package dependencies

README.md – Project documentation




---

📊 Business Impact

⏱ Reduced manual tracking effort for documentation teams by 60%

🚨 Flagged high-risk mortgage files for compliance and audit workflows

✅ Ensured trust in data quality before reporting handoff

📈 Enabled smooth dashboard integration for executive insights



---
