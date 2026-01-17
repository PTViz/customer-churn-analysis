-- File: 06_churn_by_contract_length.sql
-- Purpose: Analyze how contract length relates to customer churn.
-- Description: Groups customers by Contract_Length and ChurnFlag to identify whether
--              longer commitments reduce churn.

SELECT 
    Contract_Length,
    CAST(Churn AS INT) AS ChurnFlag,
    COUNT(*) AS TotalCustomers
FROM customer_churn
GROUP BY Contract_Length, ChurnFlag
ORDER BY Contract_Length, ChurnFlag;
