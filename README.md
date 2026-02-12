# Rockbuster SQL Analysis

## Project Overview

This project analyzes Rockbuster’s global film rental database using PostgreSQL to support strategic business decision-making.
The analysis evaluates revenue performance, customer behavior, geographic distribution, film performance, and pricing stability to identify growth opportunities and operational improvements.
Rockbuster operates in 108 countries, but revenue generation is concentrated within a smaller group of high-performing markets.

---

## Tools Used

- PostgreSQL  
- pgAdmin 4  
- SQL (CTEs, joins, aggregation, filtering, window functions)  
- Tableau Public (executive dashboard visualization)

---

## Dataset

The relational database includes information on:

- Films
- Inventory
- Rentals
- Payments
- Customers
- Addresses
- Cities
- Countries
- Film Categories

Foreign key relationships were leveraged to perform multi-table joins and revenue aggregation across geographic and categorical dimensions.

---

## Key Business Questions

- Which countries generate the highest revenue?
- Which movies generate the most and least revenue?
- Which film categories contribute most to total revenue?
- Where are Rockbuster’s customers located globally?
- Which cities within top countries contain the most customers?
- Who are the top customers by total payment?
- What is the average rental duration across the catalog?
- Are rental rates and replacement costs stable?

---

## SQL Skills Demonstrated

- Complex INNER JOIN and LEFT JOIN operations
- Aggregation using SUM, COUNT, AVG
- DISTINCT counting for customers and payments
- GROUP BY with multi-level segmentation
- HAVING filters for revenue qualification
- Subqueries for geographic segmentation
- Common Table Expressions (CTEs)
- Window functions (DENSE_RANK)
- Revenue concentration analysis

---

## Key Insights

- Revenue is geographically concentrated. While Rockbuster serves customers in 108 countries, a small number of markets generate the majority of total revenue.
- A limited number of films contribute disproportionately to total revenue, while many titles generate minimal or zero revenue.
- High-value customers are distributed across multiple countries and cities.
- Certain film categories consistently outperform others in total revenue contribution.
- Rental duration, rental rates, and replacement costs remain stable, supporting predictable revenue patterns.

---

## Repository Structure

- **01_revenue_by_country.sql**  
  Revenue aggregated by country (geographic performance).

- **02_revenue_by_movie.sql**  
  Full revenue breakdown by film title.

- **03_zero_revenue_films.sql**  
  Identifies films that generated no revenue.

- **04_revenue_by_category.sql**  
  Revenue and rental count by film category.

- **05_top_cities_within_top_countries.sql**  
  Top-performing cities within the highest-revenue countries.

- **06_pricing_and_replacement_cost_stats.sql**  
  Rental rate and replacement cost summary statistics.

- **07_rental_duration_stats.sql**  
  Minimum, maximum, and average rental duration.

- **08_customer_distribution_by_country.sql**  
  Customer concentration by country.

- **09_top_customers_by_revenue.sql**  
  Highest-value customers by total payment amount.



Each SQL file answers a specific business question and is formatted for clarity and reproducibility.

---

## Deliverables

- Clean, production-ready SQL queries
- Geographic revenue analysis
- Film performance evaluation
- Category revenue breakdown
- Customer distribution analysis
- Executive-level interactive dashboard

---

## Interactive Dashboard

View the executive dashboard here:

[View Interactive Tableau Dashboard](https://public.tableau.com/app/profile/joesie.toling/viz/RockbusterAnalytics_17652614019750/Story1)

---

## Author

**Joesielyn Toling**  
Data Analytics Portfolio Project  
SQL • PostgreSQL • Tableau  


SQL analysis and dashboard design completed as part of a Data Analytics portfolio project.
