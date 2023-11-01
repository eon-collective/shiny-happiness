with payments as(

    select * from {{ref("stg_payments")}}

)

select 
    order_id,
    sum(amount) as total_ammount
from payments
group by 1
having total_ammount < 0
