/*
Project: PhonePe Transaction Analysis

Analysis:
Monthly Transaction Value Trend

Business Question:
What was the monthly transaction value generated during 2024?

Table Used:
all_transactions_data

SQL Concepts:
- SUM()
- DATE_TRUNC()
- GROUP BY
*/


SELECT
    TO_CHAR(transaction_date, 'Mon YYYY') AS month,

    ROUND(
        SUM(amount)::NUMERIC,
        2
    ) AS total_transaction_value

FROM all_transactions_data

GROUP BY
    TO_CHAR(transaction_date, 'Mon YYYY'),
    DATE_TRUNC('month', transaction_date)

ORDER BY
    DATE_TRUNC('month', transaction_date);