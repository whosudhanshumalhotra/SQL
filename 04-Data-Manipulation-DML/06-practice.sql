-- =========================================================
-- MODULE 04: DML PRACTICE
-- Run 01-setup-and-sample-data.sql before this file.
-- Try each task yourself before viewing solutions.sql.
-- =========================================================

USE sql_learning;

-- Task 1: Insert a new employee:
-- ID 111, first name Neha, last name Gupta,
-- email neha.gupta@example.com, department 1,
-- salary 62000, hire date 2024-06-01, Active.

-- Task 2: Insert two employees in one INSERT statement:
-- ID 112: Rahul Das, department 3, salary 57000, hire date 2024-07-01.
-- ID 113: Tara Bose, department 2, salary 59000, hire date 2024-07-15.
-- Supply unique email addresses.

-- Task 3: Increase the salary of employee 101 by 10%.

-- Task 4: Change employee 102's department to 3.

-- Task 5: Set employment_status to 'On Leave' for employees
-- whose department_id is 2.

-- Task 6: Give a 7% salary increase to employees earning less than 55000.

-- Task 7: Delete employee 113.

-- Task 8: Delete employees whose employment_status is 'Inactive'.
-- Preview the target rows first.

-- Task 9: Start a transaction, increase employee 104's salary by 3000,
-- inspect the result, and then roll back.

-- Task 10: Start a transaction, update employee 103's salary by 2000,
-- inspect the result, and commit the change.

-- Final verification:
SELECT * FROM employees ORDER BY employee_id;
