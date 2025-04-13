with raw as(
    select * from {{source("sf sources" , "raw_customers")}}
),

final as(
    select ID as CUSTOMER_ID,
    FIRST_NAME,
    LAST_NAME
    from raw
)
select * from final