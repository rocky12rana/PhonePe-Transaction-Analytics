/*
Project: PhonePe Transaction Analysis

File:
03_failure_rate_by_service.sql


Analysis:
Service-wise Failure Rate Analysis


Business Question:
Which services have the highest percentage of failed transactions?


Purpose:
To evaluate service reliability and identify services
requiring improvement.


SQL Concepts Used:
- COUNT()
- CASE WHEN
- GROUP BY
- ROUND()
*/


SELECT


    service,


    COUNT(transaction_id) AS total_transactions,


    COUNT(
        CASE 
            WHEN payment_status = 'Failed'
            THEN transaction_id
        END
    ) AS failed_transactions,


    ROUND(

        (
            COUNT(
                CASE 
                    WHEN payment_status = 'Failed'
                    THEN transaction_id
                END
            )::NUMERIC

            /

            COUNT(transaction_id)

        ) * 100,

        2

    ) AS failure_rate_percentage



FROM all_transactions_data



GROUP BY

    service



ORDER BY

    failure_rate_percentage DESC;