-- File: 08_churn_by_last_interaction.sql
-- Purpose: Analyze how the time since last customer interaction relates to churn.
-- Description: Groups customers by Last_Interaction and ChurnFlag to identify whether
--              lower engagement (longer time since last contact) increases churn risk.

SELECT 
    Last_Interaction,
    CAST(Churn AS INT) AS ChurnFlag,
    COUNT(*) AS TotalCustomers
FROM customer_churn
GROUP BY Last_Interaction, ChurnFlag
ORDER BY Last_Interaction, ChurnFlag;
