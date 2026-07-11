WITH monthly_transaction AS
(
    SELECT
        DATE_TRUNC('month', transaction_date) AS month,

        SUM(amount) AS total_value

    FROM all_transactions_data

    GROUP BY DATE_TRUNC('month', transaction_date)
)

SELECT

    TO_CHAR(month,'Mon YYYY') AS month,

    ROUND(total_value::NUMERIC,2) AS current_month_value,

    ROUND(
        LAG(total_value)
        OVER(ORDER BY month)::NUMERIC,
        2
    ) AS previous_month_value

FROM monthly_transaction;