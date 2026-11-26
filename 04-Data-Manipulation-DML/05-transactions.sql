-- =========================================================
-- MODULE 04: TRANSACTIONS WITH DML
-- Run 01-setup-and-sample-data.sql before this file.
-- =========================================================

USE sql_learning;

-- 1. COMMIT: make a transaction's changes permanent.
START TRANSACTION;

UPDATE employees
SET salary = salary + 1000.00
WHERE employee_id = 101;

-- Inspect the change before committing.
SELECT employee_id, first_name, salary
FROM employees
WHERE employee_id = 101;

COMMIT;

-- 2. ROLLBACK: undo changes made in the current transaction.
START TRANSACTION;

UPDATE employees
SET salary = salary + 5000.00
WHERE employee_id = 102;

-- The change is visible in this transaction.
SELECT employee_id, first_name, salary
FROM employees
WHERE employee_id = 102;

ROLLBACK;

-- Confirm that the uncommitted change was undone.
SELECT employee_id, first_name, salary
FROM employees
WHERE employee_id = 102;

-- 3. A transaction can contain multiple DML statements.
START TRANSACTION;

UPDATE employees
SET salary = salary + 2000.00
WHERE employee_id = 103;

UPDATE employees
SET employment_status = 'Active'
WHERE employee_id = 104;

-- Choose ONE:
-- COMMIT;   -- Keep both changes.
-- ROLLBACK; -- Undo both changes.

ROLLBACK;

-- Note: These examples use InnoDB tables.
-- DDL statements such as CREATE TABLE can cause implicit commits in MySQL.
