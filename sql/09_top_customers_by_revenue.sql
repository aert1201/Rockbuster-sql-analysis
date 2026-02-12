-- 09_top_customers_by_revenue.sql
-- Top Revenue-Generating Customers Within the Top 10 Cities

SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    co.country,
    ci.city,
    ROUND(SUM(p.amount), 2) AS total_amount_paid
FROM customer c
INNER JOIN address a 
    ON c.address_id = a.address_id
INNER JOIN city ci 
    ON a.city_id = ci.city_id
INNER JOIN country co 
    ON ci.country_id = co.country_id
INNER JOIN payment p 
    ON c.customer_id = p.customer_id
WHERE ci.city IN (
    SELECT city
    FROM (
        SELECT 
            ci.city,
            COUNT(c.customer_id) AS customer_count
        FROM customer c
        INNER JOIN address a 
            ON c.address_id = a.address_id
        INNER JOIN city ci 
            ON a.city_id = ci.city_id
        GROUP BY ci.city
        ORDER BY customer_count DESC
        LIMIT 10
    ) AS top_cities
)
GROUP BY 
    c.customer_id,
    c.first_name,
    c.last_name,
    co.country,
    ci.city
ORDER BY total_amount_paid DESC
LIMIT 5;
