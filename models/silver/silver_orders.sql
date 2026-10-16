{{
    config(
        partition_by='order_date'
    )
}}

SELECT
    id,
    date(date_format(created_at, "yyy-MM-dd")) as order_date,
    user_id,
    product_id,
    quantity,
    unit_price,
    quantity * unit_price as total
FROM
{{ ref("bronze_orders")}}

