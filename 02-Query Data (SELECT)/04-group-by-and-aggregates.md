# Lesson 04: GROUP BY and Aggregate Functions

## 1. What is GROUP BY?

`GROUP BY` combines rows that share the same value (or combination of values) into groups. It is commonly used with aggregate functions.

## 2. Aggregate functions

| Function | Purpose |
|---|---|
| `COUNT()` | Counts rows or non-NULL values |
| `SUM()` | Adds values |
| `AVG()` | Calculates an average |
| `MIN()` | Finds the minimum |
| `MAX()` | Finds the maximum |

Examples without grouping:

```sql
SELECT COUNT(*) AS employee_count
FROM employees;

SELECT AVG(salary) AS average_salary
FROM employees;
```

## 3. Group by one column

```sql
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department;
```

This returns one result row per department.

## 4. Group by multiple columns

```sql
SELECT department, city, COUNT(*) AS employee_count
FROM employees
GROUP BY department, city;
```

Each unique department-and-city combination forms a group.

## 5. Multiple aggregate calculations

```sql
SELECT
    department,
    COUNT(*) AS employee_count,
    AVG(salary) AS average_salary,
    MIN(salary) AS minimum_salary,
    MAX(salary) AS maximum_salary,
    SUM(salary) AS total_salary
FROM employees
GROUP BY department;
```

## 6. Important rule

When using `GROUP BY`, each selected expression should generally be either:
- included in the `GROUP BY` list, or
- calculated using an aggregate function.

MySQL's `ONLY_FULL_GROUP_BY` SQL mode enforces grouping rules and is enabled by default in many MySQL installations. Avoid relying on arbitrary non-grouped column values.

## Key takeaways

- `GROUP BY` creates groups based on shared values.
- Aggregate functions calculate a value for each group.
- `COUNT(*)` counts rows.
- `COUNT(column)` counts non-NULL values in that column.
- Grouping by multiple columns creates groups for each unique combination.

## Practice

1. Count employees in each department.
2. Calculate average salary by department.
3. Find the highest salary in each city.
4. Calculate employee count and total salary by department and city.
