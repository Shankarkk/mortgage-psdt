# 🏦 Mortgage Post-Sanction Documentation Tracker (`mortgage-psdt`)

A production-grade data engineering project designed to **track, validate, and monitor post-sanction documentation** in the mortgage loan lifecycle, leveraging **Snowflake**, **dbt Cloud**, **Azure Data Factory**, and **CI/CD automation**.

---

## 🔧 Tech Stack

- **Snowflake** – Data warehousing (Staging → Intermediate → Mart architecture)  
- **dbt Cloud** – ELT modeling with incremental models, tests, and documentation  
- **Azure Data Factory (ADF)** – Orchestration of data pipelines (EL layer)  
- **GitHub** – CI/CD versioning and deployment  
- **SQL, Jinja, dbt tests, Source freshness**

---

## 🧩 Key Features

- 📌 Tracks **missing/unverified mortgage documents** post-loan sanction  
- 🔄 Maintains **stage-wise document tracking flow**  
- ✅ Applies **dbt tests** (`not_null`, `unique`, `relationships`) for data integrity  
- 🧪 Final mart models are **UAT-ready**, with clean lineage and documentation  
- 📊 Feeds into **dashboards and reporting layers** for business users

---

## 📁 Project Structure (`mortgage-psdt/`)

- `mortgage-psdt/`  
  - **models/**
    - `staging/` – Raw layer (e.g., `customer_docs`, `loan_accounts`)  
    - `intermediate/` – Business logic for document status and validation  
    - `marts/` – Finalized reporting models  
  - **snapshots/** – Tracks change history in key tables  
  - **tests/** – dbt schema and custom tests  
  - **macros/** – Custom Jinja macros (if used)  
  - `dbt_project.yml` – dbt project configuration  
  - `packages.yml` – dbt package dependencies  
  - `README.md` – Project documentation

---

## 🚀 Workflow Overview

1. **Data Ingestion:**  
   ADF loads raw customer and document data into Snowflake staging.

2. **Transformation via dbt:**  
   - **Staging Layer:** Cleans and formats raw inputs  
   - **Intermediate Layer:** Applies rules for missing/unverified documents  
   - **Mart Layer:** Produces final dashboards and compliance views

3. **Validation:**  
   - dbt tests (`not_null`, `unique`, `relationships`)  
   - Source freshness check for ingestion reliability

4. **CI/CD:**  
   - Version control with GitHub  
   - dbt Cloud for scheduled and production runs

---

## 📊 Business Impact

- ⏱ **Reduced manual tracking** effort by 60%  
- 🚨 **Flagged high-risk loan files** for compliance follow-up  
- ✅ Ensured **trusted, validated data** before reporting  
- 📈 **Enabled seamless integration** into dashboarding tools

---

## 📌 Future Enhancements

- Email alerts for critical missing documents  
- Extend coverage to post-disbursal compliance  
- Power BI dashboard connection  
- GitHub Actions for full CI/CD automation

---

## 🤝 Contributions & Contact

This project is built and maintained by:

**Shankar Kamalakannan**  
💼 [LinkedIn](#) | 💻 [GitHub](#) | 📧 [your.email@example.com]

Feel free to connect for collaboration, freelance, or project consulting.

---

> Built with 💙 using Snowflake, dbt, and cloud data engineering best practices.
