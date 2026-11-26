-- =========================================================
-- MODULE 04: DML
-- File: 01-setup-and-sample-data.sql
-- Database: MySQL 8.0+
-- Purpose: Create a practice database and sample tables.
-- =========================================================

CREATE DATABASE IF NOT EXISTS sql_learning;
USE sql_learning;

DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL UNIQUE,
    location VARCHAR(50)
) ENGINE = InnoDB;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    department_id INT,
    salary DECIMAL(10, 2) NOT NULL,
    hire_date DATE NOT NULL,
    employment_status VARCHAR(20) DEFAULT 'Active',
    CONSTRAINT fk_employees_department
        FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
) ENGINE = InnoDB;

INSERT INTO departments (department_id, department_name, location)
VALUES
    (1, 'Engineering', 'Bengaluru'),
    (2, 'Human Resources', 'Pune'),
    (3, 'Finance', 'Mumbai'),
    (4, 'Marketing', 'Delhi');

INSERT INTO employees
    (employee_id, first_name, last_name, email, department_id,
     salary, hire_date, employment_status)
VALUES
    (101, 'Aarav', 'Sharma', 'aarav.sharma@example.com', 1, 65000.00, '2022-03-15', 'Active'),
    (102, 'Diya', 'Verma', 'diya.verma@example.com', 2, 52000.00, '2021-07-10', 'Active'),
    (103, 'Kabir', 'Mehta', 'kabir.mehta@example.com', 1, 72000.00, '2020-11-01', 'Active'),
    (104, 'Ananya', 'Singh', 'ananya.singh@example.com', 3, 60000.00, '2023-01-20', 'Active'),
    (105, 'Ishaan', 'Patel', 'ishaan.patel@example.com', 4, 48000.00, '2022-09-05', 'Inactive');

-- Verify the initial data.
SELECT * FROM departments;
SELECT * FROM employees;
