select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    {{cents_to_dollar('amount', 2)}} as amount,
    created as created_at
    
from {{source('stripe', 'payment')}}
{% set payment_methods = dbt_utils.get_column_values(
        table=ref('stg_payments'),
        column='payment_method',
        order_by='max(created_at) desc',
        max_records=50,
        default=['bank_transfer', 'coupon', 'credit_card']
%}