-- =========================================================
-- MODULE 04: UPDATE
-- Run 01-setup-and-sample-data.sql before this file.
-- =========================================================

USE sql_learning;

-- SAFETY HABIT: preview the rows before changing them.
SELECT *
FROM employees
WHERE employee_id = 101;

-- 1. Update one column for one row.
UPDATE employees
SET salary = 68000.00
WHERE employee_id = 101;

-- 2. Update multiple columns for one row.
UPDATE employees
SET
    salary = 75000.00,
    department_id = 1
WHERE employee_id = 103;

-- 3. Update multiple rows using a condition.
-- Preview first.
SELECT employee_id, employment_status
FROM employees
WHERE department_id = 4;

UPDATE employees
SET employment_status = 'Under Review'
WHERE department_id = 4;

-- 4. Update using an expression.
UPDATE employees
SET salary = salary * 1.05
WHERE department_id = 2;

-- 5. Update with more than one condition.
UPDATE employees
SET employment_status = 'Active'
WHERE employee_id = 105
  AND employment_status = 'Inactive';

-- 6. Update using a CASE expression.
UPDATE employees
SET employment_status =
    CASE
        WHEN salary >= 70000 THEN 'High Salary'
        WHEN salary >= 55000 THEN 'Mid Salary'
        ELSE 'Standard Salary'
    END
WHERE employee_id IN (101, 102, 103, 104, 105);

-- Verify the changes.
SELECT
    employee_id,
    first_name,
    last_name,
    department_id,
    salary,
    employment_status
FROM employees
ORDER BY employee_id;

-- CAUTION:
-- UPDATE employees SET salary = 0;
-- Without WHERE, every row would be updated.
