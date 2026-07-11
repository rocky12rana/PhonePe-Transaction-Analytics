/*
Project: PhonePe Transaction Analysis

File:
02_cumulative_user_growth.sql


Analysis:
Cumulative User Growth Analysis


Business Question:
How has the total user base grown month by month
during 2024?


Purpose:
To calculate the running total of users acquired
throughout the year.


SQL Concepts Used:
- CTE
- COUNT()
- SUM() OVER()
- DATE_TRUNC()
- Window Functions
*/

WITH monthly_users AS
(
    SELECT
        DATE_TRUNC('month',join_date) AS month,
        COUNT(user_id) AS new_users
    FROM all_users_data
    WHERE EXTRACT(YEAR FROM join_date)=2024
    GROUP BY DATE_TRUNC('month',join_date)
)

SELECT
    TO_CHAR(month,'Mon YYYY') AS month,
    new_users,

    SUM(new_users)
    OVER(ORDER BY month) AS cumulative_users

FROM monthly_users;