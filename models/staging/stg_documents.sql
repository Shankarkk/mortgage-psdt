{{config(materialized='view')}}
with table_1 as(
    select
document_id::varchar as document_id,
loan_id::varchar as loan_id,
document_type::varchar as document_type,
submission_date::date as submission_date,
is_verified::varchar as is_verified
from {{source("mortgage_tracker","RAW_DOCUMENTS")}}
)
select * from table_1
