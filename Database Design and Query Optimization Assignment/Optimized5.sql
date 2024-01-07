-- Example of partitioning by date
CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    account_id INT,
    category_id INT,
    transaction_date DATETIME,
    amount DECIMAL(10, 2),
    FOREIGN KEY (account_id) REFERENCES accounts(account_id),
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
) PARTITION BY RANGE (YEAR(transaction_date)) (
    PARTITION p0 VALUES LESS THAN (2023),
    PARTITION p1 VALUES LESS THAN (2024),
);
