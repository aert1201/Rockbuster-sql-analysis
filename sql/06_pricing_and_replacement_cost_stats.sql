-- Pricing and Replacement Cost Summary Statistics
-- Supports operational stability and pricing analysis

SELECT
    MIN(rental_rate) AS min_rental_rate,
    MAX(rental_rate) AS max_rental_rate,
    ROUND(AVG(rental_rate), 2) AS avg_rental_rate,
    MIN(replacement_cost) AS min_replacement_cost,
    MAX(replacement_cost) AS max_replacement_cost,
    ROUND(AVG(replacement_cost), 2) AS avg_replacement_cost,
    COUNT(*) AS total_films
FROM film;
