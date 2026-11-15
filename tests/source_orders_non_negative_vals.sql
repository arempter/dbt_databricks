SELECT
*
FROM
{{ source("landing", "raw_orders")}}
WHERE subtotal < 0 or order_total < 0