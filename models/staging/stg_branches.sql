{{ config(materialized='view') }}

with branches_raw as (
    select
        branch_code::varchar as branch_code,
        branch_name::varchar as branch_name,
        location::varchar as location
    from {{ source("mortgage_tracker", "RAW_BRANCHES") }}
)

select * from branches_raw
