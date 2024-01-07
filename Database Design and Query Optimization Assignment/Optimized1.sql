-- accounts table
CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    account_name VARCHAR(255),

);

-- categories table
CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(255),
    -- other category details
);

-- transactions table
CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    account_id INT,
    category_id INT,
    transaction_date DATETIME,
    amount DECIMAL(10, 2),
    FOREIGN KEY (account_id) REFERENCES accounts(account_id),
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);
