SELECT account_id, AVG(amount) AS avg_transaction_amount
FROM transactions
GROUP BY account_id
ORDER BY avg_transaction_amount DESC
LIMIT 10;
