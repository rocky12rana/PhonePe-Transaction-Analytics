/*
Project: PhonePe Transaction Analysis

File:
01_failure_reason_analysis.sql


Analysis:
Failed Transaction Reason Analysis


Business Question:
What are the main reasons causing transaction failures?


Purpose:
To identify the most frequent failure reasons and
prioritize improvement areas.


SQL Concepts Used:
- COUNT()
- GROUP BY
- WHERE
- ORDER BY
*/


SELECT


    reason,


    COUNT(transaction_id) AS failed_transactions



FROM all_transactions_data



WHERE

    payment_status = 'Failed'



GROUP BY

    reason



ORDER BY

    failed_transactions DESC;