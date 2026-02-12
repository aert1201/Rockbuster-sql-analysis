-- Revenue by movie (full list for export)
WITH film_revenue AS (
    SELECT
        f.film_id,
        f.title,
        SUM(p.amount)              AS total_revenue,
        COUNT(p.payment_id)        AS rental_count
    FROM payment p
    JOIN rental   r ON p.rental_id   = r.rental_id
    JOIN inventory i ON r.inventory_id = i.inventory_id
    JOIN film      f ON i.film_id     = f.film_id
    GROUP BY
        f.film_id,
        f.title
),
total AS (
    SELECT SUM(total_revenue) AS grand_total
    FROM film_revenue
)
SELECT
    fr.film_id,
    fr.title,
    fr.total_revenue,
    fr.rental_count,
    ROUND(fr.total_revenue / t.grand_total * 100, 2) AS pct_of_total_revenue
FROM film_revenue fr
CROSS JOIN total t
ORDER BY fr.total_revenue DESC;
