-- Rental Duration Summary Statistics
-- Supports operational performance and rental cycle analysis

SELECT
    MIN(rental_duration) AS min_rental_duration_days,
    MAX(rental_duration) AS max_rental_duration_days,
    ROUND(AVG(rental_duration), 2) AS avg_rental_duration_days
FROM film;
