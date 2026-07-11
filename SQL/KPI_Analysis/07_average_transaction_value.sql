/*
Project: PhonePe Transaction Analysis

KPI:
Average Transaction Value (ATV)

Business Question:
What is the average amount per transaction?

Table Used:
all_transactions_data

SQL Concepts:
- AVG()
- ROUND()
*/

SELECT
    ROUND(
        (SUM(amount) / COUNT(transaction_id))::NUMERIC,
        2
    ) AS average_transaction_value
FROM All_Transactions_data;