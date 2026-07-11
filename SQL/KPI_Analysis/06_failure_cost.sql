/*
Project: PhonePe Transaction Analysis

KPI:
Failure Cost

Business Question:
What is the total monetary value lost due to failed transactions?

Table Used:
all_transactions_data

SQL Concepts:
- SUM()
- WHERE filtering
*/


SELECT
    ROUND(SUM(amount)::NUMERIC,2) AS failure_cost
FROM All_Transactions_Data
WHERE payment_status = 'Failed';