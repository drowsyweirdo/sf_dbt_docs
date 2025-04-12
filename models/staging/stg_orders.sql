with raw as(
    SELECT * from {{(source("snowflake source","raw_orders"))}}
),

final as (
    select ID as order_id,
    user_id,
    order_date,
    status
    from raw
)
SELECT * from final
