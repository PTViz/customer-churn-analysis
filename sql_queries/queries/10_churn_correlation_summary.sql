-- File: 10_churn_correlation_summary.sql
-- Purpose: Create a summary table showing how key customer attributes correlate with churn.
-- Description: Aggregates churn rates across major variables (Subscription Type, Contract Length,
--              Support Calls, Payment Delay) to provide a high-level overview of churn drivers.

SELECT 
    Subscription_Type AS Category,
    'Subscription Type' AS Feature,
    ROUND(AVG(CAST(Churn AS INT)) * 100, 2) AS ChurnRate_Percentage
FROM customer_churn
GROUP BY Subscription_Type

UNION ALL

SELECT 
    Contract_Length AS Category,
    'Contract Length' AS Feature,
    ROUND(AVG(CAST(Churn AS INT)) * 100, 2) AS ChurnRate_Percentage
FROM customer_churn
GROUP BY Contract_Length

UNION ALL

SELECT 
    Support_Calls::text AS Category,
    'Support Calls' AS Feature,
    ROUND(AVG(CAST(Churn AS INT)) * 100, 2) AS ChurnRate_Percentage
FROM customer_churn
GROUP BY Support_Calls

UNION ALL

SELECT 
    Payment_Delay::text AS Category,
    'Payment Delay' AS Feature,
    ROUND(AVG(CAST(Churn AS INT)) * 100, 2) AS ChurnRate_Percentage
FROM customer_churn
GROUP BY Payment_Delay

ORDER BY Feature, Category;
