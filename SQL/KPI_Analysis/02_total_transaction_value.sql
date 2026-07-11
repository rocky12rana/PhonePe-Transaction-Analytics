/*
Project: PhonePe Transaction Analysis

KPI:
Total Transaction Value

Business Question:
What is the total monetary value processed through the platform?

Table Used:
all_transactions_data

SQL Concepts:
- SUM()
- Numeric formatting
*/


SELECT
    ROUND(SUM(Amount)::NUMERIC,2) AS total_transaction_value
FROM All_transactions_data;
