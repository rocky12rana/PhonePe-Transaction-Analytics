/*
Project: PhonePe Transaction Analysis

File:
03_service_average_transaction_value.sql


Analysis:
Service-wise Average Transaction Value


Business Question:
Which services have the highest average transaction value?


Purpose:
To understand the average amount customers spend per transaction
across different PhonePe services.


SQL Concepts Used:
- COUNT()
- SUM()
- AVG()
- GROUP BY
- ROUND()
- ORDER BY
*/


SELECT
    service,
    COUNT(transaction_id) AS total_transactions,

    ROUND(
        (SUM(amount)/COUNT(transaction_id))::NUMERIC,
        2
    ) AS avg_transaction_value

FROM all_transactions_data

GROUP BY service

ORDER BY avg_transaction_value DESC;