with data_generation as (

    select
        1 as id,
        'Sunny' as name
    union all
    select
        1 as id,
        'Sunny' as name
    union all
    select
        2 as id,
        'Subritt' as name
    union all
    select
        2 as id,
        'Subritt' as name

)

select
    name,
    adderss,
    sum(id) summed_id
from data_generation
{{ dbt_utils.group_by(1) }}
