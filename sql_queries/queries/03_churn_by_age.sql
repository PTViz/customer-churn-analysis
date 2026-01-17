-- File: 03_churn_by_age.sql
-- Purpose: Analyze churn distribution across customer age groups.
-- Description: Categorizes customers into age brackets, counts stayed vs churned,
--              and orders results in logical age order using a subquery.

WITH age_groups AS (
    SELECT 
        CASE 
            WHEN Age < 25 THEN 'Under 25'
            WHEN Age BETWEEN 25 AND 34 THEN '25-34'
            WHEN Age BETWEEN 35 AND 44 THEN '35-44'
            WHEN Age BETWEEN 45 AND 54 THEN '45-54'
            WHEN Age BETWEEN 55 AND 64 THEN '55-64'
            ELSE '65+'
        END AS AgeGroup,
        CAST(Churn AS INT) AS ChurnFlag
    FROM customer_churn
)

SELECT 
    AgeGroup,
    ChurnFlag,
    COUNT(*) AS TotalCustomers
FROM age_groups
GROUP BY AgeGroup, ChurnFlag
ORDER BY 
    CASE 
        WHEN AgeGroup = 'Under 25' THEN 1
        WHEN AgeGroup = '25-34' THEN 2
        WHEN AgeGroup = '35-44' THEN 3
        WHEN AgeGroup = '45-54' THEN 4
        WHEN AgeGroup = '55-64' THEN 5
        WHEN AgeGroup = '65+' THEN 6
    END,
    ChurnFlag;
