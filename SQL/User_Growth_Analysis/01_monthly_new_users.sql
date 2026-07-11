/*
Project: PhonePe Transaction Analysis

File:
01_monthly_new_users.sql


Analysis:
Monthly New User Acquisition Analysis


Business Question:
How many new users joined the platform each month
during 2024?


Purpose:
To understand monthly user acquisition trends and
identify periods of strong or weak customer growth.


SQL Concepts Used:
- DATE_TRUNC()
- COUNT()
- GROUP BY
- ORDER BY
*/


SELECT
    TO_CHAR(join_date,'Mon YYYY') AS month,
    COUNT(user_id) AS new_users

FROM all_users_data

WHERE EXTRACT(YEAR FROM join_date)=2024

GROUP BY
    TO_CHAR(join_date,'Mon YYYY'),
    DATE_TRUNC('month',join_date)

ORDER BY
    DATE_TRUNC('month',join_date);