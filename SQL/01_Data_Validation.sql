-- How many records are present?
SELECT COUNT(*) AS total_customers
FROM customer_shopping_analysis;

-- Are there duplicate customer IDs?
SELECT
COUNT(*) AS total_rows,
COUNT(DISTINCT customer_id) AS unique_customers
FROM customer_shopping_analysis;


-- Any missing values?
SELECT
COUNT(*) - COUNT(customer_id) AS missing_customer_id,
COUNT(*) - COUNT(review_rating) AS missing_review_rating
FROM customer_shopping_analysis;