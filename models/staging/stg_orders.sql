with raw as(
    select * from {{source("sf sources" , "raw_orders")}}
),

final as(
    select ID as ORDER_ID,
    USER_ID as CUSTOMER_ID,
    ORDER_DATE,
    STATUS
    from raw
)
select * from final