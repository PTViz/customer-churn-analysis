-- File: 04_churn_by_support_calls.sql
-- Purpose: Analyze how the number of customer support calls relates to churn.
-- Description: Groups customers by Support_Calls and ChurnFlag to identify whether
--              higher support interaction correlates with higher churn.

SELECT 
    Support_Calls,
    CAST(Churn AS INT) AS ChurnFlag,
    COUNT(*) AS TotalCustomers
FROM customer_churn
GROUP BY Support_Calls, ChurnFlag
ORDER BY Support_Calls, ChurnFlag;
