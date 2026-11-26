-- ============================================================
-- MODULE 05: FILTERING DATA
-- Database: MySQL 8.0+
-- Run this script from top to bottom in a practice environment.
-- WARNING: This script recreates sql_learning.employees.
-- ============================================================

CREATE DATABASE IF NOT EXISTS sql_learning;
USE sql_learning;

DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    department VARCHAR(30) NOT NULL,
    city VARCHAR(30) NOT NULL,
    age INT NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    joining_date DATE NOT NULL
);

INSERT INTO employees
    (employee_id, employee_name, department, city, age, salary, joining_date)
VALUES
    (1, 'Aarav Sharma', 'IT',       'Mumbai',  25, 55000.00, '2022-03-15'),
    (2, 'Priya Verma',  'HR',       'Pune',    29, 45000.00, '2021-07-10'),
    (3, 'Rahul Mehta',  'Finance',  'Delhi',   32, 70000.00, '2020-11-20'),
    (4, 'Sneha Patel',  'IT',       'Pune',    27, 65000.00, '2023-01-05'),
    (5, 'Karan Singh',  'Sales',    'Mumbai',  35, 40000.00, '2019-06-18'),
    (6, 'Ananya Das',   'HR',       'Kolkata', 24, 42000.00, '2023-08-12'),
    (7, 'Rohan Gupta',  'IT',       'Delhi',   30, 80000.00, '2018-02-25'),
    (8, 'Meera Nair',   'Finance',  'Mumbai',  28, 60000.00, '2022-09-01'),
    (9, 'Vikram Rao',   'Sales',    'Pune',    31, 52000.00, '2021-12-14'),
    (10, 'Isha Kapoor', 'IT',       'Kolkata', 26, 48000.00, '2024-02-01'),
    (11, 'Arjun Reddy', 'Marketing','Delhi',   33, 75000.00, '2020-04-22'),
    (12, 'Diya Shah',   'Marketing','Mumbai',  29, 58000.00, '2023-05-30');

-- ------------------------------------------------------------
-- 1. WHERE CLAUSE
-- ------------------------------------------------------------

-- All employees in IT.
SELECT *
FROM employees
WHERE department = 'IT';

-- Names and salaries of employees earning more than 60000.
SELECT employee_name, salary
FROM employees
WHERE salary > 60000;

-- ------------------------------------------------------------
-- 2. COMPARISON OPERATORS
-- ------------------------------------------------------------

SELECT * FROM employees WHERE salary = 60000;
SELECT * FROM employees WHERE department <> 'HR';
SELECT * FROM employees WHERE age > 30;
SELECT * FROM employees WHERE age < 30;
SELECT * FROM employees WHERE salary >= 60000;
SELECT * FROM employees WHERE age <= 28;

-- ------------------------------------------------------------
-- 3. LOGICAL OPERATORS
-- ------------------------------------------------------------

-- AND: both conditions must be true.
SELECT *
FROM employees
WHERE department = 'IT'
  AND salary > 50000;

-- OR: at least one condition must be true.
SELECT *
FROM employees
WHERE city = 'Mumbai'
   OR city = 'Pune';

-- NOT: reverse the condition.
SELECT *
FROM employees
WHERE NOT department = 'IT';

-- Parentheses control grouping.
SELECT *
FROM employees
WHERE (department = 'IT' OR department = 'HR')
  AND salary >= 45000;

-- ------------------------------------------------------------
-- 4. BETWEEN
-- ------------------------------------------------------------

-- Inclusive salary range.
SELECT employee_name, salary
FROM employees
WHERE salary BETWEEN 45000 AND 65000;

-- Age range.
SELECT employee_name, age
FROM employees
WHERE age BETWEEN 25 AND 30;

-- Outside the salary range.
SELECT employee_name, salary
FROM employees
WHERE salary NOT BETWEEN 45000 AND 65000;

-- ------------------------------------------------------------
-- 5. IN
-- ------------------------------------------------------------

SELECT *
FROM employees
WHERE department IN ('IT', 'HR', 'Finance');

SELECT employee_name, city
FROM employees
WHERE city IN ('Mumbai', 'Delhi');

SELECT *
FROM employees
WHERE department NOT IN ('IT', 'HR');

-- ------------------------------------------------------------
-- 6. LIKE
-- ------------------------------------------------------------

-- Names beginning with A.
SELECT *
FROM employees
WHERE employee_name LIKE 'A%';

-- Names ending with a.
SELECT *
FROM employees
WHERE employee_name LIKE '%a';

-- Names containing 'ar'.
SELECT *
FROM employees
WHERE employee_name LIKE '%ar%';

-- Names whose second character is 'a'.
SELECT *
FROM employees
WHERE employee_name LIKE '_a%';

-- Names that do not begin with A.
SELECT *
FROM employees
WHERE employee_name NOT LIKE 'A%';

-- ------------------------------------------------------------
-- 7. COMBINED FILTERING
-- ------------------------------------------------------------

-- IT or Finance employees in Mumbai or Pune,
-- earning between 50000 and 80000.
SELECT employee_name, department, city, salary
FROM employees
WHERE department IN ('IT', 'Finance')
  AND city IN ('Mumbai', 'Pune')
  AND salary BETWEEN 50000 AND 80000
ORDER BY salary DESC;

-- Employees whose names contain 'a',
-- excluding HR, with age at least 25.
SELECT employee_name, department, age
FROM employees
WHERE employee_name LIKE '%a%'
  AND department NOT IN ('HR')
  AND age >= 25;

-- End of Module 05 practice script.
