with raw_table as (
    select
        order_id as order_id
        , customer_id as customer_id
        , employee_id as employee_id
        , order_date as order_date
        , required_date as required_date
        , shipped_date as shipped_date
        , ship_via as ship_via
        , cast(freight as numeric) as freight
        , ship_name as ship_name
        , ship_address as ship_address
        , ship_city as ship_city
        , ship_region as ship_region
        , ship_postal_code as ship_postal_code
        , ship_country as ship_country

        -- Campos nulos
        -- , string_field_14
    from {{ source('northwind', 'orders') }}
)

select *
from raw_table