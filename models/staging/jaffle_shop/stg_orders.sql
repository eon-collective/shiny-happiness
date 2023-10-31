with orders as (

    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from {{ source('jaffle_shop', 'orders') }}
         {{ limit_date_in_dev(col_name='order_date', dev_dates_of_data=1000) }}

)

select * from orders
