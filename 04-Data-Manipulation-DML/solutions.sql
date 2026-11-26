-- =========================================================
-- MODULE 04: PRACTICE SOLUTIONS
-- Run 01-setup-and-sample-data.sql before this file.
-- Solutions are independent examples; review before execution.
-- =========================================================

USE sql_learning;

-- Solution 1
INSERT INTO employees
    (employee_id, first_name, last_name, email, department_id,
     salary, hire_date, employment_status)
VALUES
    (111, 'Neha', 'Gupta', 'neha.gupta@example.com', 1,
     62000.00, '2024-06-01', 'Active');

-- Solution 2
INSERT INTO employees
    (employee_id, first_name, last_name, email, department_id,
     salary, hire_date, employment_status)
VALUES
    (112, 'Rahul', 'Das', 'rahul.das@example.com', 3, 57000.00, '2024-07-01', 'Active'),
    (113, 'Tara', 'Bose', 'tara.bose@example.com', 2, 59000.00, '2024-07-15', 'Active');

-- Solution 3
UPDATE employees
SET salary = salary * 1.10
WHERE employee_id = 101;

-- Solution 4
UPDATE employees
SET department_id = 3
WHERE employee_id = 102;

-- Solution 5
UPDATE employees
SET employment_status = 'On Leave'
WHERE department_id = 2;

-- Solution 6
UPDATE employees
SET salary = salary * 1.07
WHERE salary < 55000;

-- Solution 7
DELETE FROM employees
WHERE employee_id = 113;

-- Solution 8
SELECT *
FROM employees
WHERE employment_status = 'Inactive';

DELETE FROM employees
WHERE employment_status = 'Inactive';

-- Solution 9: ROLLBACK
START TRANSACTION;

UPDATE employees
SET salary = salary + 3000.00
WHERE employee_id = 104;

SELECT * FROM employees WHERE employee_id = 104;

ROLLBACK;

-- Solution 10: COMMIT
START TRANSACTION;

UPDATE employees
SET salary = salary + 2000.00
WHERE employee_id = 103;

SELECT * FROM employees WHERE employee_id = 103;

COMMIT;

-- Final verification
SELECT * FROM employees ORDER BY employee_id;
