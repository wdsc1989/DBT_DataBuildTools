{{
    config(
        materialized = 'view'
    )
}}

with raw_table as (
    select
        order_id as order_id
        , product_id as product_id
        , cast(unit_price as numeric) as unit_price
        , quantity
        , cast(discount as numeric) as discount
    from {{ source('northwind', 'order_details') }}
)

select *
from raw_table