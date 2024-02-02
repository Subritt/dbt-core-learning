
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

-- with source_data as (

--     select 1 as id
--     union all
--     select null as id

-- )

-- select *
-- from source_data

/* new query*/

-- select 
--     1 as id, 
--     'abc' as name

with add_data as (
    {% for i in range(1, 10) %}
        select
            {{ i }} as id,
            'abc' || {{ i }}  as name
        {% if not loop.last %}
            union all
        {% endif %}
    {% endfor %}
)

select *
from add_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
