
-- Use the `ref` function to select from other models

select *
from {{ ref('my_first_dbt_model') }}
where id between 1 and 5
