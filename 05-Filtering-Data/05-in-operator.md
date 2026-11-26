# 05 – IN Operator

## 1. What is IN?

`IN` checks whether a value matches any value in a specified list. It is a concise alternative to multiple equality conditions joined with `OR`.

## 2. Syntax

```sql
SELECT column_list
FROM table_name
WHERE column_name IN (value1, value2, value3);
```

## 3. Examples

```sql
-- Employees in IT, HR, or Finance.
SELECT *
FROM employees
WHERE department IN ('IT', 'HR', 'Finance');

-- Employees located in Mumbai, Pune, or Delhi.
SELECT employee_name, city
FROM employees
WHERE city IN ('Mumbai', 'Pune', 'Delhi');

-- Employees whose age is 25, 30, or 35.
SELECT employee_name, age
FROM employees
WHERE age IN (25, 30, 35);
```

## 4. NOT IN

`NOT IN` excludes the listed values.

```sql
-- Employees not in IT or HR.
SELECT *
FROM employees
WHERE department NOT IN ('IT', 'HR');
```

## 5. IN vs OR

These queries return the same matching rows:

```sql
SELECT *
FROM employees
WHERE department IN ('IT', 'HR', 'Finance');

SELECT *
FROM employees
WHERE department = 'IT'
   OR department = 'HR'
   OR department = 'Finance';
```

## Important points

- Text values need quotes; numeric values generally do not.
- `IN` is useful when checking several exact values in one column.
- `IN` checks exact matches; it is not a pattern-matching operator.
- Be careful with `NOT IN` when its list or subquery can contain `NULL`, because SQL's three-valued logic can make the condition evaluate to unknown.

## Quick revision

```sql
WHERE department IN ('IT', 'HR');
WHERE department NOT IN ('IT', 'HR');
```
