SELECT c.category_name, SUM(t.amount) AS total_spent
FROM transactions t
JOIN categories c ON t.category_id = c.category_id
WHERE t.transaction_date >= DATEADD(MONTH, DATEDIFF(MONTH, 0, GETDATE()) - 1, 0)
GROUP BY c.category_name;
