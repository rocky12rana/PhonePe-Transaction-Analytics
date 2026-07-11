/*
Project: PhonePe Transaction Analysis

KPI:
Value Per User

Business Question:
How much transaction value does each user generate?

Table Used:
all_transactions_data

SQL Concepts:
- SUM()
- DISTINCT COUNT()
- Division
*/


SELECT
    ROUND(
        (
            SUM(amount)
            /
            COUNT(DISTINCT user_id)
        )::NUMERIC,
        2
    ) AS value_per_user
FROM All_Transactions_data;