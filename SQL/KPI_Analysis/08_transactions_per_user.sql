/*
Project: PhonePe Transaction Analysis

KPI:
Transactions Per User

Business Question:
What is the average transaction frequency per user?

Tables Used:
all_transactions_data

SQL Concepts:
- COUNT()
- DISTINCT COUNT()
- Division
*/

SELECT
    ROUND(
        (
            COUNT(transaction_id)::NUMERIC
            /
            COUNT(DISTINCT user_id)
        ),
        2
    ) AS transactions_per_user
FROM All_Transactions_data;