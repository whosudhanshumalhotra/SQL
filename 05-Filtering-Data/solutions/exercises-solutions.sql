-- MODULE 05: EXERCISE SOLUTIONS
-- Run practice/01-filtering-data-practice.sql first.

USE sql_learning;

-- 1. Employees in IT.
SELECT *
FROM employees
WHERE department = 'IT';

-- 2. Names and salaries above 55000.
SELECT employee_name, salary
FROM employees
WHERE salary > 55000;

-- 3. Employees exactly 30 years old.
SELECT *
FROM employees
WHERE age = 30;

-- 4. Employees not in HR.
SELECT *
FROM employees
WHERE department <> 'HR';

-- 5. Employees aged 28 or younger.
SELECT *
FROM employees
WHERE age <= 28;

-- 6. IT employees earning more than 50000.
SELECT *
FROM employees
WHERE department = 'IT'
  AND salary > 50000;

-- 7. Employees in Mumbai or Delhi.
SELECT *
FROM employees
WHERE city = 'Mumbai'
   OR city = 'Delhi';

-- 8. Salary from 45000 through 65000.
SELECT *
FROM employees
WHERE salary BETWEEN 45000 AND 65000;

-- 9. Employees in IT, HR, or Finance.
SELECT *
FROM employees
WHERE department IN ('IT', 'HR', 'Finance');

-- 10. Employees not in IT or Sales.
SELECT *
FROM employees
WHERE department NOT IN ('IT', 'Sales');

-- 11. Names starting with A.
SELECT *
FROM employees
WHERE employee_name LIKE 'A%';

-- 12. Names containing ar.
SELECT *
FROM employees
WHERE employee_name LIKE '%ar%';

-- 13. Names with exactly four characters.
SELECT *
FROM employees
WHERE employee_name LIKE '____';

-- 14. IT or Finance employees earning at least 55000.
SELECT *
FROM employees
WHERE department IN ('IT', 'Finance')
  AND salary >= 55000;

-- 15. Mumbai or Pune employees aged 25 through 32.
SELECT *
FROM employees
WHERE city IN ('Mumbai', 'Pune')
  AND age BETWEEN 25 AND 32;

-- 16. Names ending in a and salary above 45000.
SELECT *
FROM employees
WHERE employee_name LIKE '%a'
  AND salary > 45000;

-- 17. Exclude HR and Sales; salary from 50000 through 75000.
SELECT *
FROM employees
WHERE department NOT IN ('HR', 'Sales')
  AND salary BETWEEN 50000 AND 75000;

-- 18. IT or HR, Delhi or Pune, age below 31.
SELECT *
FROM employees
WHERE department IN ('IT', 'HR')
  AND city IN ('Delhi', 'Pune')
  AND age < 31;
