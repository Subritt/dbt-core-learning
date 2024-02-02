/*
This model returns the joined data between
- raw_customers
- raw_orders
- raw_payments
tables craeted using dbt seed from csv files
*/

{{
    config(
        MATERIALIZED='table'
    )
}}

with full_joined_data as (
    select * from {{ ref('stg_order_transaction') }}
),
transaction_data as (
    select *
    from full_joined_data
)
select *
from transaction_data
