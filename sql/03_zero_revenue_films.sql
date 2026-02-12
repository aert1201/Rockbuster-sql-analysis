SELECT
    f.film_id,
    f.title,
    c.name AS category,
    0 AS total_revenue,
    0 AS rental_count
FROM film f
JOIN film_category fc
    ON f.film_id = fc.film_id
JOIN category c
    ON fc.category_id = c.category_id
LEFT JOIN inventory i
    ON f.film_id = i.film_id
LEFT JOIN rental r
    ON i.inventory_id = r.inventory_id
LEFT JOIN payment p
    ON r.rental_id = p.rental_id
WHERE p.payment_id IS NULL
ORDER BY f.title;
