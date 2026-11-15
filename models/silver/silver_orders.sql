{{
    config(
        partition_by='ordered_at'
    )
}}

SELECT
    id,
    date(date_format(ordered_at, "yyy-MM-dd")) as ordered_at,
    customer as customer_id,
    store_id,
    subtotal,
    tax_paid,
    order_total
FROM
{{ ref("bronze_orders")}}

