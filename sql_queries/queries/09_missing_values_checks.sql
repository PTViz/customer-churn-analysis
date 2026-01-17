-- File: 09_missing_values_checks.sql
-- Purpose: Identify missing or null values across key columns in the dataset.
-- Description: Counts NULL values for each important field to assess data quality
--              before performing deeper analysis.

SELECT 
    SUM(CASE WHEN Age IS NULL THEN 1 ELSE 0 END) AS Missing_Age,
    SUM(CASE WHEN Gender IS NULL THEN 1 ELSE 0 END) AS Missing_Gender,
    SUM(CASE WHEN Subscription_Type IS NULL THEN 1 ELSE 0 END) AS Missing_Subscription_Type,
    SUM(CASE WHEN Contract_Length IS NULL THEN 1 ELSE 0 END) AS Missing_Contract_Length,
    SUM(CASE WHEN Support_Calls IS NULL THEN 1 ELSE 0 END) AS Missing_Support_Calls,
    SUM(CASE WHEN Payment_Delay IS NULL THEN 1 ELSE 0 END) AS Missing_Payment_Delay,
    SUM(CASE WHEN Total_Spend IS NULL THEN 1 ELSE 0 END) AS Missing_Total_Spend,
    SUM(CASE WHEN Last_Interaction IS NULL THEN 1 ELSE 0 END) AS Missing_Last_Interaction,
    SUM(CASE WHEN Churn IS NULL THEN 1 ELSE 0 END) AS Missing_Churn
FROM customer_churn;
