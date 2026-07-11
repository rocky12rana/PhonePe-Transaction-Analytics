/*
Project: PhonePe Transaction Analysis

File:
01_service_transaction_volume.sql


Analysis:
Service-wise Transaction Volume


Business Question:
Which services have the highest number of transactions?


Purpose:
To understand customer activity distribution across
different PhonePe services.


SQL Concepts Used:
- COUNT()
- GROUP BY
- ORDER BY
*/


SELECT


    service,


    COUNT(transaction_id) AS total_transactions



FROM all_transactions_data



GROUP BY

    service



ORDER BY

    total_transactions DESC;