-- File: 05_churn_by_payment_delay.sql
-- Purpose: Analyze how payment delays relate to customer churn.
-- Description: Groups customers by Payment_Delay and ChurnFlag to identify whether
--              late payments correlate with higher churn.

SELECT 
    Payment_Delay,
    CAST(Churn AS INT) AS ChurnFlag,
    COUNT(*) AS TotalCustomers
FROM customer_churn
GROUP BY Payment_Delay, ChurnFlag
ORDER BY Payment_Delay, ChurnFlag;
