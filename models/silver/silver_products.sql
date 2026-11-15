SELECT
    sku,
    name as product_name,
    type as category,
    price,
    description
FROM
{{ ref("bronze_products")}}