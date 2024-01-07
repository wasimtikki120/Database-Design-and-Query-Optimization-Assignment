SELECT a.account_name, AVG(t.amount) AS avg_transaction_amount
FROM transactions t
JOIN accounts a ON t.account_id = a.account_id
GROUP BY a.account_name
ORDER BY avg_transaction_amount DESC
LIMIT 10;
