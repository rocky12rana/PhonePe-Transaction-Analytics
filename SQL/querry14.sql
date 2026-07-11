SELECT
    reason,
    COUNT(transaction_id) AS failed_transactions
FROM all_transactions_data
WHERE payment_status = 'Failed'
GROUP BY reason
ORDER BY failed_transactions DESC;