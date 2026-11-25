# Lesson 01: SELECT and FROM

## 1. What does a SELECT query do?

`SELECT` retrieves data from a database. It lets you choose which columns you want to see.

`FROM` identifies the table from which the data should be retrieved.

## 2. Basic syntax

```sql
SELECT column1, column2
FROM table_name;
```

## 3. Select specific columns

```sql
SELECT first_name, department
FROM employees;
```

This returns only the `first_name` and `department` columns.

## 4. Select all columns

```sql
SELECT *
FROM employees;
```

The asterisk (`*`) means all columns. It is useful for exploration and learning. In production queries, selecting only the required columns is usually clearer and can reduce unnecessary data transfer.

## 5. Column aliases

Use `AS` to give a result column a more readable heading.

```sql
SELECT
    first_name AS employee_name,
    salary AS monthly_salary
FROM employees;
```

The alias changes the displayed column heading; it does not rename the actual table column.

## 6. Expressions in SELECT

```sql
SELECT
    first_name,
    salary,
    salary * 12 AS annual_salary
FROM employees;
```

The expression is calculated for each returned row.

## 7. Practical example

```sql
SELECT first_name, department, salary
FROM employees;
```

Expected result columns: `first_name`, `department`, `salary`, with one row per employee in the sample table.

## Key takeaways

- `SELECT` chooses output columns or expressions.
- `FROM` specifies the source table.
- `*` selects every column.
- `AS` creates a result alias.
- A basic `SELECT` query does not modify table data.

## Practice

1. Display every column from `employees`.
2. Display only `first_name` and `city`.
3. Display `first_name` and `salary * 12` with the alias `annual_salary`.
