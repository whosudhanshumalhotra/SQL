-- =========================================================
-- MODULE 04: DELETE
-- Run 01-setup-and-sample-data.sql before this file.
-- =========================================================

USE sql_learning;

-- SAFETY HABIT: preview the target row first.
SELECT *
FROM employees
WHERE employee_id = 105;

-- 1. Delete one specific row.
DELETE FROM employees
WHERE employee_id = 105;

-- 2. Delete rows matching a condition.
-- Preview the rows before running the DELETE.
SELECT *
FROM employees
WHERE employment_status = 'Inactive';

DELETE FROM employees
WHERE employment_status = 'Inactive';

-- 3. Delete using multiple conditions.
DELETE FROM employees
WHERE department_id = 4
  AND salary < 50000.00;

-- Verify remaining records.
SELECT * FROM employees ORDER BY employee_id;

-- DELETE all rows but retain the table structure:
-- DELETE FROM employees;

-- CAUTION:
-- DELETE FROM employees;
-- Without WHERE, every row is deleted.
