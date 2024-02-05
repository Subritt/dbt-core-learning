/*
raw_customers (created from seed) -> this model
*/

{{
    config(
        materialized = 'view',
        tags = ['raw']
    )
}}

select *
from {{ source('jaffle_shop', 'raw_customers') }}
