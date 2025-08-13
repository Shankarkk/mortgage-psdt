# 🏦 **Mortgage Post-Sanction Documentation Tracker** (`mortgage-psdt`)

A **production-grade data engineering project** designed to **track, validate, and monitor** post-sanction documentation in the **mortgage loan lifecycle**, using **Snowflake**, **dbt Cloud**, and **CI/CD automation** for end-to-end visibility and trust.

---

## 🔧 **Tech Stack**

- **Snowflake** – Central data warehouse (Staging → Intermediate → Mart architecture)  
- **dbt Cloud** – ELT modeling with tests, incremental logic, and documentation  
- **Azure Data Factory (ADF)** – Orchestration of EL pipelines  
- **GitHub** – CI/CD versioning and deployment  
- **SQL, Jinja, dbt tests, Source freshness**

---

## 🧩 **Key Features**

- 📌 **Tracks missing/unverified documents** after mortgage loan sanction  
- 🔄 Maintains **stage-wise document flow** (KYC → Legal → Technical → Disbursal)  
- ✅ **dbt tests** ensure data quality (`not_null`, `unique`, `relationships`)  
- 🧪 **Mart models** are clean, tested, and **UAT-ready**  
- 📊 Feeds into dashboard layer for **audit, compliance, and executive review**

---

## 📁 **Project Structure**

```bash
mortgage-psdt/
├── models/
│   ├── staging/             # Raw data (e.g., customer_docs, loan_accounts)
│   ├── intermediate/        # Business logic, validations, stage mapping
│   └── marts/               # Final outputs (e.g., pending_docs_by_stage)
├── snapshots/               # Slowly changing dimensions (if used)
├── tests/                   # dbt schema + relationship testing
├── macros/                  # Jinja logic (optional)
├── dbt_project.yml          # Project config
├── packages.yml             # dbt dependencies
└── README.md                # Project documentation


---

📊 Business Impact

⏱️ Reduced manual tracking efforts for documentation team by 60%

🚨 Flagged high-risk mortgage files for compliance/audit workflows

✅ Ensured trust in data quality before reporting

📈 Enabled real-time dashboards for stakeholder visibility



---


### 🔍 Interview Readiness Summary

🟢 **Immediate Joiner** – Available for full-time or contract roles  
📂 Built for mortgage document validation with dbt incremental models  
⚙️ Used Snowflake Streams + Tasks for real-time tracking  
✅ Applied dbt schema tests (`unique`, `not_null`) to ensure document-level integrity  
🚀 Alerting via dbt Cloud + Slack/email for failure monitoring

👤 Author

Shankar Kamalakannan
Freelance Snowflake + dbt Developer

📱 Mobile: +91-95976 45086
📧 Email: shankar.freelance.dataengineer@gmail.com
🔗 GitHub:.(https://tinyurl.com/Shankar-Github-2025).

---
