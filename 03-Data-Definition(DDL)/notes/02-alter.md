# 02 – ALTER

`ALTER` changes the structure of an existing database object.

## Add a column
```sql
ALTER TABLE employees
ADD COLUMN phone_number VARCHAR(15);
```

Add multiple columns:
```sql
ALTER TABLE employees
ADD COLUMN city VARCHAR(60),
ADD COLUMN date_of_birth DATE;
```

## Modify a column definition
```sql
ALTER TABLE employees
MODIFY COLUMN first_name VARCHAR(80) NOT NULL;
```
`MODIFY COLUMN` changes the definition but keeps the column name. Changing a type or length may cause conversion, truncation, or an error depending on existing data.

## Rename a column
MySQL 8.0:
```sql
ALTER TABLE employees
RENAME COLUMN phone_number TO contact_number;
```

Rename and redefine with `CHANGE COLUMN`:
```sql
ALTER TABLE employees
CHANGE COLUMN contact_number mobile_number VARCHAR(20);
```
With `CHANGE COLUMN`, specify the full new definition. Omitting attributes can remove them.

## Drop a column
```sql
ALTER TABLE employees
DROP COLUMN date_of_birth;
```
This removes the column and its stored values. Check dependencies first.

## Rename a table
```sql
RENAME TABLE employees TO company_employees;
```
Alternative:
```sql
ALTER TABLE company_employees RENAME TO employees;
```

## Add and drop constraints
```sql
ALTER TABLE employees
ADD CONSTRAINT uq_employees_email UNIQUE (email);

ALTER TABLE employees
ADD CONSTRAINT fk_employees_department
FOREIGN KEY (department_id)
REFERENCES departments(department_id);

ALTER TABLE employees
DROP FOREIGN KEY fk_employees_department;

ALTER TABLE employees
DROP INDEX uq_employees_email;
```

## Add a primary key
```sql
ALTER TABLE employees
ADD PRIMARY KEY (employee_id);
```
The column must contain unique, non-NULL values. A table can have only one primary key, which may be composite.

## Inspect after altering
```sql
DESCRIBE employees;
SHOW CREATE TABLE employees;
```

**Precautions:** Review existing data before narrowing columns; check foreign-key dependencies; test changes in development. MySQL DDL generally causes implicit commits, so do not assume `ROLLBACK` can undo an `ALTER TABLE`.
