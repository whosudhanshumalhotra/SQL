# Lesson 05: HAVING

## 1. What is HAVING?

`HAVING` filters groups, usually after `GROUP BY` and aggregate calculations.

- `WHERE` filters individual rows.
- `HAVING` filters grouped results.

## 2. Syntax

```sql
SELECT group_column, AGGREGATE_FUNCTION(column)
FROM table_name
WHERE row_condition
GROUP BY group_column
HAVING group_condition;
```

## 3. Example: departments with more than 2 employees

```sql
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department
HAVING COUNT(*) > 2;
```

Only groups whose employee count is greater than 2 are returned.

## 4. WHERE and HAVING together

```sql
SELECT department, AVG(salary) AS average_salary
FROM employees
WHERE city <> 'Mumbai'
GROUP BY department
HAVING AVG(salary) > 50000;
```

First, rows from Mumbai are excluded. Then the remaining rows are grouped by department. Finally, groups with an average salary above 50000 are returned.

## 5. Can HAVING be used without GROUP BY?

MySQL permits `HAVING` without an explicit `GROUP BY`. However, for ordinary row filtering, use `WHERE`; use `HAVING` when filtering aggregate/group results.

## Key takeaways

- `WHERE` filters rows before grouping.
- `HAVING` filters groups after grouping.
- Aggregate conditions such as `COUNT(*) > 2` belong in `HAVING`.
- A query can use both `WHERE` and `HAVING`.

## Practice

1. Find departments having more than 3 employees.
2. Find departments whose average salary is above 55000.
3. Count employees in Delhi by department, and show only groups with at least 2 employees.
