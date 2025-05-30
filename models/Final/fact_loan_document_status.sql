{{ config(materialized='table') }}
with base as (
    select
        loan_id,
        customer_id,
        branch_code,
        loan_type,
        loan_amount,
        sanction_date,
        total_documents,
        verified_documents,
        document_status,
        case
            when total_documents > 0
            then round((verified_documents * 100.00) /
        nullif(total_documents, 0), 2)
            else 0
        end as verification_percentage
    from {{ ref('int_loan_document_status') }} 
)       
select * from base 


