-- Top 10 Countries by Customer Count
-- Then Top 10 Cities Within Those Countries

WITH top_countries AS (
    SELECT 
        co.country,
        COUNT(c.customer_id) AS customer_count
    FROM customer c
    JOIN address a ON c.address_id = a.address_id
    JOIN city ct ON a.city_id = ct.city_id
    JOIN country co ON ct.country_id = co.country_id
    GROUP BY co.country
    ORDER BY customer_count DESC
    LIMIT 10
),

top_cities AS (
    SELECT
        ct.city,
        co.country,
        COUNT(c.customer_id) AS customer_count
    FROM customer c
    JOIN address a ON c.address_id = a.address_id
    JOIN city ct ON a.city_id = ct.city_id
    JOIN country co ON ct.country_id = co.country_id
    WHERE co.country IN (SELECT country FROM top_countries)
    GROUP BY ct.city, co.country
    ORDER BY customer_count DESC
    LIMIT 10
)

SELECT *
FROM top_cities
ORDER BY customer_count DESC;
