SELECT
    reason,

    COUNT(transaction_id) AS failed_transactions,

    ROUND(SUM(amount)::NUMERIC,2) AS failure_value

FROM all_transactions_data

WHERE payment_status = 'Failed'

GROUP BY reason

ORDER BY failure_value DESC;