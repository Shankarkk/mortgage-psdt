# Mortgage Post-Sanction Documentation Tracker (mortgage-psdt)

An end-to-end data engineering project built to track and monitor post-sanction mortgage documentation, leveraging Snowflake, dbt Cloud, and CI/CD automation.

 🔧 Tech Stack
- Snowflake (Warehouse, Staging, Intermediate, Mart Layers)
- dbt Cloud (Staging → Intermediate → Mart, Incremental models)
- Azure Data Factory (EL pipelines)
- GitHub (CI/CD versioning, readme)
- SQL,Jinja,dbt tests,Source freshness

 🧩 Key Features
- Tracks missing/unverified documents post mortgage loan sanction
- Maintains document stage-wise flow
- dbt tests validate the completeness and quality of documents
- Final report layer feeds into downstream dashboards
- UAT-ready with clean lineage & documentation
  
📦 mortgage_psdt/  

├── models/  
│   ├── staging/            # Raw staging models (customer_docs, loan_accounts)  
│   ├── intermediate/       # Business rule logic models  
│   ├── marts/              # Final reporting models (ready for dashboards)  
├── snapshots/              # Change tracking for key tables  
├── tests/                  # dbt tests (unique, not_null, relationships)  
├── macros/                 # Custom Jinja macros (if used)  
├── dbt_project.yml         # dbt project config  
├── packages.yml            # dbt packages  
└── README.md               # Project documentation

 📊 Impact
- Reduced manual tracking for document collection teams
- Identified high-risk loan files with pending compliance
- Enabled smooth handoff to reporting and dashboarding
