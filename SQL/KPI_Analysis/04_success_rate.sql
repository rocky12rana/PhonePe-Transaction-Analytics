/*
Project: PhonePe Transaction Analysis

KPI:
Transaction Success Rate

Business Question:
What percentage of transactions were successfully completed?

Table Used:
all_transactions_data

SQL Concepts:
- COUNT()
- CASE WHEN
- Filtering
- Percentage Calculation
*/


 SELECT
    ROUND(
    (
            COUNT(*) FILTER (WHERE payment_status = 'Successful')::NUMERIC
            /
            COUNT(*)
        ) * 100,
        2
    ) AS success_rate_percentage
FROM all_transactions_data;   