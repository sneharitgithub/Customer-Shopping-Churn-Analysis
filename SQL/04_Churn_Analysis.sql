-- Purchase frequency analysis

SELECT frequency_of_purchases,
COUNT(*) AS customers
FROM customer_shopping_analysis
GROUP BY frequency_of_purchases
ORDER BY customers DESC;

-- Average previous purchases by age group

SELECT age_group,
ROUND(AVG(previous_purchases),2) AS avg_previous_purchases
FROM customer_shopping_analysis
GROUP BY age_group;


-- Customers with low ratings

SELECT COUNT(*) AS low_rating_customers
FROM customer_shopping_analysis
WHERE review_rating < 3;


-- Average purchase frequency days

SELECT
ROUND(AVG(purchase_frequency_days),2)
AS avg_days_between_purchases
FROM customer_shopping_analysis;