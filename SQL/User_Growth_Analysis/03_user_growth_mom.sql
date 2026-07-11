/*
Project: PhonePe Transaction Analysis

File:
03_user_growth_mom.sql


Analysis:
Monthly User Growth Rate Analysis


Business Question:
How did user acquisition change compared to
the previous month?


Purpose:
To calculate month-over-month user growth percentage
and identify user acquisition trends.


SQL Concepts Used:
- CTE
- LAG()
- Window Functions
- DATE_TRUNC()
- ROUND()
*/

WITH monthly_users AS
(
    SELECT
        DATE_TRUNC('month',join_date) AS month,
        COUNT(user_id) AS new_users

    FROM all_users_data

    WHERE EXTRACT(YEAR FROM join_date)=2024

    GROUP BY DATE_TRUNC('month',join_date)
),

user_growth AS
(
    SELECT
        month,
        new_users,

        LAG(new_users)
        OVER(ORDER BY month) AS previous_month_users

    FROM monthly_users
)

SELECT

    TO_CHAR(month,'Mon YYYY') AS month,

    new_users,

    previous_month_users,

    ROUND(
        (
            (new_users - previous_month_users)
            /
            previous_month_users::NUMERIC
        ) * 100,
        2
    ) AS user_growth_percentage

FROM user_growth;