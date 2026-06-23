-- Subscriber vs Non-Subscriber
SELECT subscription_status,
COUNT(*) AS customers
FROM customer_shopping_analysis
GROUP BY subscription_status;

-- Revenue by subscription status
SELECT subscription_status,
SUM(purchase_amount) AS revenue
FROM customer_shopping_analysis
GROUP BY subscription_status;


-- Average review rating by subscription status
SELECT subscription_status,
ROUND(AVG(review_rating),2) AS avg_rating
FROM customer_shopping_analysis
GROUP BY subscription_status;
