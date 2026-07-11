/*
Project: PhonePe Transaction Analysis

File:
02_service_transaction_value.sql


Analysis:
Service-wise Transaction Value


Business Question:
Which services generate the highest total transaction value?


Purpose:
To identify which services contribute the most monetary value
to the platform.


SQL Concepts Used:
- SUM()
- GROUP BY
- ROUND()
- ORDER BY
*/


SELECT


    service,


    COUNT(transaction_id) AS total_transactions,


    ROUND(
        SUM(amount)::NUMERIC,
        2
    ) AS total_transaction_value



FROM all_transactions_data



GROUP BY

    service



ORDER BY

    total_transaction_value DESC;