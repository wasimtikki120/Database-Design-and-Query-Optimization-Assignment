SELECT category, SUM(amount) AS total_spent
FROM transactions
WHERE transaction_date >= DATEADD(MONTH, DATEDIFF(MONTH, 0, GETDATE()) - 1, 0)
GROUP BY category;
