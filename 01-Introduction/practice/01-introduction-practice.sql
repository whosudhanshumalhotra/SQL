-- Module 01: Introduction to SQL
-- Dialect: MySQL 8.0+
-- Tip: Run this script in MySQL Workbench or another MySQL client.

-- 1. DDL: Create a practice table.
CREATE TABLE IF NOT EXISTS module01_customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    country VARCHAR(60)
) ENGINE = InnoDB;

-- 2. DML: Insert sample rows.
-- INSERT IGNORE skips rows that would violate a unique key.
INSERT IGNORE INTO module01_customers (customer_id, customer_name, country)
VALUES
    (1, 'Aditi', 'India'),
    (2, 'Ryan', 'USA'),
    (3, 'Neha', 'India');

-- 3. DQL: Retrieve all rows while learning.
SELECT *
FROM module01_customers;

-- 4. DQL: Retrieve only the columns needed.
SELECT
    customer_id,
    customer_name
FROM module01_customers;

-- 5. DQL: Filter rows.
SELECT
    customer_id,
    customer_name,
    country
FROM module01_customers
WHERE country = 'India';

-- 6. DQL: Sort the result.
SELECT
    customer_id,
    customer_name
FROM module01_customers
ORDER BY customer_name;

-- 7. DML: Preview rows before a change.
SELECT *
FROM module01_customers
WHERE customer_id = 3;

-- 8. DML: Example update. Uncomment only after checking the preview above.
-- UPDATE module01_customers
-- SET country = 'India'
-- WHERE customer_id = 3;

-- 9. DML: Example delete. Keep commented until you intentionally practise it.
-- DELETE FROM module01_customers
-- WHERE customer_id = 3;

-- 10. DDL: Example structure change.
-- ALTER TABLE module01_customers
-- ADD COLUMN email VARCHAR(150);

-- 11. DDL: Destructive examples. Do not run unless you intend to remove data/objects.
-- TRUNCATE TABLE module01_customers;
-- DROP TABLE module01_customers;

-- 12. TCL: Transaction illustration.
-- InnoDB supports transactions. The UPDATE is undone by ROLLBACK.
START TRANSACTION;

UPDATE module01_customers
SET country = 'India'
WHERE customer_id = 2;

ROLLBACK;

-- Verify that the transaction's update was rolled back.
SELECT *
FROM module01_customers
ORDER BY customer_id;

-- Optional cleanup:
-- DROP TABLE module01_customers;
