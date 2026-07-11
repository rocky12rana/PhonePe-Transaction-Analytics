/*
Project: PhonePe Transaction Analysis

KPI:
Transaction Failure Rate

Business Question:
What percentage of transactions failed?

Table Used:
all_transactions_data

SQL Concepts:
- CASE WHEN
- COUNT()
- Percentage Calculation
*/
 SELECT
    ROUND(
    (
            COUNT(*) FILTER (WHERE payment_status = 'Failed')::NUMERIC
            /
            COUNT(*)
        ) * 100,
        2
    ) AS failure_rate_percentage
FROM all_transactions_data;   