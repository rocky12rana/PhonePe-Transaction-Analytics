SELECT
    service,
    COUNT(transaction_id) AS total_transactions,
    ROUND(SUM(amount)::NUMERIC,2) AS total_value
FROM all_transactions_data
GROUP BY service
ORDER BY total_value DESC;