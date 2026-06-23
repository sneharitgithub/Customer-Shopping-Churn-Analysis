-- Gender distribution
SELECT gender,
COUNT(*) AS customers
FROM customer_shopping_analysis
GROUP BY gender
ORDER BY customers DESC;

-- Age group distribution
SELECT age_group,
COUNT(*) AS customers
FROM customer_shopping_analysis
GROUP BY age_group
ORDER BY customers DESC;


-- Average age by gender
SELECT gender,
ROUND(AVG(age),2) AS avg_age
FROM customer_shopping_analysis
GROUP BY gender;