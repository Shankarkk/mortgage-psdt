{{ config(materialized='view') }}

with documents as (
    select
        trim(loan_id) as loan_id,
        count(loan_id) as total_documents,
        count_if(lower(trim(is_verified)) = 'yes') as verified_documents
    from {{ ref('stg_documents') }}
    group by trim(loan_id)
),

loan as (
    select 
        trim(loan_id) as loan_id, 
        customer_id, 
        loan_type, 
        loan_amount, 
        sanction_date, 
        branch_code
    from {{ ref('stg_loan') }}    
)

select 
    d.loan_id,
    d.total_documents,
    d.verified_documents,
    l.customer_id, 
    l.loan_type, 
    l.loan_amount, 
    l.sanction_date, 
    l.branch_code,
    case
        when d.total_documents = d.verified_documents then 'fully verified'
        else 'pending verification'    
    end as document_status
from documents d
left join loan l on d.loan_id = l.loan_id
