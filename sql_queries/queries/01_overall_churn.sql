-- File: 01_overall_churn.sql
-- Purpose: Calculate the overall churn rate in the customer_churn dataset.
-- Description: Counts total customers and total churned customers, converting the Churn column to INT.

SELECT 
    COUNT(*) AS TotalCustomers,
    SUM(CAST(Churn AS INT)) AS TotalChurned,
    ROUND(
        SUM(CAST(Churn AS INT))::numeric / COUNT(*) * 100, 
        2
    ) AS ChurnRate_Percentage
FROM customer_churn;
