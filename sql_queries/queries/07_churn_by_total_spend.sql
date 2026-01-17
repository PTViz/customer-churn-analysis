-- File: 07_churn_by_total_spend.sql
-- Purpose: Analyze how total customer spend relates to churn.
-- Description: Groups customers by spend ranges and churn flag to identify whether
--              high-value or low-value customers churn more frequently.

WITH spend_groups AS (
    SELECT
        CASE
            WHEN Total_Spend < 100 THEN 'Under 100'
            WHEN Total_Spend BETWEEN 100 AND 199 THEN '100-199'
            WHEN Total_Spend BETWEEN 200 AND 299 THEN '200-299'
            WHEN Total_Spend BETWEEN 300 AND 399 THEN '300-399'
            WHEN Total_Spend BETWEEN 400 AND 499 THEN '400-499'
            ELSE '500+'
        END AS SpendGroup,
        CAST(Churn AS INT) AS ChurnFlag
    FROM customer_churn
)

SELECT 
    SpendGroup,
    ChurnFlag,
    COUNT(*) AS TotalCustomers
FROM spend_groups
GROUP BY SpendGroup, ChurnFlag
ORDER BY 
    CASE
        WHEN SpendGroup = 'Under 100' THEN 1
        WHEN SpendGroup = '100-199' THEN 2
        WHEN SpendGroup = '200-299' THEN 3
        WHEN SpendGroup = '300-399' THEN 4
        WHEN SpendGroup = '400-499' THEN 5
        WHEN SpendGroup = '500+' THEN 6
    END,
    ChurnFlag;
