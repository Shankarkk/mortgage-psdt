{{ config(materialized='view') }}

with loan_raw as (
    select
        loan_id::varchar as loan_id,
        customer_id::varchar as customer_id,
        loan_type::varchar as loan_type,
        loan_amount::number as loan_amount,
        sanction_date::date as sanction_date,
        branch_code::varchar as branch_code
    from {{ source("mortgage_tracker", "RAW_LOAN") }}
)

select * from loan_raw