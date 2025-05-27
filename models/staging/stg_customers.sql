{{config(materialized='view')}}
with table_1 as(
     select
customer_id::varchar as customer_id,
customer_name::varchar as customer_name,
date_of_birth::date as date_of_birth,
contact_number::varchar as contact_number,
email_id ::varchar as email_id
from {{source("mortgage_tracker","RAW_CUSTOMER")}}
)
select * from table_1
