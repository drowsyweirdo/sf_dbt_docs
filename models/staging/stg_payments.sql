with raw as(
    select * from {{source("sf sources" , "raw_payments")}}
),

final as(
    select ID as PAYMENT_ID,
    ORDER_ID,
    PAYMENT_METHOD as PAYMENT_MODE,
    AMOUNT/100 as SALES_AMOUNT
    from raw
)
select * from final