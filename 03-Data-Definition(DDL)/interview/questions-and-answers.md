# Module 03 – 20 SQL DDL Interview Questions and Answers

## Fundamentals

### 1. What is DDL?
DDL stands for Data Definition Language. It defines and manages database structures such as databases, tables, and indexes. Common commands include `CREATE`, `ALTER`, and `DROP`.

### 2. What is the purpose of CREATE?
`CREATE` creates database objects. For example, `CREATE DATABASE` creates a database and `CREATE TABLE` creates a table.

### 3. What is the purpose of ALTER?
`ALTER` changes the structure of an existing object, such as adding a column or changing a column definition.

### 4. What is the purpose of DROP?
`DROP` removes a database object, including its definition. Dropping a table also removes its stored rows.

### 5. How do you create and select a database?
```sql
CREATE DATABASE company_db;
USE company_db;
```

## Tables and data types

### 6. How do you create a table?
```sql
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(100) NOT NULL
);
```

### 7. Difference between CHAR and VARCHAR?
`CHAR(n)` is fixed-length character storage, while `VARCHAR(n)` stores variable-length strings up to the declared maximum.

### 8. Difference between INT and DECIMAL?
`INT` stores whole numbers. `DECIMAL(p,s)` stores exact decimal values with specified precision and scale.

### 9. What is AUTO_INCREMENT?
It is a MySQL column attribute that generates a sequence value when a row is inserted without an explicit value for that column.

### 10. How can you inspect a table's structure?
Use `DESCRIBE table_name;` or `SHOW CREATE TABLE table_name;`.

## Constraints

### 11. What is a primary key?
A primary key uniquely identifies each row. It cannot contain `NULL`, and a table can have only one primary key, which may be composite.

### 12. What is a foreign key?
A foreign key enforces a relationship between tables by requiring referencing values to match a key in the referenced table, subject to the constraint's rules.

### 13. Difference between PRIMARY KEY and UNIQUE?
Both enforce uniqueness. A primary key also cannot contain `NULL`, and a table has only one primary key. A table can have multiple unique constraints; MySQL unique indexes permit multiple `NULL` values.

### 14. What does NOT NULL do?
It prevents a column from storing `NULL`.

### 15. What is a DEFAULT constraint?
It provides a value when an insert omits the column. An explicitly supplied `NULL` is not replaced by the default.

### 16. What is a CHECK constraint?
It enforces a condition on values in a row. MySQL enforces `CHECK` constraints from version 8.0.16.

## ALTER and DROP

### 17. How do you add a column?
```sql
ALTER TABLE employees
ADD COLUMN phone_number VARCHAR(15);
```

### 18. How do you rename a column in MySQL 8.0?
```sql
ALTER TABLE employees
RENAME COLUMN old_name TO new_name;
```

### 19. Difference between DROP, TRUNCATE, and DELETE?
- `DROP TABLE` removes the table definition and data.
- `TRUNCATE TABLE` removes all rows but retains the table structure.
- `DELETE` removes rows and can use a `WHERE` clause.

In MySQL, `TRUNCATE` is DDL and causes an implicit commit. `DELETE` is DML.

### 20. Can a dropped table be rolled back?
Do not rely on `ROLLBACK` to recover a dropped table in MySQL. DDL statements cause implicit commits. Recovery generally requires a backup or another recovery mechanism.
