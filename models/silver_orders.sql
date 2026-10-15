SELECT
    id,
    date(date_format(created_at, "yyy-MM-dd")) as oder_date,
    user_id,
    product_id,
    quantity,
    unit_price,
    quantity * unit_price as total
FROM
{{ ref("bronze_orders")}}

