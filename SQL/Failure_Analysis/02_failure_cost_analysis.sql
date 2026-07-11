/*
Project: PhonePe Transaction Analysis

File:
02_failure_cost_analysis.sql


Analysis:
Failure Cost Analysis


Business Question:
Which failure reasons resulted in the highest
transaction value loss?


Purpose:
To measure the financial impact of failed transactions.


SQL Concepts Used:
- SUM()
- COUNT()
- GROUP BY
- WHERE
- ORDER BY
*/


SELECT


    reason,


    COUNT(transaction_id) AS failed_transactions,


    ROUND(
        SUM(amount)::NUMERIC,
        2
    ) AS failure_value



FROM all_transactions_data



WHERE

    payment_status = 'Failed'



GROUP BY

    reason



ORDER BY

    failure_value DESC;