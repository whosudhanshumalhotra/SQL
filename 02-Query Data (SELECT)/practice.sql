-- MODULE 02: QUERY DATA (SELECT)
-- Database: MySQL 8.0+
-- Run this script in MySQL Workbench or another MySQL client.

CREATE DATABASE IF NOT EXISTS sql_module_02;
USE sql_module_02;

DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    department VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    joining_date DATE NOT NULL,
    manager_id INT NULL
);

INSERT INTO employees
(employee_id, first_name, department, city, salary, joining_date, manager_id)
VALUES
(1, 'Aarav',  'IT',      'Delhi',   65000, '2022-01-15',  NULL),
(2, 'Diya',   'HR',      'Mumbai',  48000, '2021-06-10',  NULL),
(3, 'Kabir',  'IT',      'Delhi',   72000, '2020-03-22',  1),
(4, 'Ananya', 'Finance', 'Pune',    58000, '2023-02-01',  NULL),
(5, 'Rohan',  'IT',      'Mumbai',  55000, '2022-08-19',  1),
(6, 'Meera',  'HR',      'Delhi',   52000, '2021-11-05',  2),
(7, 'Saanvi', 'Finance', 'Pune',    61000, '2019-07-12',  4),
(8, 'Ishaan', 'IT',      'Pune',    80000, '2018-09-30',  1),
(9, 'Nisha',  'Marketing','Mumbai', 45000, '2023-05-17',  NULL),
(10,'Vivaan', 'Marketing','Delhi',  50000, '2022-12-03',  9);

-- 1. SELECT and FROM
SELECT * FROM employees;
SELECT first_name, department FROM employees;
SELECT first_name, salary * 12 AS annual_salary FROM employees;

-- 2. WHERE
SELECT * FROM employees WHERE department = 'IT';
SELECT * FROM employees WHERE salary > 60000;
SELECT * FROM employees WHERE city IN ('Delhi', 'Pune');
SELECT * FROM employees WHERE salary BETWEEN 45000 AND 65000;
SELECT * FROM employees WHERE first_name LIKE 'S%';
SELECT * FROM employees WHERE manager_id IS NULL;

-- 3. ORDER BY
SELECT first_name, salary FROM employees ORDER BY salary ASC;
SELECT first_name, salary FROM employees ORDER BY salary DESC;
SELECT first_name, department, salary
FROM employees
ORDER BY department ASC, salary DESC;

-- 4. GROUP BY and aggregate functions
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department;

SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department;

SELECT city, MIN(salary) AS minimum_salary, MAX(salary) AS maximum_salary
FROM employees
GROUP BY city;

-- 5. HAVING
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department
HAVING COUNT(*) >= 2;

SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 55000;

-- 6. DISTINCT and LIMIT
SELECT DISTINCT department FROM employees;
SELECT DISTINCT department, city FROM employees;
SELECT * FROM employees LIMIT 5;

SELECT first_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 3;

SELECT *
FROM employees
ORDER BY employee_id
LIMIT 5 OFFSET 5;

-- 7. Full query
SELECT
    department,
    COUNT(*) AS employee_count,
    AVG(salary) AS average_salary
FROM employees
WHERE city <> 'Mumbai'
GROUP BY department
HAVING AVG(salary) > 45000
ORDER BY average_salary DESC
LIMIT 3;
