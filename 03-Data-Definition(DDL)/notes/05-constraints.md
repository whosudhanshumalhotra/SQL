# 05 – Constraints

Constraints are rules enforced by the database to help maintain valid and consistent data.

## NOT NULL
Requires a non-NULL value.
```sql
name VARCHAR(100) NOT NULL
```

## UNIQUE
Prevents duplicate values in a unique key.
```sql
email VARCHAR(150) UNIQUE
```
MySQL permits multiple `NULL` values in a unique index because `NULL` is not treated as equal to another `NULL`.

## PRIMARY KEY
Uniquely identifies each row. A primary key is unique and cannot contain `NULL`.
```sql
employee_id INT PRIMARY KEY
```
A table has one primary key; it may consist of one column or multiple columns.

Composite primary key:
```sql
CREATE TABLE course_enrollments (
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    enrolled_on DATE NOT NULL,
    PRIMARY KEY (student_id, course_id)
);
```

## FOREIGN KEY
Enforces a relationship by requiring a referencing value to match a referenced key (or be `NULL` if the column permits it).
```sql
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    department_id INT,
    CONSTRAINT fk_employee_department
        FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);
```
Common referential actions include `ON DELETE RESTRICT`, `ON DELETE CASCADE`, and `ON DELETE SET NULL`. Choose based on the business rule.

## DEFAULT
Provides a value when an `INSERT` omits the column.
```sql
status VARCHAR(20) DEFAULT 'Active'
```
An explicit `NULL` is not replaced by the default in a nullable column.

## CHECK
Validates a condition for inserted or updated rows. MySQL 8.0.16+ enforces `CHECK` constraints.
```sql
salary DECIMAL(10, 2),
CONSTRAINT chk_salary_nonnegative CHECK (salary >= 0)
```

## Combined example
```sql
CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    sku VARCHAR(30) NOT NULL UNIQUE,
    price DECIMAL(10, 2) NOT NULL,
    stock_quantity INT NOT NULL DEFAULT 0,
    CONSTRAINT chk_product_price CHECK (price >= 0),
    CONSTRAINT chk_stock_quantity CHECK (stock_quantity >= 0)
);
```

| Constraint | Purpose |
|---|---|
| `NOT NULL` | Requires a non-NULL value |
| `UNIQUE` | Prevents duplicate key values |
| `PRIMARY KEY` | Uniquely identifies each row |
| `FOREIGN KEY` | Enforces referential integrity |
| `DEFAULT` | Supplies a value when a column is omitted |
| `CHECK` | Enforces a condition |

Use meaningful names such as `fk_orders_customer` or `chk_product_price`.
