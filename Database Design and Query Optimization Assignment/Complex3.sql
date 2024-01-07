SELECT account_id
FROM transactions
WHERE transaction_date >= DATEADD(WEEK, DATEDIFF(WEEK, 0, GETDATE()), 0)
GROUP BY account_id
HAVING COUNT(transaction_id) > 3;
