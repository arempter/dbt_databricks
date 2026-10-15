SELECT
    date(date_format(r.created_at, "yyyy-MM-dd")) as review_date,
    r.product_id,
    p.product_name,
    avg(r.rating) as rating
FROM {{ ref("bronze_reviews")}} r
LEFT JOIN {{ ref("silver_products") }} p
on r.product_id = p.id
GROUP BY ALL