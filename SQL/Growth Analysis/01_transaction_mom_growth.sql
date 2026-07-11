/*
Project: PhonePe Transaction Analysis

Analysis:
Month-over-Month Transaction Growth

Business Question:
How did transaction volume change compared to the previous month?

Purpose:
To identify monthly increases or decreases in transaction activity.

SQL Concepts:
- CTE (Common Table Expression)
- LAG() Window Function
- Aggregation
- Percentage Calculation
*/


WITH monthly_transactions AS
(

    SELECT

        DATE_TRUNC(
            'month',
            transaction_date
        ) AS month,


        COUNT(transaction_id) AS current_month_transactions


    FROM all_transactions_data


    WHERE
        transaction_date >= '2024-01-01'
        AND transaction_date < '2025-01-01'


    GROUP BY

        DATE_TRUNC(
            'month',
            transaction_date
        )

)


SELECT


    TO_CHAR(
        month,
        'Mon YYYY'
    ) AS month,


    current_month_transactions,


    LAG(current_month_transactions)
    OVER(
        ORDER BY month
    ) AS previous_month_transactions,


    ROUND(

        (

            (
                current_month_transactions
                -
                LAG(current_month_transactions)
                OVER(
                    ORDER BY month
                )

            )::NUMERIC


            /


            LAG(current_month_transactions)
            OVER(
                ORDER BY month
            )

        ) * 100,


        2

    ) AS mom_growth_percentage



FROM monthly_transactions;


