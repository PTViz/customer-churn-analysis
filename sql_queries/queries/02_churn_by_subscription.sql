-- File: 02_churn_by_subscription.sql
-- Purpose: Analyze churn distribution across subscription tiers (Basic, Standard, Premium).
-- Description: Groups customers by Subscription_Type and ChurnFlag to identify which tiers have higher churn.

SELECT 
    Subscription_Type,
    CAST(Churn AS INT) AS ChurnFlag,
    COUNT(*) AS TotalCustomers
FROM customer_churn
GROUP BY Subscription_Type, ChurnFlag
ORDER BY Subscription_Type, ChurnFlag;
