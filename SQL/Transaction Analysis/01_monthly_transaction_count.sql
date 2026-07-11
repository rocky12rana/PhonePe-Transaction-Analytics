/*
Project: PhonePe Transaction Analysis

Analysis:
Monthly Transaction Trend

Business Question:
How many transactions were processed each month during 2024?

Table Used:
all_transactions_data

SQL Concepts:
- DATE_TRUNC()
- COUNT()
- GROUP BY
- ORDER BY
*/


SELECT
    TO_CHAR(transaction_date, 'Mon YYYY') AS month,
    COUNT(transaction_id) AS total_transactions
FROM All_Transactions_data
GROUP BY 
    TO_CHAR(transaction_date, 'Mon YYYY'),
    DATE_TRUNC('month', transaction_date)
ORDER BY 
    DATE_TRUNC('month', transaction_date);