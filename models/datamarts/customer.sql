with orders as(
    select * from {{ref("stg_orders")}}
),
customers as(
    select * from {{ref("stg_customers")}}
),
payments as(
    select * from {{ref("stg_payments")}}
),

customer_level_details as(
    select * from
    customers c left join  
    orders o
    on c.CUSTOMER_ID = o.CUSTOMER_ID 
)

select * from customer_level_details