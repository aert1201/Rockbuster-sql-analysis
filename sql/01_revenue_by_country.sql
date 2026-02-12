-- Revenue & Customer Metrics by Country
-- Combines revenue performance with customer distribution

SELECT
    co.country,
    COUNT(DISTINCT c.customer_id) AS customer_count,
    COUNT(DISTINCT p.payment_id) AS payment_count,
    ROUND(SUM(p.amount), 2) AS total_revenue,
    ROUND(AVG(p.amount), 2) AS avg_payment_amount
FROM payment p
JOIN customer c ON p.customer_id = c.customer_id
JOIN address a ON c.address_id = a.address_id
JOIN city ci ON a.city_id = ci.city_id
JOIN country co ON ci.country_id = co.country_id
GROUP BY co.country
ORDER BY total_revenue DESC;
