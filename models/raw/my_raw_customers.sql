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
from dbt_database.scratch.raw_customers;
