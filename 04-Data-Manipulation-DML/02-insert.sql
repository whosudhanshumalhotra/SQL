-- =========================================================
-- MODULE 04: INSERT
-- Run 01-setup-and-sample-data.sql before this file.
-- =========================================================

USE sql_learning;

-- 1. Insert a row by specifying all columns.
INSERT INTO employees
    (employee_id, first_name, last_name, email, department_id,
     salary, hire_date, employment_status)
VALUES
    (106, 'Riya', 'Kapoor', 'riya.kapoor@example.com', 1,
     58000.00, '2024-02-12', 'Active');

-- 2. Insert a row into selected columns.
-- Columns not supplied use DEFAULT or NULL, if allowed.
INSERT INTO employees
    (employee_id, first_name, last_name, department_id, salary, hire_date)
VALUES
    (107, 'Vivaan', 'Rao', 2, 50000.00, '2024-04-01');

-- 3. Insert multiple rows in one statement.
INSERT INTO employees
    (employee_id, first_name, last_name, email, department_id,
     salary, hire_date, employment_status)
VALUES
    (108, 'Meera', 'Joshi', 'meera.joshi@example.com', 3, 56000.00, '2023-06-18', 'Active'),
    (109, 'Arjun', 'Nair', 'arjun.nair@example.com', 4, 54000.00, '2023-08-22', 'Active');

-- 4. Use DEFAULT for a column with a default value.
INSERT INTO employees
    (employee_id, first_name, last_name, email, department_id,
     salary, hire_date, employment_status)
VALUES
    (110, 'Sara', 'Khan', 'sara.khan@example.com', 2,
     51000.00, '2024-05-15', DEFAULT);

-- 5. INSERT IGNORE:
-- A row that violates a uniqueness constraint is skipped with a warning.
-- Use carefully: IGNORE can suppress certain data errors.
INSERT IGNORE INTO employees
    (employee_id, first_name, last_name, email, department_id, salary, hire_date)
VALUES
    (101, 'Duplicate', 'Employee', 'duplicate@example.com', 1, 40000.00, '2024-01-01');

-- 6. INSERT ... SELECT:
-- Copy selected data into another table.
CREATE TABLE IF NOT EXISTS employee_directory (
    employee_id INT PRIMARY KEY,
    full_name VARCHAR(110) NOT NULL,
    email VARCHAR(100)
) ENGINE = InnoDB;

INSERT INTO employee_directory (employee_id, full_name, email)
SELECT
    employee_id,
    CONCAT(first_name, ' ', last_name),
    email
FROM employees
WHERE employment_status = 'Active';

-- Verify inserted records.
SELECT * FROM employees ORDER BY employee_id;
SELECT * FROM employee_directory ORDER BY employee_id;
