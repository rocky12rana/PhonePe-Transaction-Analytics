/*
Project: PhonePe Transaction Analysis

KPI:
Total Number of Transactions

Business Question:
How many transactions were processed during the analysis period?

Table Used:
all_transactions_data

SQL Concepts:
- COUNT()
- Aggregation
*/


SELECT
    COUNT(*) AS total_transactions
FROM all_transactions_data;