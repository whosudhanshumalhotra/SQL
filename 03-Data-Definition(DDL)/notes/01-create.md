# 01 – CREATE

`CREATE` is a DDL command used to create database objects such as databases, tables, and indexes.

## Create a database
```sql
CREATE DATABASE company_db;
CREATE DATABASE IF NOT EXISTS company_db;
USE company_db;
SHOW DATABASES;
```

## Create a table
```sql
CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    salary DECIMAL(10, 2) DEFAULT 0.00,
    hire_date DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

### Important parts
- `INT`: whole-number value.
- `AUTO_INCREMENT`: MySQL generates a sequence value when one is not supplied.
- `VARCHAR(50)`: variable-length text up to 50 characters.
- `NOT NULL`: requires a non-NULL value.
- `UNIQUE`: prevents duplicate key values.
- `DECIMAL(10, 2)`: exact decimal with up to 10 total digits and 2 decimal places.
- `DEFAULT`: supplies a value when an insert omits the column.
- `TIMESTAMP DEFAULT CURRENT_TIMESTAMP`: defaults to the current timestamp.

## Create related tables
```sql
CREATE TABLE departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100) NOT NULL UNIQUE
) ENGINE = InnoDB;

CREATE TABLE staff (
    staff_id INT PRIMARY KEY AUTO_INCREMENT,
    staff_name VARCHAR(100) NOT NULL,
    department_id INT,
    CONSTRAINT fk_staff_department
        FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
) ENGINE = InnoDB;
```
Use compatible definitions for referencing and referenced columns. The referenced key must be indexed.

## Create an index
```sql
CREATE INDEX idx_employees_last_name
ON employees(last_name);
```
Indexes can improve suitable lookups, but consume storage and add overhead to data changes.

## Inspect objects
```sql
SHOW TABLES;
DESCRIBE employees;
SHOW CREATE TABLE employees;
```

## Practice
Create `training_db`, select it, and create a `courses` table with an auto-increment integer primary key, required `course_name VARCHAR(100)`, `duration_weeks INT`, and `fee DECIMAL(10,2)`. Inspect it with `DESCRIBE courses`.
