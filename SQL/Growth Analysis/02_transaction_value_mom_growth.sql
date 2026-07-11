/*
Project: PhonePe Transaction Analysis

File:
02_transaction_value_mom_growth.sql


Analysis:
Month-over-Month Transaction Value Growth


Business Question:
How is the total transaction value changing compared
to the previous month?


Purpose:
To identify monthly growth or decline in transaction value
and understand revenue movement trends throughout 2024.


SQL Concepts Used:
- CTE (Common Table Expression)
- DATE_TRUNC()
- SUM()
- LAG() Window Function
- Percentage Growth Calculation
*/

WITH monthly_transaction AS
(
    SELECT
        DATE_TRUNC('month', transaction_date) AS month,
        SUM(amount) AS total_value

    FROM all_transactions_data

    GROUP BY DATE_TRUNC('month', transaction_date)
),

mom_analysis AS
(
    SELECT

        month,

        total_value,

        LAG(total_value)
        OVER(ORDER BY month) AS previous_value

    FROM monthly_transaction
)

SELECT

    TO_CHAR(month,'Mon YYYY') AS month,

    ROUND(total_value::NUMERIC,2) AS current_month_value,

    ROUND(previous_value::NUMERIC,2) AS previous_month_value,

    ROUND(
        (
            (total_value - previous_value)
            /
            previous_value
        )::NUMERIC * 100,
        2
    ) AS mom_growth_percentage

FROM mom_analysis;