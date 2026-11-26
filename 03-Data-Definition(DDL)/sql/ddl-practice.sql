/*
Module 03: Data Definition Language (DDL)
Database: MySQL 8.0+
Run in MySQL Workbench from top to bottom.

WARNING:
The first statement drops sql_ddl_module if it already exists.
Do not use this script against important or production data.
*/

-- 1. CREATE AND SELECT DATABASE
DROP DATABASE IF EXISTS sql_ddl_module;
CREATE DATABASE sql_ddl_module;
USE sql_ddl_module;

SHOW DATABASES;

-- 2. CREATE TABLES
CREATE TABLE departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE = InnoDB;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(120) NOT NULL UNIQUE,
    salary DECIMAL(10, 2) NOT NULL DEFAULT 0.00,
    hire_date DATE NOT NULL,
    department_id INT,
    CONSTRAINT chk_employee_salary CHECK (salary >= 0),
    CONSTRAINT fk_employee_department
        FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
) ENGINE = InnoDB;

-- Inspect structure
SHOW TABLES;
DESCRIBE departments;
DESCRIBE employees;
SHOW CREATE TABLE employees;

-- 3. CREATE INDEX
CREATE INDEX idx_employees_last_name
ON employees(last_name);

-- 4. ALTER TABLE: ADD COLUMNS
ALTER TABLE employees
ADD COLUMN phone_number VARCHAR(15),
ADD COLUMN city VARCHAR(60);

-- 5. ALTER TABLE: MODIFY COLUMN
ALTER TABLE employees
MODIFY COLUMN first_name VARCHAR(80) NOT NULL;

-- 6. ALTER TABLE: RENAME COLUMN (MySQL 8.0)
ALTER TABLE employees
RENAME COLUMN phone_number TO contact_number;

-- 7. ALTER TABLE: ADD CHECK CONSTRAINT
ALTER TABLE employees
ADD CONSTRAINT chk_employee_city
CHECK (city IS NULL OR CHAR_LENGTH(city) >= 2);

-- 8. ALTER TABLE: DROP COLUMN
ALTER TABLE employees
DROP COLUMN city;

-- 9. RENAME A TABLE
CREATE TABLE employee_archive (
    archive_id INT PRIMARY KEY AUTO_INCREMENT,
    note VARCHAR(100)
);

RENAME TABLE employee_archive TO archived_employees;

-- 10. INSPECT FINAL STRUCTURE
SHOW TABLES;
DESCRIBE employees;
SHOW CREATE TABLE employees;

-- 11. DROP AN INDEX
DROP INDEX idx_employees_last_name
ON employees;

-- 12. OPTIONAL CLEANUP
-- Uncomment only when you intentionally want to remove
-- the complete practice database and all its objects.
-- DROP DATABASE sql_ddl_module;
