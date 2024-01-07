SELECT a.account_name
FROM transactions t
JOIN accounts a ON t.account_id = a.account_id
WHERE t.transaction_date >= DATEADD(WEEK, DATEDIFF(WEEK, 0, GETDATE()), 0)
GROUP BY a.account_name
HAVING COUNT(t.transaction_id) > 3;
