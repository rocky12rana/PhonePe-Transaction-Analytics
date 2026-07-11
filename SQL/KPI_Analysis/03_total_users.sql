/*
Project: PhonePe Transaction Analysis

KPI:
Total Users

Business Question:
How many registered users are available in the platform?

Table Used:
all_users_data

SQL Concepts:
- COUNT()
- DISTINCT
*/


SELECT
    COUNT(*) AS total_users
FROM all_users_data;