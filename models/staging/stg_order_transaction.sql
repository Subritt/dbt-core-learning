with full_joined_data as (
    select
        order_id,
        order_date,
        user_id,
        first_name,
        last_name,
        payment_method,
        amount,
        status
    from dbt_database.scratch.raw_customers as cus
    join dbt_database.scratch.raw_orders as ord
    on cus.id = ord.user_id
    join dbt_database.scratch.raw_payments as pay
    on ord.id = pay.order_id
)
select * from full_joined_data